import 'package:meta/meta.dart';

/// Contains the data of a specific coin
class StdCoin {
  final String denom;
  final String amount;

  StdCoin({
    @required this.denom,
    @required this.amount,
  })  : assert(denom != null),
        assert(amount != null);

  factory StdCoin.fromJson(Map<String, dynamic> json) => StdCoin(
        denom: json['denom'] as String,
        amount: json['amount'] as String,
      );

  Map<String, dynamic> toJson() => {
        'denom': this.denom,
        'amount': this.amount,
      };
}
