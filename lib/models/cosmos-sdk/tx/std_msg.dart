import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

/// Represents a standard message that can be included inside
/// a transaction.
///
/// To be properly serialized as a JSON object, the [asJson] method must
/// be implemented.
///
/// To be properly deserialize, a factory method defined as follows must be
/// implemented:
///
/// ```dart
/// factory <ClassName>.fromJson(Map<String, dynamic> json)
/// ```
///
/// Not implementing one of the two methods above will result in an error
/// during either the serialization or deserialization.
@JsonSerializable()
abstract class StdMsg extends Equatable {
  /// Default empty constructor to allow the existance of the factory method.
  StdMsg();

  /// Allows to serialize this object into a JSON map.
  Map<String, dynamic> asJson();

  /// Validates this message. If something is wrong within it, returns
  /// the exception to be thrown.
  Exception validate();

  /// Factory method that is defined in order to allow proper message
  /// deserialization.
  factory StdMsg.fromJson(Map<String, dynamic> json) {
    return Codec.deserializeMsg(json);
  }

  /// Method that allows any StdMsg implementation to be serialized properly.
  Map<String, dynamic> toJson() {
    return Codec.serializeMsg(this);
  }
}
