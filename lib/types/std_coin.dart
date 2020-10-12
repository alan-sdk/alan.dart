import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'std_coin.g.dart';

/// Contains the data of a specific coin amount.
@JsonSerializable(explicitToJson: true)
class StdCoin extends Equatable {
  @JsonKey(name: 'denom')
  final String denom;

  @JsonKey(name: 'amount')
  final String amount;

  const StdCoin({
    @required this.denom,
    @required this.amount,
  });

  bool get isPositive {
    if (amount?.isEmpty == true) return false;
    return double.parse(amount ?? '0') > 0;
  }

  bool get isValid {
    return validate() == null;
  }

  factory StdCoin.fromJson(Map<String, dynamic> json) {
    return _$StdCoinFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StdCoinToJson(this);
  }

  @override
  List<Object> get props {
    return [denom, amount];
  }

  Exception validate() {
    final regEx = RegExp(r'^%s$');

    if (!regEx.hasMatch(denom)) {
      return Exception('invalid denom: $denom');
    }

    if (!isPositive) {
      return Exception('negative coin amount: $amount');
    }

    return null;
  }
}
