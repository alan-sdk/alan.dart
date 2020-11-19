import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'std_signature_message_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  test('fromJson works properly', () {
    final file = File('test_resources/models/std_signature_message.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final signature = StdSignatureMessage.fromJson(json);
    expect(
      signature,
      StdSignatureMessage(
        chainId: 'cosmoshub-3',
        accountNumber: '10',
        sequence: '3',
        memo: 'This is my chain memo',
        fee: StdFee(
          amount: [Coin(denom: 'uatom', amount: '100')],
          gas: '200000',
        ),
        msgs: [
          MsgSend(
            fromAddress: 'cosmos1dm68mx9jcsyqkyzp3up7gmnu3ku84v8gf6v75u',
            toAddress: 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
            amount: [Coin(denom: 'uatom', amount: '999905338')],
          ),
        ],
      ),
    );
  });

  test('toJson works properly', () {
    final message = StdSignatureMessage(
      chainId: 'cosmoshub-3',
      accountNumber: '10',
      sequence: '3',
      memo: 'This is my chain memo',
      fee: StdFee(
        amount: [Coin(denom: 'uatom', amount: '100')],
        gas: '200000',
      ),
      msgs: [
        MsgSend(
          fromAddress: 'cosmos1dm68mx9jcsyqkyzp3up7gmnu3ku84v8gf6v75u',
          toAddress: 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
          amount: [Coin(denom: 'uatom', amount: '999905338')],
        ),
      ],
    );
    expect(message.toJson(), {
      'chain_id': 'cosmoshub-3',
      'account_number': '10',
      'sequence': '3',
      'memo': 'This is my chain memo',
      'fee': {
        'amount': [
          {'denom': 'uatom', 'amount': '100'}
        ],
        'gas': '200000',
      },
      'msgs': [
        {
          'type': 'cosmos-sdk/MsgSend',
          'value': {
            'from_address': 'cosmos1dm68mx9jcsyqkyzp3up7gmnu3ku84v8gf6v75u',
            'to_address': 'cosmos1tmm4hujud7frppx23yeky889hka0gn9n689mr9',
            'amount': [
              {'denom': 'uatom', 'amount': '999905338'}
            ]
          }
        }
      ]
    });
  });
}
