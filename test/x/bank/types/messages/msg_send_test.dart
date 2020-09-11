import 'package:alan/alan.dart';
import 'package:test/test.dart';

import '../../../common.dart';
import 'msg_send_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final message = MsgSend(
    fromAddress: 'cosmos1dm68mx9jcsyqkyzp3up7gmnu3ku84v8gf6v75u',
    toAddress: 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
    amount: [StdCoin(denom: 'uatom', amount: '100')],
  );

  final json = {
    'type': 'cosmos-sdk/MsgSend',
    'value': {
      'from_address': 'cosmos1dm68mx9jcsyqkyzp3up7gmnu3ku84v8gf6v75u',
      'to_address': 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
      'amount': [
        {'denom': 'uatom', 'amount': '100'}
      ]
    }
  };

  testMsgJson<MsgSend>(message, json);

  group('Validation works properly', () {
    test('empty fromAddress returns error', () {
      final msg = MsgSend(
        fromAddress: '',
        toAddress: 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
        amount: [StdCoin(denom: 'uatom', amount: '9000')],
      );

      final exception = msg.validate();
      expect(
        exception.toString(),
        'Exception: from_address and to_address cannot be empty',
      );
    });

    test('empty toAddress returns error', () {
      final msg = MsgSend(
        fromAddress: 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
        toAddress: '',
        amount: [StdCoin(denom: 'uatom', amount: '9000')],
      );

      final exception = msg.validate();
      expect(
        exception.toString(),
        'Exception: from_address and to_address cannot be empty',
      );
    });

    test('empty toAddress returns error', () {
      final msg = MsgSend(
        fromAddress: 'cosmos1dm68mx9jcsyqkyzp3up7gmnu3ku84v8gf6v75u',
        toAddress: 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
        amount: [],
      );

      final exception = msg.validate();
      expect(exception.toString(), 'Exception: amount cannot be empty');
    });
  });
}
