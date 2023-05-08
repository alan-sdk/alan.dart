import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/tx/v1beta1/export.dart' as tx;
import 'package:grpc/src/client/channel.dart' as CC;
import 'package:grpc/grpc_or_grpcweb.dart';

/// Allows to easily send a [StdTx] using the data contained inside the
/// specified [Wallet].
class TxSender {
  final tx.ServiceClient _client;

  TxSender({required tx.ServiceClient client}) : _client = client;

  /// Builds a new [TxSender] given a [ClientChannel].
  factory TxSender.build(GrpcOrGrpcWebClientChannel channel) {
    CC.ClientChannel cc = channel as CC.ClientChannel; 
    return TxSender(client: tx.ServiceClient(cc));
  }

  /// Builds a new [TxSender] from the given [NetworkInfo].
  factory TxSender.fromNetworkInfo(NetworkInfo info) {
    return TxSender.build(info.gRPCChannel);
  }

  /// Broadcasts the given [tx] using the info contained
  /// inside the given [wallet].
  /// Returns the hash of the transaction once it has been send, or throws an
  /// exception if an error is risen during the sending.
  Future<TxResponse> broadcastTx(
    Tx tx, {
    TxConfig? config,
    BroadcastMode mode = BroadcastMode.BROADCAST_MODE_SYNC,
  }) async {
    config ??= DefaultTxConfig.create();
    final encoder = config.txEncoder();

    final request = BroadcastTxRequest()
      ..mode = mode
      ..txBytes = encoder(tx);

    final response = await _client.broadcastTx(request);
    return response.txResponse;
  }
}
