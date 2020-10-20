import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// Represents the result that is returned when broadcasting a transaction.
class TransactionResult extends Equatable {
  /// The raw response retrieved from the server
  final TxResponse response;

  /// Tells which error has verified if the sending was not successful.
  /// Please note that this field is going to be:
  /// - `null` if [success] is `true`.
  /// - a valid [TransactionError] if [success] is `false`
  final TransactionError error;

  TransactionResult({
    @required this.response,
    this.error,
  });

  factory TransactionResult.successful(TxResponse response) {
    return TransactionResult(response: response);
  }

  factory TransactionResult.fromException(dynamic exception) {
    return TransactionResult(
      response: null,
      error: TransactionError(
        errorCode: -1,
        errorMessage: exception.toString(),
      ),
    );
  }

  /// Tells if the transaction was sent successfully or not.
  bool get success => error != null;

  @override
  List<Object> get props {
    return [error, response];
  }

  @override
  String toString() {
    return 'TransactionResult { '
        'response: $response, '
        'error: $error '
        '}';
  }
}

/// Contains the data related to an error that has occurred when
/// broadcasting the transaction.
class TransactionError extends Equatable {
  final int errorCode;
  final String errorMessage;

  TransactionError({
    @required this.errorCode,
    @required this.errorMessage,
  });

  @override
  List<Object> get props {
    return [errorCode, errorMessage];
  }

  @override
  String toString() {
    return 'TransactionError { '
        'errorCode: $errorCode, '
        'errorMessage: $errorMessage '
        '}';
  }
}
