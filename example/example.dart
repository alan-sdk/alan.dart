import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;

void main() async {
  // Common variables
  final httpClient = http.Client();

  // 1. Register new msg types
  // MsgType needs to implement StdMsg
  // Codec.registerType('my/MsgType', MyMsgType);

  // 2. Create a wallet
  final networkInfo = NetworkInfo(
    bech32Hrp: 'did:com:',
    lcdUrl: 'http://localhost:1317',
  );

  final mnemonicString =
      'vivid favorite regular curve check word bubble echo disorder cute parade neck rib evidence option glimpse couple force angry section dizzy puppy express cream';
  final mnemonic = mnemonicString.split(' ');
  final wallet = Wallet.derive(mnemonic, networkInfo);

  // 3. Create a transaction
  final message = MsgSend(
    fromAddress: wallet.bech32Address,
    toAddress: 'did:com:1lys5uu683wrmupn4zguz7f2gqw45qae98pzn3d',
    amount: [
      Coin.create()
        ..denom = 'uatom'
        ..amount = '100',
    ],
  );
  final txCreator = TxCreator.build(httpClient);
  final tx = await txCreator.generate(wallet, [message]);

  // 4. Broadcast the transaction
  final txSender = TxSender.build(httpClient);
  final response = await txSender.broadcastStdTx(tx, wallet);

  // Check the result
  if (response.isSuccessful) {
    print('Tx sent successfully. Response: ${response}');
  } else {
    print('Tx errored: ${response}');
  }
}
