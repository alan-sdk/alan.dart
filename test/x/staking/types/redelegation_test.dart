import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'delegator_address': 'cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2',
    'validator_src_address':
        'cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3',
    'validator_dst_address':
        'cosmosvaloper156gqf9837u7d4c4678yt3rl4ls9c5vuursrrzf',
    'entries': [
      {
        'creation_height': 3579502,
        'completion_time': '2020-10-24T17:37:34.608344023Z',
        'initial_balance': '400650323',
        'shares_dst': '400650323.000000000000000000',
        'balance': '400650323'
      }
    ]
  };
  final value = Redelegation(
    delegatorAddress: 'cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2',
    validatorSourceAddress:
        'cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3',
    validatorDestinationAddress:
        'cosmosvaloper156gqf9837u7d4c4678yt3rl4ls9c5vuursrrzf',
    entries: [
      RedelegationEntry(
        creationHeight: 3579502,
        completionTime: '2020-10-24T17:37:34.608344023Z',
        initialBalance: '400650323',
        sharesDestination: '400650323.000000000000000000',
        balance: '400650323',
      ),
    ],
  );

  test('fromJson works properly', () {
    expect(Redelegation.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
