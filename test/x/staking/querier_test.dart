import 'dart:io';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

import 'querier_test.reflectable.dart';

void main() {
  MockWebServer server;
  StakingQuerier querier;

  setUpAll(() {
    initializeReflectable();

    server = MockWebServer();
    server.start();
  });

  setUp(() {
    // Clean the dispatcher to avoid cross-testing conflicts
    server.dispatcher = null;
    querier = StakingQuerier(httpClient: http.Client());
  });

  group('getValidators', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/staking/response_validators.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getValidators(server.url);
      expect(result, hasLength(88));
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getValidators(server.url);
      expect(result, isEmpty);
    });
  });

  group('getValidator', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/staking/response_validator.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getValidator(server.url, 'val_addr');
      expect(result.description.moniker, 'Ægypti');
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getValidator(server.url, 'val_addr');
      expect(result, isNull);
    });
  });

  group('getValidatorDelegations', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/staking/response_delegations.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getValidatorDelegations(server.url, 'addr');
      expect(result, hasLength(1));
      expect(result[0].shares, '1000000.000000000000000000');
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getValidatorDelegations(server.url, 'addr');
      expect(result, isEmpty);
    });
  });

  group('getValidatorUnbondingDelegations', () {
    test('returns list properly', () async {
      final file = File(
        'test_resources/x/staking/response_unbonding_delegations.json',
      );
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getValidatorUnbondingDelegations(
        server.url,
        'address',
      );
      expect(result, hasLength(1));
      expect(
        result[0].delegatorAddress,
        'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
      );
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getValidatorUnbondingDelegations(
        server.url,
        'address',
      );
      expect(result, isEmpty);
    });
  });

  // ---------------------------------------------------------------------
  // -------------------------- DELEGATORS -------------------------------
  // ---------------------------------------------------------------------

  group('getDelegatorDelegations', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/staking/response_delegations.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getDelegatorDelegations(server.url, 'addr');
      expect(result, hasLength(1));
      expect(result[0].shares, '1000000.000000000000000000');
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getDelegatorDelegations(server.url, 'addr');
      expect(result, isEmpty);
    });
  });

  group('getDelegatorUnbondingDelegations', () {
    test('returns list properly', () async {
      final file =
          File('test_resources/x/staking/response_unbonding_delegations.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getDelegatorsUnbondingDelegations(
        server.url,
        'address',
      );
      expect(result, hasLength(1));
      expect(
        result[0].delegatorAddress,
        'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
      );
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getDelegatorsUnbondingDelegations(
        server.url,
        'address',
      );
      expect(result, isEmpty);
    });
  });

  group('getDelegatorValidators', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/staking/response_validators.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getDelegatorValidators(server.url, 'addr');
      expect(result, hasLength(88));
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getDelegatorValidators(server.url, 'addr');
      expect(result, isEmpty);
    });
  });

  group('getDelegatorValidator', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/staking/response_validator.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getDelegatorValidator(
        server.url,
        'del_addr',
        'val_addr',
      );
      expect(result.description.moniker, 'Ægypti');
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getDelegatorValidator(
        server.url,
        'del_addr',
        'val_addr',
      );
      expect(result, isNull);
    });
  });

  group('getDelegationBetweenDelegatorAndValidator', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/staking/response_delegation.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getDelegationBetweenDelegatorAndValidator(
        server.url,
        'del_addr',
        'val_addr',
      );
      expect(result.shares, '1000000.000000000000000000');
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getDelegationBetweenDelegatorAndValidator(
        server.url,
        'del_addr',
        'val_addr',
      );
      expect(result, isNull);
    });
  });

  group('getUnbondingDelegationsBetweenDelegatorAndValidator', () {
    test('returns list properly', () async {
      final file =
          File('test_resources/x/staking/response_unbonding_delegations.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result =
          await querier.getUnbondingDelegationsBetweenDelegatorAndValidator(
              server.url, 'del_addr', 'val_addr');
      expect(result, hasLength(1));
      expect(
        result[0].delegatorAddress,
        'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
      );
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result =
          await querier.getUnbondingDelegationsBetweenDelegatorAndValidator(
              server.url, 'del_addr', 'val_addr');
      expect(result, isEmpty);
    });
  });

  group('getRedelegations', () {
    test('returns list properly', () async {
      final file = File('test_resources/x/staking/response_redelegations.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getRedelegations(server.url);
      expect(result, hasLength(217));
      expect(
        result[0].delegatorAddress,
        'cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2',
      );
    });

    test('returns empty list with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getRedelegations(server.url);
      expect(result, isEmpty);
    });
  });

  // ---------------------------------------------------------------------
  // --------------------------- GENERIC ---------------------------------
  // ---------------------------------------------------------------------

  group('getPool', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/staking/response_pool.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getPool(server.url);
      expect(result.notBondedTokens, '1411379002');
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getPool(server.url);
      expect(result, isNull);
    });
  });

  group('getParams', () {
    test('returns data properly', () async {
      final file = File('test_resources/x/staking/response_parameters.json');
      server.enqueue(httpCode: 200, body: file.readAsStringSync());

      final result = await querier.getParams(server.url);
      expect(result.unbondingTime, '1814400000000000');
    });

    test('returns null with failed request', () async {
      server.enqueue(httpCode: 401);

      final result = await querier.getParams(server.url);
      expect(result, isNull);
    });
  });

}
