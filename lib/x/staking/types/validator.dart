import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'validator.g.dart';

/// Validator defines the total amount of bond shares and their exchange rate to
/// coins. Slashing results in a decrease in the exchange rate, allowing correct
/// calculation of future undelegations without iterating over delegators.
/// When coins are delegated to this validator, the validator is credited with a
/// delegation whose number of bond shares is based on the amount of coins delegated
/// divided by the current exchange rate. Voting power can be calculated as total
/// bonded shares multiplied by exchange rate.
@JsonSerializable(explicitToJson: true)
class Validator extends Equatable {
  @JsonKey(name: 'operator_address')
  final String operatorAddress;

  @JsonKey(name: 'consensus_pubkey')
  final String consensusPubKey;

  @JsonKey(name: 'jailed')
  final bool jailed;

  @JsonKey(name: 'status')
  final int status;

  @JsonKey(name: 'tokens')
  final String tokens;

  @JsonKey(name: 'delegator_shares')
  final String delegatorShares;

  @JsonKey(name: 'description')
  final ValidatorDescription description;

  @JsonKey(name: 'unbonding_height')
  final String unbondingHeight;

  @JsonKey(name: 'unbonding_time')
  final String unbondingTime;

  @JsonKey(name: 'commission')
  final Commission commission;

  @JsonKey(name: 'min_self_delegation')
  final String minSelfDelegation;

  Validator({
    @required this.operatorAddress,
    @required this.consensusPubKey,
    @required this.jailed,
    @required this.status,
    @required this.tokens,
    @required this.delegatorShares,
    @required this.description,
    @required this.unbondingHeight,
    @required this.unbondingTime,
    @required this.commission,
    @required this.minSelfDelegation,
  });

  factory Validator.fromJson(Map<String, dynamic> json) {
    return _$ValidatorFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ValidatorToJson(this);
  }

  @override
  List<Object> get props {
    return [
      operatorAddress,
      consensusPubKey,
      jailed,
      status,
      tokens,
      delegatorShares,
      description,
      unbondingHeight,
      unbondingTime,
      commission,
      minSelfDelegation,
    ];
  }
}
