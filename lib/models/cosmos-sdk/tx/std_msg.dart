import 'package:equatable/equatable.dart';

/// Represents a standard message that can be included inside
/// a transaction.
abstract class StdMsg extends Equatable {

  /// Allows to serialize this object into a JSON map.
  Map<String, dynamic> toJson();
}
