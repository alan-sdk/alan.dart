# Creating a wallet
While using Alan.dart, a wallet represents the private identity of a user. It contains everything necessary to create, sign and broadcast a transaction to che chain. 

:::warning Security alert  
Since wallets are extremely delicate, you should **never** store them anywhere. As a precaution method, if you try to serialize a Wallet or print its info, you will not be able to see the private key associated with it.

If you want to save the wallet of a user, save instead the mnemonic phrase using an encrypted store. For Flutter, [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) exists.

**Never**, ever, store the mnemonic phrase in an unencrypted place.  
:::  

## Create a wallet from a mnemonic
In order to create a wallet, you are required to provide: 

1. a mnemonic phrase; 
2. a `NetworkInfo` object;
3. optionally, a derivation path. 

```dart
import "package:alan/alan.dart";

final networkInfo = NetworkInfo.fromSingleHost(
  bech32Hrp: "cosmos", 
  hosrt: "http://localhost",
);

final mnemonic = [
    "final",
    "random",
    "flame",
    "cinnamon",
    "grunt",
    "hazard",
    "easily",
    "mutual",
    "resist",
    "pond",
    "solution",
    "define",
    "knife",
    "female",
    "tongue",
    "crime",
    "atom",
    "jaguar",
    "alert",
    "library",
    "best",
    "forum",
    "lesson",
    "rigid",
];
final wallet = Wallet.derive(
  mnemonic, 
  networkInfo,
  derivationPath: "m/44'/118'/0'/0/0", // Optional - Default m/44'/118'/0'/0/0
);
```

## Generate a random wallet
If you don't have any mnemonic phrase, or you want to get a fresh new wallet, you can use the `Wallet.random` method. You only have to provide it with a `NetworkInfo` object. 

```dart
import "package:alan/alan.dart";

final networkInfo = NetworkInfo.fromSingleHost(
  bech32Hrp: "cosmos", 
  hosrt: "http://localhost",
);

final wallet = Wallet.random(
  networkInfo,
  derivationPath: "m/44'/118'/0'/0/0", // Optional - Default m/44'/118'/0'/0/0
);
```
