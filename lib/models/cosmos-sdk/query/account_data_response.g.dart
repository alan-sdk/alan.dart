// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountDataResponse _$AccountDataResponseFromJson(Map<String, dynamic> json) {
  return AccountDataResponse(
    type: json['type'] as String,
    accountData: json['value'] == null
        ? null
        : AccountData.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountDataResponseToJson(
        AccountDataResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.accountData?.toJson(),
    };
