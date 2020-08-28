import 'dart:convert';
import 'dart:io';

import 'package:alan/models/cosmos_sdk/query/account_response.dart';
import 'package:alan/models/export.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson works properly', () {
    final file = File('test_resources/models/account_response.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final response = AccountResponse.fromJson(json);
    expect(
      response,
      AccountResponse(
        type: 'cosmos-sdk/Account',
        accountData: CosmosAccount(
          address: 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
          coins: [StdCoin(denom: 'uatom', amount: '1000')],
          accountNumber: '10',
          sequence: '3',
        ),
      ),
    );
  });

  test('toJson works properly', () {
    final response = AccountResponse(
      type: 'cosmos-sdk/Account',
      accountData: CosmosAccount(
        address: 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
        coins: [StdCoin(denom: 'uatom', amount: '1000')],
        accountNumber: '10',
        sequence: '3',
      ),
    );
    expect(response.toJson(), {
      'type': 'cosmos-sdk/Account',
      'value': {
        'address': 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
        'coins': [
          {'denom': 'uatom', 'amount': '1000'}
        ],
        'account_number': '10',
        'sequence': '3'
      }
    });
  });
}
