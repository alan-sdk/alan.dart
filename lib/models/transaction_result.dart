import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// Represents the result that is returned when broadcasting a transaction.
class TransactionResult extends Equatable {
  /// String representing the hash of the transaction.
  /// Note that this hash is always present, even if the transaction was
  /// not sent successfully.
  final String hash;

  /// Tells if the transaction was sent successfully or not.
  final bool success;

  /// Tells which error has verified if the sending was not successful.
  final TransactionError error;

  TransactionResult({
    @required this.hash,
    @required this.success,
    this.error,
  })  : assert(hash != null),
        assert(success || error != null),
        super([hash, success, error]);
}

/// Contains the data related to an error that has occurred when
/// broadcasting the transaction.
class TransactionError extends Equatable {
  final int errorCode;
  final String errorMessage;

  TransactionError({
    @required this.errorCode,
    @required this.errorMessage,
  }) : super([errorCode, errorMessage]);
}
