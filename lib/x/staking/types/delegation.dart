import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'delegation.g.dart';

/// Represents a single delegation made from one delegator towards a validator.
@JsonSerializable(explicitToJson: true)
class Delegation extends Equatable {
  @JsonKey(name: 'delegator_address')
  final String delegatorAddress;

  @JsonKey(name: 'validator_address')
  final String validatorAddress;

  @JsonKey(name: 'shares')
  final String shares;

  @JsonKey(name: 'balance')
  final StdCoin balance;

  Delegation({
    @required this.delegatorAddress,
    @required this.validatorAddress,
    @required this.shares,
    @required this.balance,
  });

  factory Delegation.fromJson(Map<String, dynamic> json) {
    return _$DelegationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DelegationToJson(this);
  }

  @override
  List<Object> get props {
    return [
      delegatorAddress,
      validatorAddress,
      shares,
      balance,
    ];
  }
}
