# Performing a transaction
In order to perform a transaction, three steps must be done:

1. create the transaction;
2. sign the transaction;
3. send the transaction.

:::tip Wallet required  
In order to perform transactions, you need to have a wallet. If you want to learn how to get one, please refer to the [Wallet documentation](../wallet/overview.md).  
:::

## 1. Get the modules to use 
When you want to create a transaction, you are required to specify a list of messages that should be included inside such transaction. Those messages can be either default Cosmos messages (already included inside Alan.dart), or custom messages. Following you can find instructions on how to use both. 

### A. Using standard Cosmos modules
If you want to use messages included inside default Cosmos modules (eg. `x/bank`, `x/staking`, `x/slashing`, etc), you can simply use the various messages classes that are already contained inside Alan.dart.

To do this, you can simply import the different already built-in modules:

```dart
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:alan/proto/cosmos/slashing/v1beta1/export.dart' as slashing;
...
```

As you can see, the pattern used to import a module is the following:

```dart
import 'package:alan/proto/cosmos/<module name>/v1beta1/export.dart' as <module name>;
```

If you want to see all the supported modules, please visit the [modules page](../modules/overview.md)

### B. Using custom modules
If you want to build a transaction that includes custom messages, then you will need to generate the messages classes starting from your custom Protobuf files. If you want to know how to do this, please reference the [custom chains](../custom-chains/overview.md) page.

## 2. Create and sign the transaction
To create and sign a transaction properly, you can use the `TxSigner` class, providing it with a list of messages and a wallet, as well as an optional memo and optional fees.

You can also provide an optional `TxConfig` that will be used to serialize and sign the transaction according to custom logics.

:::tip Example message  
The following example uses the `bank.MsgSend` message, but remember that you can use any kind of message that you want. Please visit the [modules page](../modules/overview.md) to see all the messages included in Alan.dart, or the [custom chain page](../custom-chains/overview.md) to know how to generate custom ones.  
:::

```dart
import 'package:alan/alan.dart';

void main() async {
  // Build the network info that will be used to get the 
  // account data used to sign the transaction
  final networkInfo = NetworkInfo.fromSingleHost(
    bech32Hrp: 'cosmos',
    host: 'http://localhost',
  );

  // Create a wallet - Make sure you use your mnemonic phrase here
  final mnemonic = [
    'roast', 'stomach', 'welcome', 'please', 'gauge', 'funny',
    'coconut', 'baby', 'bird', 'announce', 'bind', 'jacket',
    'title', 'vibrant', 'tomorrow', 'indoor', 'bitter', 'initial',
    'ill', 'analyst', 'thought', 'strike', 'answer', 'cotton',
  ];
  final wallet = Wallet.derive(mnemonic, networkInfo);

  // Create your message
  final message = bank.MsgSend.create()
    ..fromAddress = wallet.bech32Address
    ..toAddress = 'cosmos1cx7mec8x567xh8f4x7490ndx7xey8lnr9du2qy';
  message.amount.add(
    Coin.create()
      ..denom = 'uatom'
      ..amount = '100',
  );

  // Compose the transaction fees
  final fee = Fee();
  fee.gasLimit = 200000.toInt64();
  fee.amount.add(
    Coin.create()
      ..amount = '100'
      ..denom = 'uatom',
  );

  // Build the signer
  final signer = TxSigner.fromNetworkInfo(networkInfo);

  // Create and sign the transaction
  final signedTx = await signer.createAndSign(
    wallet,
    [message],
    memo: 'Optional memo', // Optional
    fee: fee,              // Optional (Default is 200000 gas and empty amount)
  );
}
```

:::warning Host requirements  
When creating a `NetworkInfo` you need to specify a `host` value. This must be the address of a full node that has the following requirements: 

1. REST APIs enabled.  
   These can be enabled by setting `enable = true` under the `[api]` section of the `app.toml` file.
2. gRPC APIs enabled.  
   These can be enabled by setting `enable = true` under the `[grpc]` section of the `app.toml` file.
3. REST APIs and gRPC APIs ports opened to allow external connections.

:::

## 3. Send the signed transaction
Once you signed the transaction, you are now ready to send it to the chain. To do this you can use the `TxSender` helper class, giving it the signed transaction and a wallet. You can also specify the send mode that you would like to use.

```dart
void main() async {
  // [...] Transaction creation process
  
  final sender = TxSender.fromNetworkInfo(networkInfo);
  final result = await sender.broadcastTx(
    signedTx,
    mode: BroadcastMode.BROADCAST_MODE_ASYNC, // Optional (Default: BroadcastMode.BROADCAST_MODE_SYNC)
  );
}
```

### Send modes
The following broadcast modes are available:
- `BroadcastMode.BROADCAST_MODE_ASYNC`  
  Fastest, returns immediately before performing any check on the transaction.
- `BroadcastMode.BROADCAST_MODE_SYNC`  
  Most common, returns after performing some fast checks on the transaction.
- `BroadcastMode.BROADCAST_MODE_BLOCK`
  Slowest, returns after the block has been approved (5-6 seconds).
  
## Supported messages
In order to see a list of supported messages that are built into Alan.dart, please see the [modules page](../modules/overview.md). 

If you want to use a custom message type instead, visit the [custom chains page](../custom-chains/overview.md).
