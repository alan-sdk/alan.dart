import 'dart:io';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

void main() {
  MockWebServer server;
  AuthQuerier helper;

  setUpAll(() {
    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    helper = AuthQuerier(httpClient: http.Client());
  });

  group('getAccountData', () {
    test('returns correct data properly', () async {
      final file = File('test_resources/rest/account.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await helper.getAccountData(
        server.url,
        'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
      );
      expect(result.address, 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2');
    });

    test('returns null with wrong address', () async {
      final file = File('test_resources/rest/account.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await helper.getAccountData(server.url, 'address');
      expect(result, isNull);
    });

    test('returns null with wrong answer', () async {
      server.enqueue(httpCode: 400);

      final result = await helper.getAccountData(server.url, 'address');
      expect(result, isNull);
    });
  });
}
