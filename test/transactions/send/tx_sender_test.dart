import 'dart:io';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

void main() {
  MockWebServer server;
  TxSender sender;

  setUpAll(() {
    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    sender = TxSender.build(http.Client());
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

  test('Signed StdTx is sent properly', () async {
    final file = File('test_resources/rest/txs/sync_tx_successful.json');
    server.enqueue(httpCode: 200, body: file.readAsStringSync());

    final wallet = Wallet.derive(
      mnemonic,
      NetworkInfo(bech32Hrp: 'desmos', lcdUrl: server.url),
    );
    final stdTx = TxBuilder.buildStdTx([
      MsgSend(
        fromAddress: 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9',
        toAddress: 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k',
        amount: [StdCoin(denom: 'uatom', amount: '100')],
      ),
    ]);

    final result = await sender.broadcastStdTx(stdTx, wallet);
    expect(result.response, isA<SyncTxResponse>());
  });
}
