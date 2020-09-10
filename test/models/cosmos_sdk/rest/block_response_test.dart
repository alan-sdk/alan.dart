import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final file = File('test_resources/models/block_response.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final response = BlockResponse.fromJson(json);
    expect(
      response,
      BlockResponse(
        blockMeta: BlockMeta(header: BlockHeader(height: '3139836')),
      ),
    );
  });

  test('toJson works properly', () {
    final response = BlockResponse(
      blockMeta: BlockMeta(header: BlockHeader(height: '3139836')),
    );
    expect(response.toJson(), {
      'block_meta': {
        'header': {
          'height': '3139836',
        }
      }
    });
  });
}
