import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'unbonding_delegation.g.dart';

/// Represents an unbonding delegation
@JsonSerializable(explicitToJson: true)
class UnbondingDelegation extends Equatable {
  @JsonKey(name: 'delegator_address')
  final String delegatorAddress;

  @JsonKey(name: 'validator_address')
  final String validatorAddress;

  @JsonKey(name: 'entries')
  final List<UnbondingDelegationEntry> entries;

  UnbondingDelegation({
    @required this.delegatorAddress,
    @required this.validatorAddress,
    @required this.entries,
  });

  factory UnbondingDelegation.fromJson(Map<String, dynamic> json) {
    return _$UnbondingDelegationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UnbondingDelegationToJson(this);
  }

  @override
  List<Object> get props {
    return [
      delegatorAddress,
      validatorAddress,
      entries,
    ];
  }
}

/// Represents an unbonding delegation entry
@JsonSerializable(explicitToJson: true)
class UnbondingDelegationEntry extends Equatable {
  @JsonKey(name: 'creation_height')
  final String creationHeight;

  @JsonKey(name: 'completion_time')
  final String completionTime;

  @JsonKey(name: 'initial_balance')
  final String initialBalance;

  @JsonKey(name: 'balance')
  final String balance;

  UnbondingDelegationEntry({
    @required this.creationHeight,
    @required this.completionTime,
    @required this.initialBalance,
    @required this.balance,
  });

  factory UnbondingDelegationEntry.fromJson(Map<String, dynamic> json) {
    return _$UnbondingDelegationEntryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UnbondingDelegationEntryToJson(this);
  }

  @override
  List<Object> get props {
    return [
      creationHeight,
      completionTime,
      initialBalance,
      balance,
    ];
  }
}
