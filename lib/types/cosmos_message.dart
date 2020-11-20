import 'package:protobuf/protobuf.dart' as pb;

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
abstract class StdMsg implements pb.GeneratedMessage {
  /// Default empty constructor to allow the existence of the factory method.
  StdMsg();

  /// Validates this message. If something is wrong within it, returns
  /// the exception to be thrown.
  Exception validate();
}
