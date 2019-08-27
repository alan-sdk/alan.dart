import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sacco/models/transactions/std_coin.dart';

@JsonSerializable()
class StdFee {
  final String gas;

  @JsonKey(includeIfNull: true)
  final List<StdCoin> amount;

  const StdFee({
    @required this.amount,
    @required this.gas,
  }) : assert(gas != null);

  Map<String, dynamic> toJson() => {
    'amount': this.amount.map((coin) => coin.toJson()).toList(),
    'gas': this.gas,
  };
}
