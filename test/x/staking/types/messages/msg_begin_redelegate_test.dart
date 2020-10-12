import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_begin_redelegate_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final json = {
    'type': 'cosmos-sdk/MsgBeginRedelegate',
    'value': {
      'delegator_address': 'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
      'validator_src_address':
          'cosmosvaloper10e4vsut6suau8tk9m6dnrm0slgd6npe3jx5xpv',
      'validator_dst_address':
          'cosmosvaloper1qaa9zej9a0ge3ugpx3pxyx602lxh3ztqgfnp42',
      'amount': {'denom': 'uatom', 'amount': '100000'}
    }
  };

  final message = MsgBeginRedelegate(
    delegatorAddress: 'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
    validatorSourceAddress:
        'cosmosvaloper10e4vsut6suau8tk9m6dnrm0slgd6npe3jx5xpv',
    validatorDestinationAddress:
        'cosmosvaloper1qaa9zej9a0ge3ugpx3pxyx602lxh3ztqgfnp42',
    amount: StdCoin(denom: 'uatom', amount: '100000'),
  );

  testMsgJson<MsgBeginRedelegate>(message, json);
}
