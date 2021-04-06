import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;

/// Allows to query a full node for its information.
class NodeQuerier extends QueryHelper {
  NodeQuerier._({
    required http.Client httpClient,
  }) : super(httpClient: httpClient);

  factory NodeQuerier.build(http.Client httpClient) {
    return NodeQuerier._(httpClient: httpClient);
  }

  /// Queries the node info of the chain based on the given [lcdEndpoint].
  Future<NodeInfo> getNodeInfo(String lcdEndpoint) async {
    final result = await queryChain('$lcdEndpoint/node_info');
    if (!result.isSuccessful) {
      throw Exception(result.error);
    }

    final value = result.value as Map<String, dynamic>;
    return NodeInfoResponse.fromJson(value).nodeInfo;
  }
}
