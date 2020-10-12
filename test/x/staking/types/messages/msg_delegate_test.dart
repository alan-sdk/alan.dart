import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_delegate_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final json = {
    'type': 'cosmos-sdk/MsgDelegate',
    'value': {
      'delegator_address': 'desmos1lzynvemltcx4kr6m6fc7w4ag8suulntgnjjw5s',
      'validator_address':
          'desmosvaloper1lzynvemltcx4kr6m6fc7w4ag8suulntgdl667z',
      'amount': {'denom': 'udaric', 'amount': '10000000'}
    }
  };

  final message = MsgDelegate(
    delegatorAddress: 'desmos1lzynvemltcx4kr6m6fc7w4ag8suulntgnjjw5s',
    validatorAddress: 'desmosvaloper1lzynvemltcx4kr6m6fc7w4ag8suulntgdl667z',
    amount: StdCoin(denom: 'udaric', amount: '10000000'),
  );

  testMsgJson<MsgDelegate>(message, json);

  group('validate works properly', () {
    test('when the message is valid', () {
      expect(message.validate(), isNot(isException));
    });

    test('when delegator address is empty or null', () {
      final emptyAddrMsg = MsgDelegate(
        delegatorAddress: '',
        validatorAddress: 'validator_addr',
        amount: StdCoin(denom: 'udaric', amount: '10000000'),
      );
      expect(emptyAddrMsg.validate(), isException);

      final nullAddrMsg = MsgDelegate(
        delegatorAddress: null,
        validatorAddress: 'validator_addr',
        amount: StdCoin(denom: 'udaric', amount: '10000000'),
      );
      expect(nullAddrMsg.validate(), isException);
    });

    test('when validator address is empty or null', () {
      final emptyAddrMsg = MsgDelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: '',
        amount: StdCoin(denom: 'udaric', amount: '10000000'),
      );
      expect(emptyAddrMsg.validate(), isException);

      final nullAddrMsg = MsgDelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: null,
        amount: StdCoin(denom: 'udaric', amount: '10000000'),
      );
      expect(nullAddrMsg.validate(), isException);
    });

    test('when amount is empty or negative', () {
      final emptyAmountMsg = MsgDelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        amount: StdCoin(denom: 'udaric', amount: ''),
      );
      expect(emptyAmountMsg.validate(), isException);

      final nullAmountMsg = MsgDelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        amount: StdCoin(denom: 'udaric', amount: null),
      );
      expect(nullAmountMsg.validate(), isException);
    });
  });
}
