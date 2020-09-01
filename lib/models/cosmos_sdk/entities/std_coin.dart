import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'std_coin.g.dart';

/// Contains the data of a specific coin amount.
@JsonSerializable(explicitToJson: true)
class StdCoin extends Equatable {
  @JsonKey(name: 'denom')
  final String denom;

  @JsonKey(name: 'amount')
  final String amount;

  const StdCoin({
    @required this.denom,
    @required this.amount,
  });

  @override
  List<Object> get props => [denom, amount];

  factory StdCoin.fromJson(Map<String, dynamic> json) =>
      _$StdCoinFromJson(json);

  Map<String, dynamic> toJson() => _$StdCoinToJson(this);
}
