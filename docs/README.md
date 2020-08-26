# Alan.dart
:::tip Note  
Alan.dart is an evolution of [Sacco.dart](https://github.com/commercionetwork/sacco.dart) which I personally worked on. Due to the fact that Sacco.dart is no longer maintained by Commercio.network and I no longer work there, I decided to start this new project to support future mobile apps development for Cosmos-based chains.  
:::

Alan.dart is a pure Dart package allowing you to easily integrate your Dart-based project with any [Cosmos](https://cosmos.network)-based blockchain.  

It contains a set of utility methods and classes allowing you to easily 

- [create an HD Wallet](#creating-a-wallet) 
- [create a transaction](#creating-a-transaction) 
- [sign a transaction](#signing-a-transaction) 
- [broadcast a transaction](#broadcasting-a-transaction)

Being it in pure Dart means that you can use it inside your [Dart Web](https://dart.dev/web) projects 
as well as [Flutter](https://flutter.dev) ones.

## Usage
### Creating a wallet
```dart
final derivationPath = "m/44'/118'/0'/0/0";
final networkInfo = NetworkInfo(id: "", bech32Hrp: "cosmos", lcdUrl: "");

final mnemonicString = "final random flame cinnamon grunt hazard easily mutual resist pond solution define knife female tongue crime atom jaguar alert library best forum lesson rigid";
final mnemonic = mnemonicString.split(" ");
final wallet = Wallet.derive(mnemonic, derivationPath, networkInfo);
```

### Creating a transaction
```dart
final message = MsgSend(
  fromAddress: "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
  toAddress: "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
  amount: [StdCoin(denom: "uatom", amount: "100")],
);

final stdTx = TxBuilder.buildStdTx(stdMsgs: [message]);
``` 

### Signing a transaction
```dart
final signedStdTx = TxSigner.signStdTx(wallet: wallet, stdTx: stdTx);
```

### Broadcasting a transaction
```dart
final result = await TxSender.broadcastStdTx(wallet: wallet, stdTx: signedStdTx);
print("Tx send result: $result");
```
