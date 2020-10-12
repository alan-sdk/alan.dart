// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validator _$ValidatorFromJson(Map<String, dynamic> json) {
  return Validator(
    operatorAddress: json['operator_address'] as String,
    consensusPubKey: json['consensus_pubkey'] as String,
    jailed: json['jailed'] as bool,
    status: json['status'] as int,
    tokens: json['tokens'] as String,
    delegatorShares: json['delegator_shares'] as String,
    description: json['descriptions'] == null
        ? null
        : ValidatorDescription.fromJson(
            json['descriptions'] as Map<String, dynamic>),
    unbondingHeight: json['unbonding_height'] as String,
    unbondingTime: json['unbonding_time'] as String,
    commission: json['commission'] == null
        ? null
        : Commission.fromJson(json['commission'] as Map<String, dynamic>),
    minSelfDelegation: json['min_self_delegation'] as String,
  );
}

Map<String, dynamic> _$ValidatorToJson(Validator instance) => <String, dynamic>{
      'operator_address': instance.operatorAddress,
      'consensus_pubkey': instance.consensusPubKey,
      'jailed': instance.jailed,
      'status': instance.status,
      'tokens': instance.tokens,
      'delegator_shares': instance.delegatorShares,
      'descriptions': instance.description?.toJson(),
      'unbonding_height': instance.unbondingHeight,
      'unbonding_time': instance.unbondingTime,
      'commission': instance.commission?.toJson(),
      'min_self_delegation': instance.minSelfDelegation,
    };
