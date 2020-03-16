// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountResponse _$AccountResponseFromJson(Map<String, dynamic> json) {
  return AccountResponse(
    type: json['type'] as String,
    accountData: json['value'] == null
        ? null
        : CosmosAccount.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountResponseToJson(AccountResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.accountData?.toJson(),
    };
