import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_create_validator_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final message = MsgEditValidator(
    description: ValidatorDescription(
      moniker: '[do-not-modify]',
      identity: 'BE448F9ECAB40ABE',
      website: 'https://inchain.works/',
      securityContact: '[do-not-modify]',
      details: '[do-not-modify]',
    ),
    validatorAddress: 'desmosvaloper17xf8f0ly5evhawvfz2q9u4pvpjq3spfmmr4xaz',
    commissionRate: null,
    minSelfDelegation: null,
  );

  final json = {
    'type': 'cosmos-sdk/MsgEditValidator',
    'value': {
      'description': {
        'moniker': '[do-not-modify]',
        'identity': 'BE448F9ECAB40ABE',
        'website': 'https://inchain.works/',
        'security_contact': '[do-not-modify]',
        'details': '[do-not-modify]'
      },
      'address': 'desmosvaloper17xf8f0ly5evhawvfz2q9u4pvpjq3spfmmr4xaz',
      'commission_rate': null,
      'min_self_delegation': null
    }
  };

  testMsgJson<MsgEditValidator>(message, json);
}
