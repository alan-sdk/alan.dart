// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redelegation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Redelegation _$RedelegationFromJson(Map<String, dynamic> json) {
  return Redelegation(
    delegatorAddress: json['delegator_address'] as String,
    validatorSourceAddress: json['validator_src_address'] as String,
    validatorDestinationAddress: json['validator_dst_address'] as String,
    entries: (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : RedelegationEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RedelegationToJson(Redelegation instance) =>
    <String, dynamic>{
      'delegator_address': instance.delegatorAddress,
      'validator_src_address': instance.validatorSourceAddress,
      'validator_dst_address': instance.validatorDestinationAddress,
      'entries': instance.entries?.map((e) => e?.toJson())?.toList(),
    };

RedelegationEntry _$RedelegationEntryFromJson(Map<String, dynamic> json) {
  return RedelegationEntry(
    creationHeight: json['creation_height'] as int,
    completionTime: json['completion_time'] as String,
    initialBalance: json['initial_balance'] as String,
    sharesDestination: json['shares_dst'] as String,
    balance: json['balance'] as String,
  );
}

Map<String, dynamic> _$RedelegationEntryToJson(RedelegationEntry instance) =>
    <String, dynamic>{
      'creation_height': instance.creationHeight,
      'completion_time': instance.completionTime,
      'initial_balance': instance.initialBalance,
      'shares_dst': instance.sharesDestination,
      'balance': instance.balance,
    };
