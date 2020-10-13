// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validator_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidatorDescription _$ValidatorDescriptionFromJson(Map<String, dynamic> json) {
  return ValidatorDescription(
    moniker: json['moniker'] as String,
    identity: json['identity'] as String,
    website: json['website'] as String,
    securityContact: json['security_contact'] as String,
    details: json['details'] as String,
  );
}

Map<String, dynamic> _$ValidatorDescriptionToJson(
    ValidatorDescription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('moniker', instance.moniker);
  writeNotNull('identity', instance.identity);
  writeNotNull('website', instance.website);
  writeNotNull('security_contact', instance.securityContact);
  writeNotNull('details', instance.details);
  return val;
}
