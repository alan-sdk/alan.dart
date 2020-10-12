import 'dart:io';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

import 'querier_test.reflectable.dart';

void main() {
  MockWebServer server;
  TxQuerier querier;

  setUpAll(() {
    initializeReflectable();

    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    querier = TxQuerier(httpClient: http.Client());
  });

  group('getTxsByHeight', () {
    test('returns list of transactions properly', () async {
      final file = File('test_resources/models/transactions_response.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getTxsByHeight(server.url, '100');
      expect(result, hasLength(1));
      expect(
        result[0].hash,
        '99F05F038083751060401BCE4B5C29541CF6D026FBE16B0885791AFBF62D23B3',
      );
    });

    test('resturns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getTxsByHeight(server.url, '');
      expect(result, isEmpty);
    });
  });
}
