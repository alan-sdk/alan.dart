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

  group('queryChainBackground', () {
    test('returns an error if an exception is thrown', () async {
      server.enqueue(httpCode: 500, body: null);
      final url = server.url;
      try {
        await ChainHelper.queryChain(url);
        fail('No exception thrown');
      } catch (error) {
        expect(
          error.toString(),
          Exception("Call to $url returned status code 500").toString(),
        );
      }
    });

    test('returns proper value if no exception is thrown', () async {
      final data = {"key": "value"};
      server.enqueue(httpCode: 200, body: jsonEncode(data));

      final result = await ChainHelper.queryChain(server.url);
      expect(result, data);
    });
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

      final result = await ChainHelper.sendTx([], wallet);
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
      expect(ChainHelper.sendTx(msgs, wallet), throwsException);
    });

    test('throws exception when tx sending is not successful', () async {
      final accountFile = File("test_resources/AccountDataResponse.json");
      final accountContents = accountFile.readAsStringSync();

      final txsFile = File("test_resources/TxsResponsesSuccess.json");
      final txsContents = txsFile.readAsStringSync();

      final nodeInfoFile = File("test_resources/NodeInfoResponse.json");
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
      final result = await ChainHelper.sendTx(msgs, wallet);
      expect(result.success, isTrue);
    });
  });
}
