import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'commission_rates.g.dart';

/// CommissionRates defines the initial commission rates to be used for creating
/// a validator.
@JsonSerializable(explicitToJson: true)
class CommissionRates extends Equatable {
  @JsonKey(name: 'rate')
  final String rate;

  @JsonKey(name: 'max_rate')
  final String maxRate;

  @JsonKey(name: 'max_change_rate')
  final String maxChangeRate;

  CommissionRates({
    @required this.rate,
    @required this.maxRate,
    @required this.maxChangeRate,
  });

  factory CommissionRates.fromJson(Map<String, dynamic> json) {
    return _$CommissionRatesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return {};
  }

  @override
  List<Object> get props {
    return [
      rate,
      maxRate,
      maxChangeRate,
    ];
  }
}
