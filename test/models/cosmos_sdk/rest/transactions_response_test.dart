import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'transactions_response_test.reflectable.dart';

void main() {
  setUpAll(() {
    initializeReflectable();
  });

  final expected = TransactionsResponse(
    txs: [
      Transaction(
        height: '52144',
        hash:
            '99F05F038083751060401BCE4B5C29541CF6D026FBE16B0885791AFBF62D23B3',
        rawLog:
            '[{\"msg_index\":0,\"log\":\"\",\"events\":[{\"type\":\"message\",\"attributes\":[{\"key\":\"action\",\"value\":\"send\"},{\"key\":\"sender\",\"value\":\"desmos1dzn2s7l0wm9kekyazcnhapu8j95n90efmcmrad\"},{\"key\":\"module\",\"value\":\"bank\"}]},{\"type\":\"transfer\",\"attributes\":[{\"key\":\"recipient\",\"value\":\"desmos17yw9l5d6p749v5rkrxvhpe5m4a8tdhwegfwsd5\"},{\"key\":\"sender\",\"value\":\"desmos1dzn2s7l0wm9kekyazcnhapu8j95n90efmcmrad\"},{\"key\":\"amount\",\"value\":\"1100000udaric\"}]}]}]',
        logs: [
          TransactionLog(
            messageIndex: 0,
            log: '',
            events: [
              LogEvent(
                type: 'message',
                attributes: [
                  LogEventAttribute(
                    key: 'action',
                    value: 'send',
                  ),
                  LogEventAttribute(
                    key: 'sender',
                    value: 'desmos1dzn2s7l0wm9kekyazcnhapu8j95n90efmcmrad',
                  ),
                  LogEventAttribute(
                    key: 'module',
                    value: 'bank',
                  ),
                ],
              ),
              LogEvent(
                type: 'transfer',
                attributes: [
                  LogEventAttribute(
                    key: 'recipient',
                    value: 'desmos17yw9l5d6p749v5rkrxvhpe5m4a8tdhwegfwsd5',
                  ),
                  LogEventAttribute(
                    key: 'sender',
                    value: 'desmos1dzn2s7l0wm9kekyazcnhapu8j95n90efmcmrad',
                  ),
                  LogEventAttribute(
                    key: 'amount',
                    value: '1100000udaric',
                  ),
                ],
              ),
            ],
          ),
        ],
        gasWanted: '200000',
        gasUsed: '69776',
        tx: StdTxWrapper(
          type: 'cosmos-sdk/StdTx',
          value: StdTx(
            messages: [
              MsgSend(
                fromAddress: 'desmos1dzn2s7l0wm9kekyazcnhapu8j95n90efmcmrad',
                toAddress: 'desmos17yw9l5d6p749v5rkrxvhpe5m4a8tdhwegfwsd5',
                amount: [
                  StdCoin(
                    denom: 'udaric',
                    amount: '1100000',
                  ),
                ],
              ),
            ],
            signatures: [
              StdSignature(
                publicKey: StdPublicKey(
                  type: 'tendermint/PubKeySecp256k1',
                  value: 'AyuCxtOEVmjhgI/M3N8qSSAP6gf3+iZ4Da/VxZV1YFHd',
                ),
                value:
                    '6Ev3GqcKiU7OOxtE3klLGD/KJXHrWk3gky/sEBkDB7gkT73fBc0Og9XQmQIheC73bc865FY0KkrLmkQeslGh0A==',
              ),
            ],
            fee: StdFee(
              amount: [StdCoin(denom: 'udaric', amount: '10000')],
              gas: '200000',
            ),
            memo: 'Welcome, to the real world...😎',
          ),
        ),
        timeStamp: '2020-08-28T06:53:00Z',
      ),
    ],
  );

  test('fromJson works properly', () {
    final file = File('test_resources/models/transactions_response.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final response = TransactionsResponse.fromJson(json);
    expect(
      response,
      expected,
      reason:
          'Excpected \n${expected.toJson()} \nbut got\n${response.toJson()}',
    );
  });

  test('toJson works properly', () {
    final file = File('test_resources/models/transactions_response.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    expect(expected.toJson(), json);
  });
}
