# Performing a transaction
In order to perform a transaction, three steps must be done:

1. create the transaction;
2. sign the transaction;
3. send the transaction.

:::tip Wallet required  
In order to perform transactions, you need to have a wallet. If you want to learn how to get one, please refer to the [Wallet documentation](../wallet/overview.md).  
:::

## 1. Create and sign the transaction
To create and sign a transaction properly, you can use the `TxSigner` class, providing it with a list of messages and a wallet, as well as an optional memo and optional fees.

You can also provide an optional `TxConfig` that will be used to serialize and sign the transaction according to custom logics.

```dart
import 'package:alan/alan.dart';

// Build the network info that will be used to get the 
// account data used to sign the transaction
final networkInfo = NetworkInfo({
  bech32Hrp = 'cosmos',
  fullNodeHost = 'localhost',
});

final wallet = Wallet.derive(mnemonic, networkInfo);

// Create your message
final message = Message(...);

// Compose the transaction fees
final fee = Fee();
fee.gasLimit = 200000.toInt64();
fee.amount.add(
  Coin()
    ..amount = '100'
    ..denom = 'uatom',
);

// Build the signer
final signer = TxSigner.fromNetworkInfo(networkInfo);

// Create and sign the transaction
final signedTx = signer.createAndSign(
  wallet,
  [message],
  memo: 'Optional memo', // Optional
  fee: fee,              // Optional (Default is 200000 gas and empty amount)
);
```

## 2. Send the signed transaction
Once you signed the transaction, you are now ready to send it to the chain. To do this you can use the `TxSender` helper class, giving it the signed transaction and a wallet. You can also specify the send mode that you would like to use.

```dart
final sender = TxSender.fromNetworkInfo(networkInfo);
final result = sender.broadcastTx(
  signedTx,
  mode: BroadcastMode.BROADCAST_MODE_ASYNC, // Optional (Default: BroadcastMode.BROADCAST_MODE_SYNC)
);
```

### Send modes
The following broadcast modes are available:
- `BroadcastMode.BROADCAST_MODE_ASYNC`  
  Fastest, returns immediately before performing any check on the transaction.
- `BroadcastMode.BROADCAST_MODE_SYNC`  
  Most common, returns after performing some fast checks on the transaction.
- `BroadcastMode.BROADCAST_MODE_BLOCK`
  Slowest, returns after the block has been approved (5-6 seconds).
