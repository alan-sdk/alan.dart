import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/tx/v1beta1/export.dart' as tx;
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

/// Allows to query the on-chain transactions.
class TxQuerier {
  final tx.ServiceClient _client;

  TxQuerier({
    @required ClientChannel clientChannel,
  }) : _client = tx.ServiceClient(clientChannel);

  /// Queries the chain by getting the transactions at the specified [height].
  Future<List<Tx>> getTxsByHeight(
    String lcdEndpoint,
    String height,
  ) async {
    throw Exception('TODO: Implement this');
    // final result = await _client.getTxsEvent(request)
    // if (!result.isSuccessful) {
    //   return [];
    // }
    //
    // return Tx.fromJson(result.value).txs;
  }
}
