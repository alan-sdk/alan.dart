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
}
