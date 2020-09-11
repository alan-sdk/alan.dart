// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'std_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StdFee _$StdFeeFromJson(Map<String, dynamic> json) {
  return StdFee(
    amount: (json['amount'] as List)
        ?.map((e) =>
            e == null ? null : StdCoin.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    gas: json['gas'] as String,
  );
}

Map<String, dynamic> _$StdFeeToJson(StdFee instance) => <String, dynamic>{
      'amount': instance.amount?.map((e) => e?.toJson())?.toList(),
      'gas': instance.gas,
    };
