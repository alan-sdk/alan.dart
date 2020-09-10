import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final file = File('test_resources/models/public_key.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final pubKey = StdPublicKey.fromJson(json);
    expect(
      pubKey,
      StdPublicKey(
        type: 'tendermint/PubKeySecp256k1',
        value: 'A735NvHpqbi+AboXD2win9kHAVGJo+O1VeuKUASypGe3',
      ),
    );
  });

  test('toJson works properly', () {
    final pubKey = StdPublicKey(
      type: 'tendermint/PubKeySecp256k1',
      value: 'A735NvHpqbi+AboXD2win9kHAVGJo+O1VeuKUASypGe3',
    );
    expect(pubKey.toJson(), {
      'type': 'tendermint/PubKeySecp256k1',
      'value': 'A735NvHpqbi+AboXD2win9kHAVGJo+O1VeuKUASypGe3'
    });
  });
}
