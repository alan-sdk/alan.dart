// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CosmosAccount _$CosmosAccountFromJson(Map<String, dynamic> json) {
  return CosmosAccount(
    address: json['address'] as String,
    accountNumber: json['account_number'] as String,
    sequence: json['sequence'] as String,
    coins: (json['coins'] as List)
        ?.map((e) =>
            e == null ? null : StdCoin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CosmosAccountToJson(CosmosAccount instance) =>
    <String, dynamic>{
      'address': instance.address,
      'account_number': instance.accountNumber,
      'sequence': instance.sequence,
      'coins': instance.coins?.map((e) => e?.toJson())?.toList(),
    };
