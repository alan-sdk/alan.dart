import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'delegator_address': 'desmos1cgzcj0jwja032zx7hgjuxruqdvppex3nd6dm3e',
    'validator_address': 'desmosvaloper1cgzcj0jwja032zx7hgjuxruqdvppex3nnh90mt',
    'shares': '4030303.030303030303030303',
    'balance': {'denom': 'udaric', 'amount': '3900000'}
  };
  final value = Delegation(
    delegatorAddress: 'desmos1cgzcj0jwja032zx7hgjuxruqdvppex3nd6dm3e',
    validatorAddress: 'desmosvaloper1cgzcj0jwja032zx7hgjuxruqdvppex3nnh90mt',
    shares: '4030303.030303030303030303',
    balance: Coin(denom: 'udaric', amount: '3900000'),
  );

  test('fromJson works properly', () {
    expect(Delegation.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
