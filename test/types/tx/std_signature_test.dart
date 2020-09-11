import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final file = File('test_resources/models/std_signature.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final signature = StdSignature.fromJson(json);
    expect(
      signature,
      StdSignature(
        publicKey: StdPublicKey(
          value: 'Az44pEHl6NvZjgGjlEg7hXJ0QbNhkuGpBWQkhaElZowQ',
          type: 'tendermint/PubKeySecp256k1',
        ),
        value:
            'pB/FHJ60SwtiYl9ywxIgJ+6Cd0vCdpufyIRgmZUtejZE+fTPU2KWUicDq+Ho7CrAZ8jyXTEut3eSegP7cjz8TA==',
      ),
    );
  });

  test('toJson works properly', () {
    final signature = StdSignature(
      publicKey: StdPublicKey(
        value: 'Az44pEHl6NvZjgGjlEg7hXJ0QbNhkuGpBWQkhaElZowQ',
        type: 'tendermint/PubKeySecp256k1',
      ),
      value:
          'pB/FHJ60SwtiYl9ywxIgJ+6Cd0vCdpufyIRgmZUtejZE+fTPU2KWUicDq+Ho7CrAZ8jyXTEut3eSegP7cjz8TA==',
    );
    expect(signature.toJson(), {
      'pub_key': {
        'value': 'Az44pEHl6NvZjgGjlEg7hXJ0QbNhkuGpBWQkhaElZowQ',
        'type': 'tendermint/PubKeySecp256k1',
      },
      'signature':
          'pB/FHJ60SwtiYl9ywxIgJ+6Cd0vCdpufyIRgmZUtejZE+fTPU2KWUicDq+Ho7CrAZ8jyXTEut3eSegP7cjz8TA==',
    });
  });
}
