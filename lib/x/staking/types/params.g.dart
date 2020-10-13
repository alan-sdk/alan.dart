// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StakingParams _$StakingParamsFromJson(Map<String, dynamic> json) {
  return StakingParams(
    unbondingTime: json['unbonding_time'] as String,
    maxValidators: json['max_validators'] as int,
    maxEntries: json['max_entries'] as int,
    historicalEntries: json['historical_entries'] as int,
    bondDenom: json['bond_denom'] as String,
  );
}

Map<String, dynamic> _$StakingParamsToJson(StakingParams instance) =>
    <String, dynamic>{
      'unbonding_time': instance.unbondingTime,
      'max_validators': instance.maxValidators,
      'max_entries': instance.maxEntries,
      'historical_entries': instance.historicalEntries,
      'bond_denom': instance.bondDenom,
    };
