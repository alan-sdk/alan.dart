import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

void main() {
  late MockWebServer server;
  late QueryHelper helper;

  setUpAll(() {
    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    helper = QueryHelper(httpClient: http.Client());
  });

  group('queryChain', () {
    test('returns an error if an exception is thrown', () async {
      server.enqueue(httpCode: 500, body: '');
      final url = server.url;

      final result = await helper.queryChain(url);
      final expected = RequestResult<Map<String, dynamic>>(
        error: 'Call to $url returned status code 500',
      );
      expect(result, expected);
    });

    test('returns proper value if no exception is thrown', () async {
      final data = {'key': 'value'};
      server.enqueue(httpCode: 200, body: jsonEncode(data));

      final result = await helper.queryChain(server.url);
      final expected = RequestResult<Map<String, dynamic>>(value: data);
      expect(result, expected);
    });
  });
}
