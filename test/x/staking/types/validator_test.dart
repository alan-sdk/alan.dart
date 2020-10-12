import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'operator_address': 'desmosvaloper1qd2e9dv52hn7kde8s92ls9xk0vtcgwut2sc0g8',
    'consensus_pubkey':
        'desmosvalconspub1zcjduepqspr68c436jys6q90sq5lgep42z073vlaflwhj4sw2vr8zd3nmvsst895vp',
    'jailed': false,
    'status': 2,
    'tokens': '399709110',
    'delegator_shares': '403746575.757575757575757536',
    'description': {
      'moniker': 'desmval',
      'identity': '',
      'website': '',
      'security_contact': '',
      'details': ''
    },
    'unbonding_height': '33315',
    'unbonding_time': '2020-10-29T06:50:15.901736Z',
    'commission': {
      'commission_rates': {
        'rate': '0.100000000000000000',
        'max_rate': '0.200000000000000000',
        'max_change_rate': '0.010000000000000000'
      },
      'update_time': '2020-10-08T02:12:14.371495019Z'
    },
    'min_self_delegation': '1'
  };

  final value = Validator(
    operatorAddress: 'desmosvaloper1qd2e9dv52hn7kde8s92ls9xk0vtcgwut2sc0g8',
    consensusPubKey:
        'desmosvalconspub1zcjduepqspr68c436jys6q90sq5lgep42z073vlaflwhj4sw2vr8zd3nmvsst895vp',
    jailed: false,
    status: 2,
    tokens: '399709110',
    delegatorShares: '403746575.757575757575757536',
    description: ValidatorDescription(
      moniker: 'desmval',
      identity: '',
      website: '',
      securityContact: '',
      details: '',
    ),
    unbondingHeight: '33315',
    unbondingTime: '2020-10-29T06:50:15.901736Z',
    commission: Commission(
      commissionRates: CommissionRates(
        rate: '0.100000000000000000',
        maxRate: '0.200000000000000000',
        maxChangeRate: '0.010000000000000000',
      ),
      updateTime: '2020-10-08T02:12:14.371495019Z',
    ),
    minSelfDelegation: '1',
  );

  test('fromJson works properly', () {
    expect(Validator.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
