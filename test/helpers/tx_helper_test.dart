import 'dart:io';

import 'package:alan/alan.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockTxBuilder extends Mock implements TxBuilder {}

class MockTxSigner extends Mock implements TxSigner {}

class MockTxSender extends Mock implements TxSender {}

void main() {
  MockWebServer server;

  setUpAll(() {
    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
  });

  group('sendTx', () {
    Wallet wallet;

    setUpAll(() {
      final networkInfo = NetworkInfo(bech32Hrp: 'cosmos', lcdUrl: server.url);
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
      wallet = Wallet.derive(mnemonic, networkInfo);
    });

    test('returns null with empty list of messages', () async {
      // Enqueue an exception cause it shouldn't be called
      server.enqueue(httpCode: 500, body: null);

      final result = await TxHelper.sendTx([], wallet);
      expect(result, isNull);
    });

    test('propagates exception from TxSigner or TxSender', () async {
      server.enqueue(httpCode: 500, body: null);

      final msgs = [
        MsgSend(
          fromAddress: 'Address',
          toAddress: 'SecondAddress',
          amount: [],
        ),
      ];

      final result = await TxHelper.sendTx(msgs, wallet);
      expect(result.success, isFalse);
    });

    test('throws exception when tx sending is not successful', () async {
      final nodeInfoFile = File('test_resources/rest/node_info.json');
      final nodeInfoContents = nodeInfoFile.readAsStringSync();

      final accountFile = File('test_resources/rest/account.json');
      final accountContents = accountFile.readAsStringSync();

      final sendTxFile = File('test_resources/transactions/send_tx.json');
      final sendTxContents = sendTxFile.readAsStringSync();

      // ignore: missing_return
      server.dispatcher = (HttpRequest request) async {
        final url = request.uri.toString();
        if (url.contains('/auth/account')) {
          return MockResponse()
            ..httpCode = 200
            ..body = accountContents;
        } else if (url.contains('/txs') && request.method == 'POST') {
          return MockResponse()
            ..httpCode = 200
            ..body = sendTxContents;
        } else if (url.contains('/node_info')) {
          return MockResponse()
            ..httpCode = 200
            ..body = nodeInfoContents;
        }
      };

      final msgs = [
        MsgSend(
          fromAddress: 'Address',
          toAddress: 'SecondAddress',
          amount: [
            StdCoin(
              denom: 'uatom',
              amount: '100000',
            )
          ],
        ),
      ];
      final result = await TxHelper.sendTx(msgs, wallet);
      expect(result.success, isTrue);
    });
  });

  test('Multiple sign test', () async {
    // DO NOT execute this on CIs as we do not have a running node
    final envVars = Platform.environment;
    if (envVars['RUN_SIM_TESTS'] != 'true') {
      return;
    }

    final networkInfo = NetworkInfo(
      bech32Hrp: 'desmos',
      lcdUrl: 'http://localhost:1317',
    );
    final wallet = Wallet.derive(
      [
        'frown',
        'spike',
        'buyer',
        'diagram',
        'between',
        'output',
        'keep',
        'ask',
        'column',
        'wage',
        'kid',
        'layer',
        'nasty',
        'grab',
        'learn',
        'same',
        'morning',
        'fog',
        'mandate',
        'sphere',
        'cream',
        'focus',
        'sister',
        'lava',
      ],
      networkInfo,
      derivationPath: "m/44'/852'/0'/0/0",
    );

    for (var i = 1; i <= 7; i++) {
      final amount = i * 10;

      final message = MsgSend(
        fromAddress: wallet.bech32Address,
        toAddress: 'desmos1tvuu7rf0zakjw79hfnhvd73v5fvznrr8szfcan',
        amount: [StdCoin(denom: 'udaric', amount: amount.toString())],
      );

      final result = await TxHelper.sendTx([message], wallet);
      expect(result.success, isTrue);
      expect(result?.error?.errorMessage, isNull);

      sleep(const Duration(seconds: 7));
    }
  }, timeout: Timeout.factor(2));
}
