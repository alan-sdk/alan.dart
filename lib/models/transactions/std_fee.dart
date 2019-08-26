import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sacco/models/transactions/std_coin.dart';

@JsonSerializable()
class StdFee {
  final String gas;

  @JsonKey(includeIfNull: true)
  final List<StdCoin> amount;

  StdFee({
    @required this.amount,
    @required this.gas,
  }) : assert(gas != null);

  Map<String, dynamic> toJson() => {
    'gas': this.gas,
    'amount': this.amount.map((coin) => coin.toJson()).toList(),
  };
}
