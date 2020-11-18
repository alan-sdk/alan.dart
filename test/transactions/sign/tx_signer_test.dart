import 'dart:io';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

void main() {
  MockWebServer server;
  TxCreator signer;

  setUpAll(() {
    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    signer = TxCreator.build(http.Client());
  });

  final mnemonic = [
    'sibling',
    'auction',
    'sibling',
    'flavor',
    'judge',
    'foil',
    'tube',
    'dust',
    'work',
    'mixed',
    'crush',
    'action',
    'menu',
    'property',
    'project',
    'ride',
    'crouch',
    'hat',
    'mom',
    'scale',
    'start',
    'ill',
    'spare',
    'panther',
  ];

  test('StdTx with fee is signed correctly', () async {
    server.dispatcher = (HttpRequest request) async {
      final url = request.uri.toString();
      var responseFile;
      if (url.contains('account')) {
        responseFile = File('test_resources/x/auth/response_account.json');
      } else if (url.contains('node_info')) {
        responseFile = File('test_resources/x/node/response_node_info.json');
      }

      final responseBody = await responseFile.readAsString();
      return MockResponse()
        ..body = responseBody
        ..httpCode = 200;
    };

    // Create the network info
    final networkInfo = NetworkInfo(bech32Hrp: 'cosmos', lcdUrl: server.url);

    // Build a transaction
    final msg = MsgSend(
      fromAddress: 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
      toAddress: 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k',
      amount: [StdCoin(amount: '100', denom: 'uatom')],
    );

    final fee = StdFee(
      gas: '200000',
      amount: [StdCoin(amount: '250', denom: 'uatom')],
    );
    final tx = TxBuilder.buildStdTx([msg], fee: fee);

    // Create a wallet
    final wallet = Wallet.derive(mnemonic, networkInfo);
    expect(wallet.networkInfo, networkInfo);

    // Sign the transaction
    final signedTx = await signer.generate(tx, wallet);
    expect(signedTx.signatures.length, 1);

    final signature = signedTx.signatures[0];
    expect(
      signature.publicKey.type,
      'tendermint/PubKeySecp256k1',
    );
    expect(
      signature.publicKey.value,
      'ArMO2T5FNKkeF2aAZY012p/cpa9+PqKqw2GcQRPhAn3w',
    );
    expect(
      signature.value,
      'm2op4CCBa39fRZD91WiqtBLKbUQI+1OWsc1tJkpDg+8FYB4y51KahGn26MskVMpTJl5gToIC1pX26hLbW1Kxrg==',
    );
  });
}
