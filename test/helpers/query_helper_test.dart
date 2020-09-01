import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:alan/helpers/query_helper.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

import 'query_helper_test.reflectable.dart';

void main() {
  MockWebServer server;

  setUpAll(() {
    initializeReflectable();

    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
  });

  group('queryChain', () {
    test('returns an error if an exception is thrown', () async {
      server.enqueue(httpCode: 500, body: null);
      final url = server.url;

      final result = await QueryHelper.queryChain(url);
      final expected = RequestResult<Map<String, dynamic>>(
        error: 'Call to $url returned status code 500',
      );
      expect(result, expected);
    });

    test('returns proper value if no exception is thrown', () async {
      final data = {'key': 'value'};
      server.enqueue(httpCode: 200, body: jsonEncode(data));

      final result = await QueryHelper.queryChain(server.url);
      final expected = RequestResult<Map<String, dynamic>>(value: data);
      expect(result, expected);
    });
  });

  group('getTxsByHeight', () {
    test('returns list of transactions properly', () async {
      final file = File('test_resources/models/transactions_response.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await QueryHelper.getTxsByHeight(server.url, '100');
      expect(result, hasLength(1));
      expect(
        result[0].hash,
        '99F05F038083751060401BCE4B5C29541CF6D026FBE16B0885791AFBF62D23B3',
      );
    });

    test('resturns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await QueryHelper.getTxsByHeight(server.url, '');
      expect(result, isEmpty);
    });
  });

  group('getNodeInfo', () {
    test('returns correct data properly', () async {
      final file = File('test_resources/models/node_info.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await QueryHelper.getNodeInfo(server.url);
      expect(result.network, 'cosmoshub-3');
    });

    test('throws exception with wrong response', () async {
      server.enqueue(httpCode: 400);

      expect(() => QueryHelper.getNodeInfo(server.url), throwsException);
    });
  });

  group('getAccountData', () {
    test('returns correct data properly', () async {
      final file = File('test_resources/rest/account.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await QueryHelper.getAccountData(
        server.url,
        'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
      );
      expect(result.address, 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2');
    });

    test('returns null with wrong address', () async {
      final file = File('test_resources/rest/account.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await QueryHelper.getAccountData(server.url, 'address');
      expect(result, isNull);
    });

    test('returns null with wrong answer', () async {
      server.enqueue(httpCode: 400);

      final result = await QueryHelper.getAccountData(server.url, 'address');
      expect(result, isNull);
    });
  });
}
