import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  group('Async tx response', () {
    test('successful', () {
      final file = File('test_resources/transactions/async_tx_successful.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;

      final response = TxResponse.fromJson(json, SendMode.MODE_ASYNC);
      final expected = AsyncTxResponse(
        height: '0',
        hash:
            '62ECAD007DE1685A906055EE60D2A8375461C0ED28D2B54708CD2D5192D445DE',
      );
      expect(response, expected);
      expect(response.toJson(), json);
    });

    test('error', () {
      final file = File('test_resources/transactions/async_tx_error.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;

      final response = TxResponse.fromJson(json, SendMode.MODE_ASYNC);
      final expected = AsyncTxResponse(
        height: '0',
        hash:
            'CDB9B177570D017E386393C062F87ED238D10880AD76C5DCA1DEC5A57718F080',
      );
      expect(response.isSuccessful, isTrue);
      expect(response, expected);
      expect(response.toJson(), json);
    });
  });

  group('Sync tx response', () {
    test('successful', () {
      final file = File('test_resources/transactions/sync_tx_successful.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;

      final response = TxResponse.fromJson(json, SendMode.MODE_SYNC);
      final expected = SyncTxResponse(
        height: '0',
        hash:
            '8B95B0F8FB358833A5CC1C3251A663C121CF3F43F6AF8540DCBB32E2FC502462',
        error: null,
      );
      expect(response, expected);
      expect(response.toJson(), json);
    });

    test('error', () {
      final file = File('test_resources/transactions/sync_tx_error.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;

      final response = TxResponse.fromJson(json, SendMode.MODE_SYNC);
      final expected = SyncTxResponse(
        height: '0',
        hash:
            'CDB9B177570D017E386393C062F87ED238D10880AD76C5DCA1DEC5A57718F080',
        error: TxResponseError(
          code: 8,
          message:
              'invalid pubkey: pubKey does not match signer address desmos1tvuu7rf0zakjw79hfnhvd73v5fvznrr8szfcan with signer index: 0',
        ),
      );
      expect(response.isSuccessful, isFalse);
      expect(response, expected);
      expect(response.toJson(), json);
    });
  });

  group('Block tx response', () {
    test('successful', () {
      final file = File('test_resources/transactions/block_tx_successful.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;

      final response = TxResponse.fromJson(json, SendMode.MODE_BLOCK);
      final expected = BlockTxResponse(
        gasWanted: '200000',
        gasUsed: '47849',
        height: '124',
        hash:
            '531DCC5FF47A8B8350458D2DA4600D076FB52B67F079EF4B6F0B1DD7DC0B161B',
        error: null,
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
                    value: 'desmos16f9wz7yg44pjfhxyn22kycs0qjy778ng877usl',
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
                    value: 'desmos1tvuu7rf0zakjw79hfnhvd73v5fvznrr8szfcan',
                  ),
                  LogEventAttribute(
                    key: 'sender',
                    value: 'desmos16f9wz7yg44pjfhxyn22kycs0qjy778ng877usl',
                  ),
                  LogEventAttribute(
                    key: 'amount',
                    value: '10udaric',
                  ),
                ],
              ),
            ],
          )
        ],
      );
      expect(response, expected);
      expect(response.toJson(), json);
    });

    test('error', () {
      final file = File('test_resources/transactions/block_tx_error.json');
      final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;

      final response = TxResponse.fromJson(json, SendMode.MODE_BLOCK);
      final expected = BlockTxResponse(
        gasWanted: '200000',
        gasUsed: '47849',
        height: '0',
        hash:
            '72BFB1A26327BDE5F55490E64DC797F089AB78DFB74A92BB913BA479F517775D',
        rawLog:
            'invalid pubkey: pubKey does not match signer address desmos1tvuu7rf0zakjw79hfnhvd73v5fvznrr8szfcan with signer index: 0',
        error: TxResponseError(
          code: 8,
          codeSpace: 'sdk',
          message:
              'invalid pubkey: pubKey does not match signer address desmos1tvuu7rf0zakjw79hfnhvd73v5fvznrr8szfcan with signer index: 0',
        ),
      );
      expect(response.isSuccessful, isFalse);
      expect(response, expected);
      expect(response.toJson(), json);
    });
  });
}
