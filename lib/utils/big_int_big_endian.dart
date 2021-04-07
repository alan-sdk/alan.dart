/// Helper class used internally to encode/decode BigInt values in Big-Endian
/// because of the breaking changes inside Pointycastle 2.0.1
/// See: https://github.com/bcgit/pc-dart/blob/master/CHANGELOG.md#version-201-2021-01-16
class BigIntBigEndian {
  /// Decode a BigInt from bytes in big-endian encoding.
  static BigInt decode(List<int> bytes) {
    var result = BigInt.from(0);
    for (var i = 0; i < bytes.length; i++) {
      result += BigInt.from(bytes[bytes.length - i - 1]) << (8 * i);
    }
    return result;
  }
}
