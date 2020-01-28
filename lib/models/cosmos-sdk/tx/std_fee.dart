import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:alan/models/export.dart';

part 'std_fee.g.dart';

/// Contains the data that needs to be specified about the fee to pay
/// when performing a chain transaction.
/// More details on https://docs.cosmos.network/master/basics/gas-fees.html#introduction-to-gas-and-fees
@JsonSerializable(explicitToJson: true)
class StdFee extends Equatable {
  @JsonKey(name: "amount")
  final List<StdCoin> amount;

  @JsonKey(name: "gas")
  final String gas;

  const StdFee({
    @required this.amount,
    @required this.gas,
  }) : assert(gas != null);

  @override
  List<Object> get props => [amount, gas];

  factory StdFee.fromJson(Map<String, dynamic> json) => _$StdFeeFromJson(json);

  Map<String, dynamic> toJson() => _$StdFeeToJson(this);
}
