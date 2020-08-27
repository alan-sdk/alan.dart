import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'msg_send_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  test('Serialization works properly', () {
    final message = MsgSend(
      fromAddress: 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9',
      toAddress: 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k',
      amount: [StdCoin(denom: 'uatom', amount: '100')],
    );

    expect(Codec.serializeMsg(message), {
      'type': 'cosmos-sdk/MsgSend',
      'value': {
        'from_address': 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9',
        'to_address': 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k',
        'amount': [
          {'amount': '100', 'denom': 'uatom'}
        ]
      }
    });
  });

  test('Reading from JSON works properly', () {
    final file = File('test_resources/msgs/msg_send.json');
    final content = file.readAsStringSync();
    final json = jsonDecode(content) as Map<String, dynamic>;

    final msg = Codec.deserializeMsg(json);
    expect(msg, isA<MsgSend>());

    final sendMsg = msg as MsgSend;
    expect(
      sendMsg.fromAddress,
      'cosmos1dm68mx9jcsyqkyzp3up7gmnu3ku84v8gf6v75u',
    );
    expect(sendMsg.toAddress, 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9');
    expect(sendMsg.amount, [StdCoin(denom: 'uatom', amount: '999905338')]);
  });

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
