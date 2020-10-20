import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromException works properly with exception', () {
    final result = TransactionResult.fromException(
      Exception('This is an exception'),
    );

    final expected = TransactionResult(
      response: null,
      error: TransactionError(
        errorCode: -1,
        errorMessage: Exception('This is an exception').toString(),
      ),
    );
    expect(result, expected);
  });

  test('toString works properly', () {
    final successful = TransactionResult(
      response: null,
    );
    expect(
      successful.toString(),
      'TransactionResult { success: true, hash: test, error: null }',
    );

    final error = TransactionResult(
      response: null,
      error: TransactionError(
        errorCode: -1,
        errorMessage: Exception('This is an exception').toString(),
      ),
    );
    expect(
      error.toString(),
      'TransactionResult { success: false, hash: , error: TransactionError { errorCode: -1, errorMessage: Exception: This is an exception } }',
    );
  });
}
