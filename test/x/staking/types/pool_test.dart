import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'not_bonded_tokens': '1209393084',
    'bonded_tokens': '78700266581'
  };
  final value = StakingPool(
    notBondedTokens: '1209393084',
    bondedTokens: '78700266581',
  );

  test('fromJson works properly', () {
    expect(StakingPool.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
