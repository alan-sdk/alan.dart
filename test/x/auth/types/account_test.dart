import 'dart:convert';
import 'dart:io';

import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('Offline creation works properly', () {
    final address = 'my_address';
    final account = CosmosAccount.offline(address);
    expect(account.address, address);
    expect(account.sequence, '');
    expect(account.accountNumber, '');
    expect(account.coins, isEmpty);
  });

  test('fromJson works properly', () {
    final file = File('test_resources/models/account.json');
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final account = CosmosAccount.fromJson(json);
    expect(
      account,
      CosmosAccount(
        address: 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
        coins: [Coin(denom: 'uatom', amount: '1000')],
        accountNumber: '10',
        sequence: '3',
      ),
    );
  });

  test('toJson works properly', () {
    final account = CosmosAccount(
      address: 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
      coins: [
        Coin(
          denom: 'uatom',
          amount: '1000',
        )
      ],
      accountNumber: '10',
      sequence: '3',
    );
    expect(account.toJson(), {
      'address': 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
      'coins': [
        {'denom': 'uatom', 'amount': '1000'}
      ],
      'account_number': '10',
      'sequence': '3',
    });
  });

  test('toString serializes all the data', () {
    final account = CosmosAccount(
      address: 'cosmos1hafptm4zxy5nw8rd2pxyg83c5ls2v62tstzuv2',
      coins: [
        Coin(
          denom: 'uatom',
          amount: '1000',
        )
      ],
      accountNumber: '10',
      sequence: '3',
    );

    final string = account.toString();
    ['address', 'accountNumber', 'sequence', 'coins'].forEach((element) {
      expect(string, contains(element));
    });
  });

  test('copyWith works properly', () {
    final account = CosmosAccount(
      address: 'my-address',
      accountNumber: '10',
      sequence: '3',
      coins: [Coin(denom: 'uatom', amount: '100')],
    );

    final copied = account.copyWith(
      address: 'test-addres',
      accountNumber: '1',
      sequence: '30',
      coins: [Coin(denom: 'uatom', amount: '10')],
    );
    expect(
      copied,
      CosmosAccount(
        address: 'test-addres',
        accountNumber: '1',
        sequence: '30',
        coins: [Coin(denom: 'uatom', amount: '10')],
      ),
    );
  });
}
