// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return Description(
    moniker: json['moniker'] as String,
    identity: json['identity'] as String,
    website: json['website'] as String,
    securityContact: json['security_contact'] as String,
    details: json['details'] as String,
  );
}

Map<String, dynamic> _$DescriptionToJson(Description instance) {
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
