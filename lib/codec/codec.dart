import 'package:alan/alan.dart';
import 'package:protobuf/protobuf.dart';
import 'package:reflectable/reflectable.dart';

class Reflector extends Reflectable {
  const Reflector() : super(newInstanceCapability, subtypeQuantifyCapability);
}

const reflector = Reflector();

/// Represents the codec that is used to serialize [StdMsg] instances
/// properly during transactions signature processes.
class Codec {
  /// Serializes the given [value] into a [Map].
  static Any serialize(GeneratedMessage value) {
    return Any.pack(value, typeUrlPrefix: '');
  }
}
