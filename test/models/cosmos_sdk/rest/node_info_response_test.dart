import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final file = File('test_resources/models/node_info.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final response = NodeInfoResponse.fromJson(json);
    expect(
      response,
      NodeInfoResponse(nodeInfo: NodeInfo(network: 'cosmoshub-3')),
    );
  });

  test('toJson works properly', () {
    final response = NodeInfoResponse(
      nodeInfo: NodeInfo(network: 'cosmoshub-3'),
    );
    expect(response.toJson(), {
      'node_info': {'network': 'cosmoshub-3'}
    });
  });
}
