import 'package:convert/convert.dart';
import 'package:alan/alan.dart';
import 'package:protobuf/protobuf.dart';
import 'package:test/test.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:alan/proto/cosmos/vesting/v1beta1/export.dart' as vesting;

void main() {
  final accountNumber = 1.toInt64();
  final sequence = 1.toInt64();
  final address = 'cosmos1r8vw529qrrd69wq4g0kqa6kpaufam8smljwpsy';
  final pubKey = Any()
    ..typeUrl = '/cosmos.crypto.secp256k1.PubKey'
    ..value = hex.decode(
      '0a2102b30ed93e4534a91e176680658d35da9fdca5af7e3ea2aac3619c4113e1027df0',
    );

  auth.BaseAccount createBaseAccount() {
    return auth.BaseAccount.create()
      ..accountNumber = accountNumber
      ..sequence = sequence
      ..address = address
      ..pubKey = pubKey;
  }

  T testAccount<T>(GeneratedMessage account) {
    final any = Codec.serialize(account);
    final deserialized = Codec.deserializeAccount(any);
    expect(deserialized.accountNumber, accountNumber);
    expect(deserialized.sequence, sequence);
    expect(deserialized.address, address);
    expect(deserialized.pubKey, pubKey);

    expect(deserialized, isA<T>());
    return deserialized as T;
  }

  group('Deserializing auth accounts works', () {
    test('BaseAccount', () {
      final account = createBaseAccount();
      testAccount<BaseAccount>(account);
    });

    test('ModuleAccount', () {
      final account = auth.ModuleAccount.create()
        ..baseAccount = createBaseAccount()
        ..name = 'auth';
      account.permissions.add('permission');

      final deserialized = testAccount<ModuleAccount>(account);
      expect(deserialized.account.permissions, account.permissions);
    });
  });

  final originalVesting = <Coin>[
    Coin.create()
      ..denom = 'uatom'
      ..amount = '100',
  ];

  final delegatedFree = <Coin>[
    Coin.create()
      ..denom = 'uatom'
      ..amount = '1000',
  ];

  final delegatedVesting = [
    Coin.create()
      ..denom = 'uatom'
      ..amount = '100000',
  ];

  vesting.BaseVestingAccount createBaseVestingAccount() {
    final account = vesting.BaseVestingAccount.create()
      ..baseAccount = createBaseAccount()
      ..endTime = 1500.toInt64();
    account.originalVesting.addAll(originalVesting);
    account.delegatedFree.addAll(delegatedFree);
    account.delegatedVesting.addAll(delegatedVesting);
    return account;
  }

  group('Deserializing vesting accounts works', () {
    test('BaseVestingAccount', () {
      final account = createBaseVestingAccount();

      final deserialized = testAccount<BaseVestingAccount>(account);
      expect(deserialized.account.originalVesting, account.originalVesting);
      expect(deserialized.account.delegatedFree, account.delegatedFree);
      expect(deserialized.account.delegatedVesting, account.delegatedVesting);
    });

    test('DelayedVestingAccount', () {
      final account = vesting.DelayedVestingAccount.create()
        ..baseVestingAccount = createBaseVestingAccount();

      final deserialized = testAccount<DelayedVestingAccount>(account);
      expect(deserialized.account, equals(account));
    });

    test('ContinuousVestingAccount', () {
      final account = vesting.ContinuousVestingAccount.create()
        ..baseVestingAccount = createBaseVestingAccount()
        ..startTime = 1600.toInt64();

      final deserialized = testAccount<ContinuousVestingAccount>(account);
      expect(deserialized.account.startTime, 1600.toInt64());
    });

    test('PeriodicVestingAccount', () {
      final account = vesting.PeriodicVestingAccount.create()
        ..baseVestingAccount = createBaseVestingAccount()
        ..startTime = 1800.toInt64();

      final period = vesting.Period.create()..length = 100.toInt64();
      period.amount.add(
        Coin.create()
          ..amount = '100'
          ..denom = 'uatom',
      );
      account.vestingPeriods.add(period);

      final deserialized = testAccount<PeriodicVestingAccount>(account);
      expect(deserialized.account, account);
    });
  });
}
