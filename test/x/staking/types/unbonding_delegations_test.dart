import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'delegator_address': 'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
    'validator_address': 'cosmosvaloper1sjllsnramtg3ewxqwwrwjxfgc4n4ef9u2lcnj0',
    'entries': [
      {
        'creation_height': '3647626',
        'completion_time': '2020-10-30T11:43:14.008358686Z',
        'initial_balance': '1000000',
        'balance': '1000000'
      }
    ]
  };

  final value = UnbondingDelegation(
    delegatorAddress: 'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
    validatorAddress: 'cosmosvaloper1sjllsnramtg3ewxqwwrwjxfgc4n4ef9u2lcnj0',
    entries: [
      UnbondingDelegationEntry(
        creationHeight: '3647626',
        completionTime: '2020-10-30T11:43:14.008358686Z',
        initialBalance: '1000000',
        balance: '1000000',
      ),
    ],
  );

  test('fromJson works properly', () {
    expect(UnbondingDelegation.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
