import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_undelegate_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final json = {
    'type': 'cosmos-sdk/MsgUndelegate',
    'value': {
      'delegator_address': 'cosmos1tnc2aakfk2nn7y6k3nm5et885ca68mkm4nshhk',
      'validator_address':
          'cosmosvaloper14kn0kk33szpwus9nh8n87fjel8djx0y070ymmj',
      'amount': {'denom': 'uatom', 'amount': '1001059'}
    }
  };

  final message = MsgUndelegate(
    delegatorAddress: 'cosmos1tnc2aakfk2nn7y6k3nm5et885ca68mkm4nshhk',
    validatorAddress: 'cosmosvaloper14kn0kk33szpwus9nh8n87fjel8djx0y070ymmj',
    amount: StdCoin(denom: 'uatom', amount: '1001059'),
  );

  testMsgJson<MsgUndelegate>(message, json);

  group('validate works properly', () {
    test('when message is valid', () {
      expect(message.validate(), isNot(isException));
    });

    test('when delegator address is empty or null', () {
      final emptyAddrMsg = MsgUndelegate(
        delegatorAddress: '',
        validatorAddress: 'val_addr',
        amount: StdCoin(denom: 'uatom', amount: '1001059'),
      );
      expect(emptyAddrMsg.validate(), isException);

      final nullAddrMsg = MsgUndelegate(
        delegatorAddress: null,
        validatorAddress: 'val_addr',
        amount: StdCoin(denom: 'uatom', amount: '1001059'),
      );
      expect(nullAddrMsg.validate(), isException);
    });

    test('when validator address is empty or null', () {
      final emptyAddrMsg = MsgUndelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: '',
        amount: StdCoin(denom: 'uatom', amount: '1001059'),
      );
      expect(emptyAddrMsg.validate(), isException);

      final nullAddrMsg = MsgUndelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: null,
        amount: StdCoin(denom: 'uatom', amount: '1001059'),
      );
      expect(nullAddrMsg.validate(), isException);
    });

    test('when amount is negative or null', () {
      final negativeAmtMsg = MsgUndelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        amount: StdCoin(denom: 'uatom', amount: '-1'),
      );
      expect(negativeAmtMsg.validate(), isException);

      final nullAmtMsg = MsgUndelegate(
        delegatorAddress: 'delegator_addr',
        validatorAddress: 'validator_addr',
        amount: StdCoin(denom: 'uatom', amount: null),
      );
      expect(nullAmtMsg.validate(), isException);
    });
  });
}
