import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_delegate_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final message = MsgDelegate(
    delegatorAddress: 'desmos1lzynvemltcx4kr6m6fc7w4ag8suulntgnjjw5s',
    validatorAddress: 'desmosvaloper1lzynvemltcx4kr6m6fc7w4ag8suulntgdl667z',
    amount: StdCoin(denom: 'udaric', amount: '10000000'),
  );

  final json = {
    'type': 'cosmos-sdk/MsgDelegate',
    'value': {
      'delegator_address': 'desmos1lzynvemltcx4kr6m6fc7w4ag8suulntgnjjw5s',
      'validator_address':
          'desmosvaloper1lzynvemltcx4kr6m6fc7w4ag8suulntgdl667z',
      'amount': {'denom': 'udaric', 'amount': '10000000'}
    }
  };

  testMsgJson<MsgDelegate>(message, json);
}

