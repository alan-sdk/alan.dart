import 'dart:typed_data';

/// Extensions on the [BigInt] class.
extension BigIntExtension on BigInt {
  /// Converts this [BigInt] into a [Uint8List] encoding it with
  /// the big-endian encoding.
  Uint8List toUin8List() {
    // Not handling negative numbers. Decide how you want to do that.
    var number = this;
    var bytes = (number.bitLength + 7) >> 3;
    var b256 = BigInt.from(256);
    var result = Uint8List(bytes);
    for (var i = bytes - 1; i >= 0; i--) {
      result[i] = number.remainder(b256).toInt();
      number = number >> 8;
    }
    return result;
  }
}

/// Copies the [source] array into the [destination] one, starting from the
/// [start] position and ending at the [end] position.
void copy(Uint8List source, int start, int end, Uint8List destination) {
  var index = 0;
  for (var i = start; i < end; i++) {
    destination[i] = source[index];
    index++;
  }
}
