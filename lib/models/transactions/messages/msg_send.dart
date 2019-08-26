import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sacco/models/transactions/export.dart';

@JsonSerializable()
class MsgSend {
  @JsonKey(name: "from_address")
  final String fromAddress;

  @JsonKey(name: "to_address")
  final String toAddress;

  final List<StdCoin> amount;

  MsgSend({
    @required this.fromAddress,
    @required this.toAddress,
    @required this.amount,
  })  : assert(fromAddress != null),
        assert(toAddress != null),
        assert(amount != null);

  Map<String, dynamic> toJson() => {
        'from_address': this.fromAddress,
        'to_address': this.toAddress,
        'amount': this.amount.map((coin) => coin.toJson()).toList(),
      };
}
