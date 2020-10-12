import 'dart:collection';

/// Allows to easily sort a [Map] by its keys.
class MapSorter {
  /// Takes the given [value] and orders each one of the contained
  /// items that are present inside it by calling [_encodeValue].
  static List<dynamic> _encodeList(dynamic value) {
    final result = <dynamic>[];
    for (var item in value.cast<dynamic>()) {
      result.add(_encodeValue(item));
    }
    return result;
  }

  /// Takes a generic [value] and returns its sorted representation.
  /// * If it is a map, [sort] is called.
  /// * If it is a list, [_encodeList] is called.
  /// * Otherwise, the same value is returned.
  static dynamic _encodeValue(dynamic value) {
    if (value is Map<String, dynamic>) {
      return sort(value);
    } else if (value is List) {
      return _encodeList(value);
    }
    return value;
  }

  /// Takes the given [map] and orders its values based on their keys.
  /// Returns the sorted map.
  static Map<String, dynamic> sort(Map<String, dynamic> map) {
    // Get the sorted keys
    final sortedKeys = map.keys.toList();
    sortedKeys.sort();

    // Sort each value
    final result = SplayTreeMap<String, dynamic>();
    sortedKeys.forEach((key) {
      result[key] = _encodeValue(map[key]);
    });

    return result;
  }
}
