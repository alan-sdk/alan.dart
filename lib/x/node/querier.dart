import 'package:alan/proto/cosmos/base/tendermint/v1beta1/export.dart'
    as tendermint;
import 'package:alan/proto/tendermint/p2p/types.pb.dart';
import 'package:grpc/grpc.dart' as grpc;

/// Allows to query a full node for its information.
class NodeQuerier {
  final tendermint.ServiceClient _client;

  NodeQuerier({required tendermint.ServiceClient client}) : _client = client;

  /// Builds a new [NodeQuerier] given a [ClientChannel].
  factory NodeQuerier.build(grpc.ClientChannel channel) {
    return NodeQuerier(client: tendermint.ServiceClient(channel));
  }

  /// Queries the node info of the chain based on the given [lcdEndpoint].
  Future<DefaultNodeInfo> getNodeInfo() async {
    final request = tendermint.GetNodeInfoRequest();

    final response = await _client.getNodeInfo(request);
    if (!response.hasDefaultNodeInfo()) {
      throw Exception('Invalid node info response');
    }

    return response.defaultNodeInfo;
  }
}
