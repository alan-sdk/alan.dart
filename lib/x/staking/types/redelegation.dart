import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'redelegation.g.dart';

/// Contains the list of a particular delegator's
/// redelegating bonds from a particular source validator to a
/// particular destination validator
@JsonSerializable(explicitToJson: true)
class Redelegation extends Equatable {
  @JsonKey(name: 'delegator_address')
  final String delegatorAddress;

  @JsonKey(name: 'validator_src_address')
  final String validatorSourceAddress;

  @JsonKey(name: 'validator_dst_address')
  final String validatorDestinationAddress;

  @JsonKey(name: 'entries')
  final List<RedelegationEntry> entries;

  Redelegation({
    @required this.delegatorAddress,
    @required this.validatorSourceAddress,
    @required this.validatorDestinationAddress,
    @required this.entries,
  });

  factory Redelegation.fromJson(Map<String, dynamic> json) {
    return _$RedelegationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RedelegationToJson(this);
  }

  @override
  List<Object> get props {
    return [
      delegatorAddress,
      validatorSourceAddress,
      validatorDestinationAddress,
      entries,
    ];
  }
}

/// Represents an entry to a Redelegation
@JsonSerializable(explicitToJson: true)
class RedelegationEntry extends Equatable {
  @JsonKey(name: 'creation_height')
  final int creationHeight;

  @JsonKey(name: 'completion_time')
  final String completionTime;

  @JsonKey(name: 'initial_balance')
  final String initialBalance;

  @JsonKey(name: 'shares_dst')
  final String sharesDestination;

  @JsonKey(name: 'balance')
  final String balance;

  RedelegationEntry({
    @required this.creationHeight,
    @required this.completionTime,
    @required this.initialBalance,
    @required this.sharesDestination,
    @required this.balance,
  });

  factory RedelegationEntry.fromJson(Map<String, dynamic> json) {
    return _$RedelegationEntryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RedelegationEntryToJson(this);
  }

  @override
  List<Object> get props {
    return [
      creationHeight,
      completionTime,
      initialBalance,
      sharesDestination,
      balance,
    ];
  }
}
