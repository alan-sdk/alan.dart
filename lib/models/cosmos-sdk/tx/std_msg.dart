import 'package:equatable/equatable.dart';

/// Represents a standard message that can be included inside
/// a transaction.
abstract class StdMsg extends Equatable {
  /// Allows to serialize this object into a JSON map.
  Map<String, dynamic> toJson();

  /// Validates this message. If something is wrong within it, returns
  /// the exception to be thrown.
  Exception validate();
}
