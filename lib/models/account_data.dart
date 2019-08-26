import 'package:flutter/foundation.dart';
import 'package:sacco/models/transactions/export.dart';

class AccountData {
  final String accountNumber;
  final String sequence;
  final List<StdCoin> coins;

  AccountData({
    @required this.accountNumber,
    @required this.sequence,
    @required this.coins,
  })  : assert(accountNumber != null),
        assert(sequence != null),
        assert(coins != null);
}
