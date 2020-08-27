import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  test('fromException works properly with exception', () {
    final result = TransactionResult.fromException(
      Exception('This is an exception'),
    );
    expect(result.success, isFalse);
    expect(result.error, isNotNull);
    expect(
        result.error,
        equals(
          TransactionError(
            errorCode: -1,
            errorMessage: Exception('This is an exception').toString(),
          ),
        ));
  });
}
