// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_edit_validator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgEditValidator _$MsgEditValidatorFromJson(Map<String, dynamic> json) {
  return MsgEditValidator(
    description: json['description'] == null
        ? null
        : Description.fromJson(json['description'] as Map<String, dynamic>),
    validatorAddress: json['validator_address'] as String,
    commission: json['commission'] == null
        ? null
        : CommissionRates.fromJson(json['commission'] as Map<String, dynamic>),
    minSelfDelegation: json['min_self_delegation'] as String,
  );
}

Map<String, dynamic> _$MsgEditValidatorToJson(MsgEditValidator instance) {
  final val = <String, dynamic>{
    'description': instance.description?.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('validator_address', instance.validatorAddress);
  writeNotNull('commission', instance.commission?.toJson());
  writeNotNull('min_self_delegation', instance.minSelfDelegation);
  return val;
}
