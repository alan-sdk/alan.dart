import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_create_validator_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

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

  testMsgJson<MsgEditValidator>(message, json);

  group('validate works properly', () {
    test('when everything is valid', () {
      expect(message.validate(), isException);
    });

    test('when validator address is empty or null', () {
      final emptyAdrrMsg = MsgEditValidator(
        description: ValidatorDescription(
          moniker: '[do-not-modify]',
          identity: 'BE448F9ECAB40ABE',
          website: 'https://inchain.works/',
          securityContact: '[do-not-modify]',
          details: '[do-not-modify]',
        ),
        validatorAddress: '',
        commissionRate: null,
        minSelfDelegation: null,
      );
      expect(emptyAdrrMsg.validate(), isException);

      final nullAdrrMsg = MsgEditValidator(
        description: ValidatorDescription(
          moniker: '[do-not-modify]',
          identity: 'BE448F9ECAB40ABE',
          website: 'https://inchain.works/',
          securityContact: '[do-not-modify]',
          details: '[do-not-modify]',
        ),
        validatorAddress: null,
        commissionRate: null,
        minSelfDelegation: null,
      );
      expect(nullAdrrMsg.validate(), isException);
    });

    test('when description is empty or null', () {
      final emptyDescMsg = MsgEditValidator(
        description: ValidatorDescription(),
        validatorAddress: 'validator_addr',
        commissionRate: null,
        minSelfDelegation: null,
      );
      expect(emptyDescMsg.validate(), isException);

      final nullDescMsg = MsgEditValidator(
        description: null,
        validatorAddress: 'validator_addr',
        commissionRate: null,
        minSelfDelegation: null,
      );
      expect(nullDescMsg.validate(), isException);
    });

    test('when min self delegation is less than or equals than zero', () {
      final negativeDelegation = MsgEditValidator(
        description: ValidatorDescription(moniker: 'test'),
        validatorAddress: 'validator_addr',
        commissionRate: null,
        minSelfDelegation: '-1',
      );
      expect(negativeDelegation.validate(), isException);

      final zeroDelegation = MsgEditValidator(
        description: ValidatorDescription(moniker: 'test'),
        validatorAddress: 'validator_addr',
        commissionRate: null,
        minSelfDelegation: '0',
      );
      expect(zeroDelegation.validate(), isException);
    });

    test('when commission rate is less than zero or greater than 1', () {
      final lessThanZeroMsg = MsgEditValidator(
        description: ValidatorDescription(moniker: 'test'),
        validatorAddress: 'validator_addr',
        commissionRate: '-0.0001',
        minSelfDelegation: '1',
      );
      expect(lessThanZeroMsg.validate(), isException);

      final greaterThanOneMsg = MsgEditValidator(
        description: ValidatorDescription(moniker: 'test'),
        validatorAddress: 'validator_addr',
        commissionRate: '1.00001',
        minSelfDelegation: '1',
      );
      expect(greaterThanOneMsg.validate(), isException);
    });
  });
}
