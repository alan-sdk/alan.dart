// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'std_signature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StdSignature _$StdSignatureFromJson(Map<String, dynamic> json) {
  return StdSignature(
    value: json['signature'] as String,
    publicKey: json['pub_key'] == null
        ? null
        : StdPublicKey.fromJson(json['pub_key'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StdSignatureToJson(StdSignature instance) =>
    <String, dynamic>{
      'pub_key': instance.publicKey,
      'signature': instance.value,
    };
