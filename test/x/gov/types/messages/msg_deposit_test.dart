import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_deposit_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final message = MsgDeposit(
    proposalId: '20',
    depositor: 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
    amount: [StdCoin(denom: 'uatom', amount: '1')],
  );

  final json = {
    'type': 'cosmos-sdk/MsgDeposit',
    'value': {
      'proposal_id': '20',
      'depositor': 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
      'amount': [
        {'denom': 'uatom', 'amount': '1'}
      ]
    }
  };

  testMsgJson<MsgDeposit>(message, json);

  group('validate works properly', () {
    test('when message is valid', () {
      expect(message.validate(), isNull);
    });

    test('when proposal id is null or empty', () {
      final nullMsg = MsgDeposit(
        proposalId: null,
        depositor: 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
        amount: [StdCoin(denom: 'uatom', amount: '1')],
      );
      expect(nullMsg.validate(), isException);

      final emptyMsg = MsgDeposit(
        proposalId: '',
        depositor: 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
        amount: [StdCoin(denom: 'uatom', amount: '1')],
      );
      expect(emptyMsg.validate(), isException);
    });

    test('when depositor is empty or null', () {
      final nullMsg = MsgDeposit(
        proposalId: '1',
        depositor: null,
        amount: [StdCoin(denom: 'uatom', amount: '1')],
      );
      expect(nullMsg.validate(), isException);

      final emptyMsg = MsgDeposit(
        proposalId: '1',
        depositor: '',
        amount: [StdCoin(denom: 'uatom', amount: '1')],
      );
      expect(emptyMsg.validate(), isException);
    });

    test('when amount is null or invalid', () {
      final nullMsg = MsgDeposit(
        proposalId: '1',
        depositor: 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
        amount: null,
      );
      expect(nullMsg.validate(), isException);

      final invalidMsg = MsgDeposit(
        proposalId: '1',
        depositor: 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
        amount: [StdCoin(denom: '', amount: '1')],
      );
      expect(invalidMsg.validate(), isException);
    });

    test('when amount is negative', () {
      final msg = MsgDeposit(
        proposalId: '1',
        depositor: 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
        amount: [StdCoin(denom: 'uatom', amount: '-1')],
      );
      expect(msg.validate(), isException);
    });
  });
}
