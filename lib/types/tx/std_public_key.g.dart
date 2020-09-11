// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'std_public_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StdPublicKey _$StdPublicKeyFromJson(Map<String, dynamic> json) {
  return StdPublicKey(
    type: json['type'] as String,
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$StdPublicKeyToJson(StdPublicKey instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
