![](.img/logo.jpg)

![Pub](https://img.shields.io/pub/v/sacco)
![Travis (.org)](https://img.shields.io/travis/commercionetwork/sacco.dart)
![](https://img.shields.io/badge/compatible-flutter-blue)


Sacco.dart is a pure Dart package that allows you to easily perform some operations related to the 
[Cosmos.network](https://cosmos.network) ecosystem. This includes: 

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
final message = StdMsg(
  type: "cosmos-sdk/MsgSend",
  value: {
    "from_address": "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
    "to_address": "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
    "amount": [
      {"denom": "uatom", "amount": "100"}
    ]
  },
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