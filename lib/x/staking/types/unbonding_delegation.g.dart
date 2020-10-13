// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unbonding_delegation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnbondingDelegation _$UnbondingDelegationFromJson(Map<String, dynamic> json) {
  return UnbondingDelegation(
    delegatorAddress: json['delegator_address'] as String,
    validatorAddress: json['validator_address'] as String,
    entries: (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : UnbondingDelegationEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UnbondingDelegationToJson(
        UnbondingDelegation instance) =>
    <String, dynamic>{
      'delegator_address': instance.delegatorAddress,
      'validator_address': instance.validatorAddress,
      'entries': instance.entries?.map((e) => e?.toJson())?.toList(),
    };

UnbondingDelegationEntry _$UnbondingDelegationEntryFromJson(
    Map<String, dynamic> json) {
  return UnbondingDelegationEntry(
    creationHeight: json['creation_height'] as String,
    completionTime: json['completion_time'] as String,
    initialBalance: json['initial_balance'] as String,
    balance: json['balance'] as String,
  );
}

Map<String, dynamic> _$UnbondingDelegationEntryToJson(
        UnbondingDelegationEntry instance) =>
    <String, dynamic>{
      'creation_height': instance.creationHeight,
      'completion_time': instance.completionTime,
      'initial_balance': instance.initialBalance,
      'balance': instance.balance,
    };
