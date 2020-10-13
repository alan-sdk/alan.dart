import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'params.g.dart';

/// Defines the high level settings for staking.
@JsonSerializable(explicitToJson: true)
class StakingParams extends Equatable {
  @JsonKey(name: 'unbonding_time')
  final String unbondingTime;

  @JsonKey(name: 'max_validators')
  final int maxValidators;

  @JsonKey(name: 'max_entries')
  final int maxEntries;

  @JsonKey(name: 'historical_entries')
  final int historicalEntries;

  @JsonKey(name: 'bond_denom')
  final String bondDenom;

  StakingParams({
    @required this.unbondingTime,
    @required this.maxValidators,
    @required this.maxEntries,
    @required this.historicalEntries,
    @required this.bondDenom,
  });

  factory StakingParams.fromJson(Map<String, dynamic> json) {
    return _$StakingParamsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StakingParamsToJson(this);
  }

  @override
  List<Object> get props {
    return [
      unbondingTime,
      maxValidators,
      maxEntries,
      historicalEntries,
      bondDenom,
    ];
  }
}
