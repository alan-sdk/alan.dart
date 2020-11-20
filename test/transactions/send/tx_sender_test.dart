import 'dart:io';

import 'package:alan/alan.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

import 'tx_sender_test.reflectable.dart';

void main() {
  MockWebServer server;
  TxSender sender;

  setUpAll(() {
    initializeReflectable();
    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    sender = TxSender.build();
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
    final file = File('test_resources/transactions/sync_tx_successful.json');
    server.enqueue(httpCode: 200, body: file.readAsStringSync());

    final wallet = Wallet.derive(
      mnemonic,
      NetworkInfo(bech32Hrp: 'desmos', fullNodeHost: server.url),
    );

    final message = MsgSend.create();
    message.fromAddress = 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9';
    message.toAddress = 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k';
    message.amount.add(Coin.create()
      ..denom = 'uatom'
      ..amount = '100');

    final builder = TxBuilder.create();
    builder.setMsgs([message]);

    final result = await sender.broadcastStdTx(builder.getTx(), wallet);
    expect(result, isA<SyncTxResponse>());
  });
}
