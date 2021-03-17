import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;

void main() async {
  // Create a wallet
  final networkInfo = NetworkInfo(
    bech32Hrp: 'did:com:',
    fullNodeHost: 'localhost',
  );

  final mnemonicString =
      'vivid favorite regular curve check word bubble echo disorder cute parade neck rib evidence option glimpse couple force angry section dizzy puppy express cream';
  final mnemonic = mnemonicString.split(' ');
  final wallet = Wallet.derive(mnemonic, networkInfo);

  // 3. Create and sign the transaction
  final message = bank.MsgSend.create()
    ..fromAddress = wallet.bech32Address
    ..toAddress = 'did:com:1lys5uu683wrmupn4zguz7f2gqw45qae98pzn3d';
  message.amount.add(Coin.create()
    ..denom = 'uatom'
    ..amount = '100');

  final signer = TxSigner.fromNetworkInfo(networkInfo);
  final tx = await signer.createAndSign(wallet, [message]);

  // 4. Broadcast the transaction
  final txSender = TxSender.fromNetworkInfo(networkInfo);
  final response = await txSender.broadcastTx(tx);

  // Check the result
  if (response.isSuccessful) {
    print('Tx sent successfully. Response: ${response}');
  } else {
    print('Tx errored: ${response}');
  }
}
