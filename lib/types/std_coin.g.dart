// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'std_coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StdCoin _$StdCoinFromJson(Map<String, dynamic> json) {
  return StdCoin(
    denom: json['denom'] as String,
    amount: json['amount'] as String,
  );
}

Map<String, dynamic> _$StdCoinToJson(StdCoin instance) => <String, dynamic>{
      'denom': instance.denom,
      'amount': instance.amount,
    };
