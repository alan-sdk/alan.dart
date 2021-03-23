import 'package:fixnum/fixnum.dart' as fixnum;

/// Extensions on the [int] class.
extension IntExtensions on int {
  fixnum.Int64 toInt64() {
    return fixnum.Int64(this);
  }
}
