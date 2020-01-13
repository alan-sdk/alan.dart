import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sacco/sacco.dart';

/// Allows to easily retrieve the data of an account based on the information
/// contained inside a given [Wallet].
class NodeInfoRetrieval {
  static var client = http.Client();

  /// Reads the node_info endpoint and retrieves data from it.
  static Future<NodeInfo> getNodeInfo(Wallet wallet) async {
    // Build the URL
    final endpoint = "${wallet.networkInfo.lcdUrl}/node_info";

    // Get the server response
    final response = await client.get(endpoint);
    if (response.statusCode != 200) {
      throw Exception(
        "Expected status code 200 but got ${response.statusCode} - ${response.body}",
      );
    }

    // Parse the data
    var json = jsonDecode(response.body) as Map<String, dynamic>;
    return NodeInfoResponse.fromJson(json).nodeInfo;
  }
}
