import 'dart:typed_data';

/// Copies the [source] array into the [destination] one, starting from the
/// [start] position and ending at the [end] position.
void copy(Uint8List source, int start, int end, Uint8List destination) {
  var index = 0;
  for (var i = start; i < end; i++) {
    destination[i] = source[index];
    index++;
  }
}
