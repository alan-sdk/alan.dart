import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'unbonding_time': '1814400000000000',
    'max_validators': 100,
    'max_entries': 7,
    'historical_entries': 0,
    'bond_denom': 'udaric'
  };
  final value = StakingParams(
    unbondingTime: '1814400000000000',
    maxValidators: 100,
    maxEntries: 7,
    historicalEntries: 0,
    bondDenom: 'udaric',
  );

  test('fromJson works properly', () {
    expect(StakingParams.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
