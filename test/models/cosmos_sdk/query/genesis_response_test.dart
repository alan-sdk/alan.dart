import 'dart:convert';
import 'dart:io';

import 'package:alan/models/cosmos_sdk/query/genesis_response.dart';
import 'package:alan/models/export.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final file = File('test_resources/models/genesis_response.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final response = GenesisResponse.fromJson(json);
    expect(response.result.genesis.genesisTime, '2020-08-25T05:30:00Z');
    expect(response.result.genesis.appState.entries.length, 11);
  });

  test('toJson works properly', () {
    final response = GenesisResponse(
      result: Result(
        genesis: Genesis(
          genesisTime: 'genesis-time',
          appState: {
            'auth': {'field': 'test'}
          },
        ),
      ),
    );
    expect(response.toJson(), {
      'result': {
        'genesis': {
          'genesis_time': 'genesis-time',
          'app_state': {
            'auth': {'field': 'test'}
          }
        }
      }
    });
  });
}
