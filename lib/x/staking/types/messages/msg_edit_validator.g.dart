// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_edit_validator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgEditValidator _$MsgEditValidatorFromJson(Map<String, dynamic> json) {
  return MsgEditValidator(
    description: json['description'] == null
        ? null
        : ValidatorDescription.fromJson(
            json['description'] as Map<String, dynamic>),
    validatorAddress: json['address'] as String,
    commissionRate: json['commission_rate'] as String,
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

  writeNotNull('address', instance.validatorAddress);
  val['commission_rate'] = instance.commissionRate;
  val['min_self_delegation'] = instance.minSelfDelegation;
  return val;
}
