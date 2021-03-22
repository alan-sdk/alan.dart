import 'package:alan/alan.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;

import '../../common.dart';

class MockQueryClient extends Mock implements auth.QueryClient {}

void main() {
  auth.QueryClient client;
  AuthQuerier querier;

  setUp(() {
    client = MockQueryClient();
    querier = AuthQuerier(client: client);
  });

  group('getAccountData', () {
    test('returns null when response does not contain an account', () async {
      when(client.account(any)).thenAnswer((_) {
        return MockResponseFuture.value(auth.QueryAccountResponse.create());
      });

      final account = await querier.getAccountData('test_address');
      expect(account, isNull);
    });

    test('returns null when response does not have same address', () async {
      when(client.account(any)).thenAnswer((call) {
        final request = call.positionalArguments[0] as auth.QueryAccountRequest;
        final account = auth.BaseAccount.create()
          ..address = request.address + 'wrong'
          ..sequence = 100.toInt64()
          ..accountNumber = 101.toInt64();

        final response = auth.QueryAccountResponse.create()
          ..account = Codec.serialize(account);

        return MockResponseFuture.value(response);
      });

      final account = await querier.getAccountData('address');
      expect(account, isNull);
    });

    test('returns correct account when everything is valid', () async {
      when(client.account(any)).thenAnswer((call) {
        final request = call.positionalArguments[0] as auth.QueryAccountRequest;

        final account = auth.BaseAccount.create()
          ..address = request.address
          ..sequence = 100.toInt64()
          ..accountNumber = 101.toInt64();

        final response = auth.QueryAccountResponse.create()
          ..account = Codec.serialize(account);

        return MockResponseFuture.value(response);
      });

      final account = await querier.getAccountData('address');
      expect(account, isA<BaseAccount>());
      expect(account.address, 'address');
      expect(account.sequence, 100.toInt64());
      expect(account.accountNumber, 101.toInt64());
    });
  });
}
