import 'dart:convert';
import 'dart:io';

import 'package:mock_web_server/mock_web_server.dart';
import 'package:mockito/mockito.dart';
import 'package:alan/alan.dart';
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
      final networkInfo = NetworkInfo(bech32Hrp: "desmos", lcdUrl: server.url);
      final mnemonic = [
        "music",
        "swap",
        "repair",
        "fiber",
        "space",
        "cactus",
        "fold",
        "various",
        "identify",
        "ice",
        "grape",
        "negative",
        "category",
        "cupboard",
        "box",
        "village",
        "gallery",
        "letter",
        "electric",
        "vote",
        "praise",
        "sustain",
        "system",
        "soon",
      ];
      wallet = Wallet.derive(
        mnemonic,
        networkInfo,
        derivationPath: "m/44'/852'/0'/0/0",
      );
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
          fromAddress: "Address",
          toAddress: "SecondAddress",
          amount: [],
        ),
      ];
      expect(TxHelper.sendTx(msgs, wallet), throwsException);
    });

    test('throws exception when tx sending is not successful', () async {
      final accountFile = File("test_resources/queries/account.json");
      final accountContents = accountFile.readAsStringSync();

      final txsFile = File("test_resources/queries/txs.json");
      final txsContents = txsFile.readAsStringSync();

      final nodeInfoFile = File("test_resources/queries/node_info.json");
      final nodeInfoContents = nodeInfoFile.readAsStringSync();

      // ignore: missing_return
      server.dispatcher = (HttpRequest request) async {
        final url = request.uri.toString();
        if (url.contains("/auth/account")) {
          return MockResponse()
            ..httpCode = 200
            ..body = accountContents;
        } else if (url.contains("/txs")) {
          return MockResponse()
            ..httpCode = 200
            ..body = txsContents;
        } else if (url.contains("/node_info")) {
          return MockResponse()
            ..httpCode = 200
            ..body = nodeInfoContents;
        }
      };

      final msgs = [
        MsgSend(
          fromAddress: "Address",
          toAddress: "SecondAddress",
          amount: [
            StdCoin(
              denom: "uatom",
              amount: "100000",
            )
          ],
        ),
      ];
      final result = await TxHelper.sendTx(msgs, wallet);
      expect(result.success, isTrue);
    });
  });
}
