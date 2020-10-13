# Performing a transaction
In order to perform a transaction, three steps must be done: 

1. create the transaction; 
2. sign the transaction; 
3. send the transaction. 

:::tip Wallet required  
In order to perform transactions, you need to have a wallet. If you want to learn how to get one, please refer to the [Wallet documentation](../wallet/overview.md).  
:::

## 1. Create the transaction
To create a transaction, you can use the `TxBuilder` helper, providing it with a list of messages, an optional memo and optional fees. 

```dart
final message = StdMsg(...);

final stdTx = TxBuilder.buildStdTx(
  [message], 
  memo: 'Optional memo', // Optional
  fee: StdFee(           // Optional, default = 200000 gas and empty fee
    gas: '200000', 
    amount: [StdCoin(amount: '1000', denom: 'uatom')],
  ),  
);
```

## 2. Sign a transaction
Once you created a transaction, you can sign it using the `TxSigner` helper class. It requires you to provide it with a `StdTx` object and a `Wallet`.

```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final wallet = Wallet.derive(...);

final signer = TxSigner.build(httpClient: http.Client());
final signedTx = signer.sign(stdTx, wallet);
```

## 3. Send a transaction
Finally, once you signed the transaction, you are now ready to send it to the chain. To do this you can use the `TxSender` helper class, giving it the signed transaction and a wallet. You can also specify the send mode that you would like to use. 

```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final sender = TxSender.build(httpClient: http.Client());
final result = sender.broadcastStdTx(
  signedTx, 
  wallet, 
  mode: SendMode.MODE_BLOCK, // Optional - Default SendMode.MODE_SYNC
);
```

### Send modes
The following broadcast modes are available: 

- `SendMode.MODE_ASYNC`  
   Fastest, returns immediately before performing any check on the transaction. 
   
- `SendMode.MODE_SYNC`  
   Most common, returns after performing some fast checks on the transaction.
   
- `SendMode.MODE_BLOCK`
   Slowest, returns after the block has been approved (5-6 seconds).
