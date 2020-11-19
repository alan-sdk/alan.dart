// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_create_validator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgCreateValidator _$MsgCreateValidatorFromJson(Map<String, dynamic> json) {
  return MsgCreateValidator(
    description: json['description'] == null
        ? null
        : ValidatorDescription.fromJson(
            json['description'] as Map<String, dynamic>),
    commission: json['commission'] == null
        ? null
        : CommissionRates.fromJson(json['commission'] as Map<String, dynamic>),
    minSelfDelegation: json['min_self_delegation'] as String,
    delegatorAddress: json['delegator_address'] as String,
    validatorAddress: json['validator_address'] as String,
    publicKey: json['pubkey'] as String,
    value: json['value'] == null
        ? null
        : Coin.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MsgCreateValidatorToJson(MsgCreateValidator instance) {
  final val = <String, dynamic>{
    'description': instance.description?.toJson(),
    'commission': instance.commission?.toJson(),
    'min_self_delegation': instance.minSelfDelegation,
    'delegator_address': instance.delegatorAddress,
    'validator_address': instance.validatorAddress,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pubkey', instance.publicKey);
  val['value'] = instance.value?.toJson();
  return val;
}
