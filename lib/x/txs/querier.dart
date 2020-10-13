import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to query the on-chain transactions.
class TxQuerier extends QueryHelper {
  TxQuerier({
    @required http.Client httpClient,
  }) : super(httpClient: httpClient);

  /// Queries the chain by getting the transactions at the specified [height].
  Future<List<Transaction>> getTxsByHeight(
    String lcdEndpoint,
    String height,
  ) async {
    final result = await queryChain('$lcdEndpoint/txs?tx.height=$height');
    if (!result.isSuccessful) {
      return [];
    }

    return TransactionsResponse.fromJson(result.value).txs;
  }
}
