import 'package:meta/meta.dart';
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

  @override
  String toString() {
    return "number: $accountNumber, sequence: $sequence, coins: $coins";
  }
}
