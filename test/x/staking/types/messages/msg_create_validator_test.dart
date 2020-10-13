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
    value: StdCoin(
      denom: 'udaric',
      amount: '1000000',
    ),
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

  group('validator works properly', () {
    test('when the message is valid', () {
      expect(message.validate(), isNot(isException));
    });

    test('when delegator address is empty or null', () {
      final msgWithEmptyAddr = MsgCreateValidator(
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
        delegatorAddress: '',
        validatorAddress: 'validator_addr',
        publicKey: 'public_key',
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(msgWithEmptyAddr.validate(), isException);

      final msgWithNullAddr = MsgCreateValidator(
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
        delegatorAddress: null,
        validatorAddress: 'validator_addr',
        publicKey: 'public_key',
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(msgWithNullAddr.validate(), isException);
    });

    test('when validator address is empty or null', () {
      final msgWithEmptyAddr = MsgCreateValidator(
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
        delegatorAddress: 'delegator_addr',
        validatorAddress: '',
        publicKey: 'public_key',
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(msgWithEmptyAddr.validate(), isException);

      final msgWithNullAddr = MsgCreateValidator(
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
        delegatorAddress: 'delegator_addr',
        validatorAddress: null,
        publicKey: 'public_key',
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(msgWithNullAddr.validate(), isException);
    });

    test('when public key is empty or null', () {
      final msgWithEmptyAddr = MsgCreateValidator(
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
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        publicKey: '',
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(msgWithEmptyAddr.validate(), isException);

      final msgWithNullAddr = MsgCreateValidator(
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
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        publicKey: null,
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(msgWithNullAddr.validate(), isException);
    });

    test('when description is empty', () {
      final invalidMsg = MsgCreateValidator(
        description: ValidatorDescription(),
        commission: CommissionRates(
          rate: '0.100000000000000000',
          maxRate: '0.200000000000000000',
          maxChangeRate: '0.010000000000000000',
        ),
        minSelfDelegation: '1',
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        publicKey: 'public_key',
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(invalidMsg.validate(), isException);
    });

    test('when min self delegation is less than zero', () {
      final invalidMsg = MsgCreateValidator(
        description: ValidatorDescription(moniker: 'moniker'),
        commission: CommissionRates(
          rate: '0.100000000000000000',
          maxRate: '0.200000000000000000',
          maxChangeRate: '0.010000000000000000',
        ),
        minSelfDelegation: '-1',
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        publicKey: 'public_key',
        value: StdCoin(
          denom: 'udaric',
          amount: '1000000',
        ),
      );
      expect(invalidMsg.validate(), isException);
    });

    test('when amount is less than self delefation', () {
      final invalidMsg = MsgCreateValidator(
        description: ValidatorDescription(moniker: 'moniker'),
        commission: CommissionRates(
          rate: '0.100000000000000000',
          maxRate: '0.200000000000000000',
          maxChangeRate: '0.010000000000000000',
        ),
        minSelfDelegation: '1',
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        publicKey: 'public_key',
        value: StdCoin(denom: 'udaric', amount: '0'),
      );
      expect(invalidMsg.validate(), isException);
    });
  });
}
