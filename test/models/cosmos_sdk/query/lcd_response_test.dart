import 'dart:convert';
import 'dart:io';

import 'package:alan/models/export.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final file = File('test_resources/models/lcd_response.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final response = LcdResponse.fromJson(json);
    expect(
      response,
      LcdResponse(
        height: '36778',
        result: [
          {'denom': 'uatom', 'amount': '7999942239950'},
          {'denom': 'fotino', 'amount': '80000000000000'}
        ],
      ),
    );
  });

  test('toJson works properly', () {
    final response = LcdResponse(
      height: '36778',
      result: [
        {'denom': 'uatom', 'amount': '7999942239950'},
        {'denom': 'fotino', 'amount': '80000000000000'}
      ],
    );
    expect(response.toJson(), {
      'height': '36778',
      'result': [
        {'denom': 'uatom', 'amount': '7999942239950'},
        {'denom': 'fotino', 'amount': '80000000000000'}
      ],
    });
  });
}
