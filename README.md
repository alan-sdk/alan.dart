![](.img/logo.jpg)

![Travis (.org)](https://img.shields.io/travis/alan-sdk/alan.dart)
![](https://img.shields.io/badge/compatible-flutter-blue)

> Alan.dart is an evolution of [Sacco.dart](https://github.com/commercionetwork/sacco.dart) on which I personally worked. Due to the fact that Sacco.dart is no longer maintained by Commercio.network and I no longer work there, I decided to start this new project to support future mobile apps development for Cosmos-based chains. 

Alan.dart is a pure Dart package that allows you to easily deal with [Cosmos](https://cosmos.network)-based HD wallets 
and transactions. This includes: 

1. Creating an HD Wallet. 
2. Creating a transaction. 
3. Signing a transaction. 
4. Broadcasting a transaction.

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

### Sending a transaction
```dart
try {
  final hash = await TxSender.broadcastStdTx(wallet: wallet, stdTx: signedStdTx);
  print("Tx send successfully. Hash: $hash");
} catch (error) {
  print("Error while sending the tx: $error");
}
```
