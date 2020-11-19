import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'min_deposit': [
      {'denom': 'udaric', 'amount': '10000000'}
    ],
    'max_deposit_period': '172800000000000'
  };
  final value = DepositParams(
    minDeposit: [
      Coin(denom: 'udaric', amount: '10000000'),
    ],
    maxDepositPeriod: '172800000000000',
  );

  test('fromJson works properly', () {
    expect(DepositParams.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
