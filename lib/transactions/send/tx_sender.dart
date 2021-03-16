import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/tx/v1beta1/export.dart' as tx;
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

/// Allows to easily send a [StdTx] using the data contained inside the
/// specified [Wallet].
class TxSender {
  final tx.ServiceClient _client;

  TxSender._({
    @required ClientChannel clientChannel,
  }) : _client = tx.ServiceClient(clientChannel);

  factory TxSender.build(ClientChannel channel) {
    return TxSender._(clientChannel: channel);
  }

  /// Broadcasts the given [stdTx] using the info contained
  /// inside the given [wallet].
  /// Returns the hash of the transaction once it has been send, or throws an
  /// exception if an error is risen during the sending.
  Future<TxResponse> broadcastStdTx(
    Tx stdTx, {
    TxConfig config,
    BroadcastMode mode = BroadcastMode.BROADCAST_MODE_ASYNC,
  }) async {
    config ??= DefaultTxConfig.create();
    final encoder = config.txEncoder();

    final request = BroadcastTxRequest()
      ..mode = mode
      ..txBytes = encoder(stdTx);

    final response = await _client.broadcastTx(request);
    return response.txResponse;
  }
}
