import 'package:json_annotation/json_annotation.dart';

part 'std_public_key.g.dart';

@JsonSerializable()
class StdPublicKey {
  final String type;
  final String value;

  StdPublicKey({this.type, this.value})
      : assert(type != null),
        assert(value != null);

  factory StdPublicKey.fromJson(Map<String, dynamic> json) =>
      _$StdPublicKeyFromJson(json);

  Map<String, dynamic> toJson() => _$StdPublicKeyToJson(this);
}
