import 'package:alan/alan.dart';
import 'package:fixnum/fixnum.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/auth.pb.dart' as auth;

abstract class AccountI {
  String get address;

  Any get pubKey;

  Int64 get accountNumber;

  Int64 get sequence;
}

class BaseAccount extends AccountI {
  final auth.BaseAccount account;

  @override
  String get address {
    return account.address;
  }

  @override
  Any get pubKey {
    return account.pubKey;
  }

  @override
  Int64 get accountNumber {
    return account.accountNumber;
  }

  @override
  Int64 get sequence {
    return account.sequence;
  }

  BaseAccount(auth.BaseAccount account) : account = account;

  static BaseAccount fromAny(Any any) {
    final account = auth.BaseAccount.fromBuffer(any.value);
    return BaseAccount(account);
  }
}

class ModuleAccount implements AccountI {
  final auth.ModuleAccount account;

  @override
  String get address {
    return account.baseAccount.address;
  }

  @override
  Any get pubKey {
    return account.baseAccount.pubKey;
  }

  @override
  Int64 get accountNumber {
    return account.baseAccount.accountNumber;
  }

  @override
  Int64 get sequence {
    return account.baseAccount.sequence;
  }

  ModuleAccount(auth.ModuleAccount account) : account = account;

  static ModuleAccount fromAny(Any any) {
    final account = auth.ModuleAccount.fromBuffer(any.value);
    return ModuleAccount(account);
  }
}
