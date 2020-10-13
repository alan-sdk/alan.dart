// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commission _$CommissionFromJson(Map<String, dynamic> json) {
  return Commission(
    commissionRates: json['commission_rates'] == null
        ? null
        : CommissionRates.fromJson(
            json['commission_rates'] as Map<String, dynamic>),
    updateTime: json['update_time'] as String,
  );
}

Map<String, dynamic> _$CommissionToJson(Commission instance) =>
    <String, dynamic>{
      'commission_rates': instance.commissionRates?.toJson(),
      'update_time': instance.updateTime,
    };

CommissionRates _$CommissionRatesFromJson(Map<String, dynamic> json) {
  return CommissionRates(
    rate: json['rate'] as String,
    maxRate: json['max_rate'] as String,
    maxChangeRate: json['max_change_rate'] as String,
  );
}

Map<String, dynamic> _$CommissionRatesToJson(CommissionRates instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'max_rate': instance.maxRate,
      'max_change_rate': instance.maxChangeRate,
    };
