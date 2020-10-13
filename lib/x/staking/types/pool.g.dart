// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StakingPool _$StakingPoolFromJson(Map<String, dynamic> json) {
  return StakingPool(
    notBondedTokens: json['not_bonded_tokens'] as String,
    bondedTokens: json['bonded_tokens'] as String,
  );
}

Map<String, dynamic> _$StakingPoolToJson(StakingPool instance) =>
    <String, dynamic>{
      'not_bonded_tokens': instance.notBondedTokens,
      'bonded_tokens': instance.bondedTokens,
    };
