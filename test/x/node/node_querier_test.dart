import 'dart:io';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

void main() {
  late MockWebServer server;
  late NodeQuerier querier;

  setUpAll(() {
    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    querier = NodeQuerier.build(http.Client());
  });

  group('getNodeInfo', () {
    test('returns correct data properly', () async {
      final file = File('test_resources/x/node/response_node_info.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getNodeInfo(server.url);
      expect(result.network, 'cosmos-hub2');
    });

    test('throws exception with wrong response', () async {
      server.enqueue(httpCode: 400);

      expect(() => querier.getNodeInfo(server.url), throwsException);
    });
  });
}
