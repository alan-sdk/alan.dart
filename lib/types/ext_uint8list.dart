import 'dart:typed_data';

/// Extension methods on the [Uint8List] class.
extension Uin8ListExt on Uint8List {
  /// Encodes this [Uint8List] to a [BigInt] using the big-endian conversion.
  BigInt toBigInt() {
    var bytes = this;
    var result = BigInt.from(0);
    for (var i = 0; i < bytes.length; i++) {
      result += BigInt.from(bytes[bytes.length - i - 1]) << (8 * i);
    }
    return result;
  }
}
