import 'package:alan/alan.dart';
import 'package:protobuf/protobuf.dart';

/// Represents the codec that is used to serialize [StdMsg] instances
/// properly during transactions signature processes.
class Codec {
  /// Serializes the given [value] into a [Map].
  static Any serialize(GeneratedMessage value) {
    return Any.pack(value, typeUrlPrefix: '');
  }
}
