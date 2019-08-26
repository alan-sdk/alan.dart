import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'std_msg.g.dart';

@JsonSerializable()
class StdMsg {
  final String type;
  final Map<String, dynamic> value;

  StdMsg({
    @required this.type,
    @required this.value,
  })  : assert(type != null),
        assert(value != null);

  factory StdMsg.fromJson(Map<String, dynamic> json) => _$StdMsgFromJson(json);

  Map<String, dynamic> toJson() => _$StdMsgToJson(this);
}
