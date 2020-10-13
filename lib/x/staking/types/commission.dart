import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'commission.g.dart';

/// Defines a commission parameters for a given validator.
@JsonSerializable(explicitToJson: true)
class Commission extends Equatable {
  @JsonKey(name: 'commission_rates')
  final CommissionRates commissionRates;

  @JsonKey(name: 'update_time')
  final String updateTime;

  Commission({
    @required this.commissionRates,
    @required this.updateTime,
  });

  factory Commission.fromJson(Map<String, dynamic> json) {
    return _$CommissionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CommissionToJson(this);
  }

  @override
  List<Object> get props {
    return [commissionRates, updateTime];
  }
}

/// Defines the initial commission rates to be used for creating
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
    return _$CommissionRatesToJson(this);
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
