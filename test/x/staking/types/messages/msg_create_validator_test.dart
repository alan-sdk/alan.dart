import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_create_validator_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final message = MsgCreateValidator(
    description: ValidatorDescription(
      moniker: 'retz80',
      identity: '',
      website: '',
      securityContact: '',
      details: '',
    ),
    commission: CommissionRates(
      rate: '0.100000000000000000',
      maxRate: '0.200000000000000000',
      maxChangeRate: '0.010000000000000000',
    ),
    minSelfDelegation: '1',
    delegatorAddress: 'desmos1jwrsx60nuuzw642u7uuhceuhnxgrrl895rsnf5',
    validatorAddress: 'desmosvaloper1jwrsx60nuuzw642u7uuhceuhnxgrrl892wc8rx',
    publicKey:
        'desmosvalconspub1zcjduepqgztfagxazg9p2kz3sshmc4f909pd66cwuhmyhuw6un70hsvmw98sz6yucv',
    value: StdCoin(denom: 'udaric', amount: '1000000'),
  );
  final json = {
    'type': 'cosmos-sdk/MsgCreateValidator',
    'value': {
      'description': {
        'moniker': 'retz80',
        'identity': '',
        'website': '',
        'security_contact': '',
        'details': ''
      },
      'commission': {
        'rate': '0.100000000000000000',
        'max_rate': '0.200000000000000000',
        'max_change_rate': '0.010000000000000000'
      },
      'min_self_delegation': '1',
      'delegator_address': 'desmos1jwrsx60nuuzw642u7uuhceuhnxgrrl895rsnf5',
      'validator_address':
          'desmosvaloper1jwrsx60nuuzw642u7uuhceuhnxgrrl892wc8rx',
      'pubkey':
          'desmosvalconspub1zcjduepqgztfagxazg9p2kz3sshmc4f909pd66cwuhmyhuw6un70hsvmw98sz6yucv',
      'value': {'denom': 'udaric', 'amount': '1000000'},
    }
  };

  testMsgJson<MsgCreateValidator>(message, json);
}
