import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'lcd_response.g.dart';

/// Represents the data present inside a response that is returned from
/// the LCD upon querying any endpoint.
@JsonSerializable()
class LcdResponse extends Equatable {
  @JsonKey(name: 'height')
  final String height;

  @JsonKey(name: 'result')
  final dynamic result;

  LcdResponse({
    @required this.height,
    @required this.result,
  });

  factory LcdResponse.fromJson(Map<String, dynamic> json) {
    return _$LcdResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LcdResponseToJson(this);
  }

  @override
  List<Object> get props {
    return [height, result];
  }
}
