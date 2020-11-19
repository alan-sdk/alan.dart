// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delegation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Delegation _$DelegationFromJson(Map<String, dynamic> json) {
  return Delegation(
    delegatorAddress: json['delegator_address'] as String,
    validatorAddress: json['validator_address'] as String,
    shares: json['shares'] as String,
    balance: json['balance'] == null
        ? null
        : Coin.fromJson(json['balance'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DelegationToJson(Delegation instance) =>
    <String, dynamic>{
      'delegator_address': instance.delegatorAddress,
      'validator_address': instance.validatorAddress,
      'shares': instance.shares,
      'balance': instance.balance?.toJson(),
    };
