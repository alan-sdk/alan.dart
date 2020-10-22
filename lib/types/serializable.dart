import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector() : super(newInstanceCapability, subtypeQuantifyCapability);
}

const reflector = Reflector();

/// Represents a generic serializable object.
///
/// To be properly serialized as a JSON object, the [asJson] method must
/// be implemented.
///
/// To be properly deserialized, a factory method defined as follows must be
/// implemented:
///
/// ```dart
/// factory <ClassName>.fromJson(Map<String, dynamic> json)
/// ```
///
/// Not implementing one of the two methods above will result in an error
/// during either the serialization or deserialization.
abstract class Serializable extends Equatable {
  /// Default empty constructor to allow the existance of the factory method.
  Serializable();

  /// Allows to serialize this object into a JSON map.
  Map<String, dynamic> asJson();

  /// Factory method that is defined in order to allow a proper deserialization.
  factory Serializable.fromJson(Map<String, dynamic> json) {
    return Codec.deserialize(json);
  }

  /// Method that allows any Serializable implementation to be serialized
  /// properly.
  Map<String, dynamic> toJson() {
    return Codec.serialize(this);
  }
}
