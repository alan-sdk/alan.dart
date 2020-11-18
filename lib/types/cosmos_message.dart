import 'package:alan/alan.dart';

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
abstract class StdMsg extends Serializable {
  /// Default empty constructor to allow the existance of the factory method.
  StdMsg();

  /// Validates this message. If something is wrong within it, returns
  /// the exception to be thrown.
  Exception validate();

  String typeUrl();

  GeneratedMessage message();

  /// Factory method that is defined in order to allow proper message
  /// deserialization.
  factory StdMsg.fromJson(Map<String, dynamic> json) {
    return Codec.deserialize(json) as StdMsg;
  }
}
