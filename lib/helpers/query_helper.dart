import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

/// Contains the data returned when performing a chain query.
class RequestResult<T> extends Equatable {
  final T value;
  final String error;

  bool get isSuccessful => error == null;

  RequestResult({this.value, this.error})
      : assert(value != null || error != null);

  @override
  List<Object> get props => [value, error];
}

/// Allows to easily query the current chain state.
class QueryHelper {
  /// Queries the chain at the given [url].
  static Future<RequestResult<Map<String, dynamic>>> queryChain(
    String url,
  ) async {
    final httpClient = http.Client();
    final data = await httpClient.get(url);
    if (data.statusCode != 200) {
      return RequestResult(
        error: "Call to $url returned status code ${data.statusCode}",
      );
    }

    return RequestResult(value: json.decode(utf8.decode(data.bodyBytes)));
  }

  /// Queries the chain by getting the transactions at the specified [height].
  static Future<List<Transaction>> getTxsByHeight(
    String lcdEndpoint,
    String height,
  ) async {
    final result = await queryChain("$lcdEndpoint/txs?tx.height=$height");
    if (!result.isSuccessful) {
      throw Exception("Transaction at height $height not found");
    }

    return TransactionsResponse.fromJson(result.value).txs;
  }

  /// Queries the node info of the chain based on the given [lcdEndpoint].
  static Future<NodeInfo> getNodeInfo(String lcdEndpoint) async {
    final result = await queryChain("$lcdEndpoint/node_info");
    if (!result.isSuccessful) {
      throw Exception(result.error);
    }

    return NodeInfoResponse.fromJson(result.value).nodeInfo;
  }

  /// Reads the account endpoint and retrieves data from it.
  static Future<AccountData> getAccountData(
    String lcdEndpoint,
    String address,
  ) async {
    final endpoint = "${lcdEndpoint}/auth/accounts/${address}";
    final result = await queryChain(endpoint);
    if (!result.isSuccessful) {
      throw Exception(result.error);
    }

    final lcdResponse = LcdResponse.fromJson(result.value);
    return AccountDataResponse.fromJson(lcdResponse.result).accountData;
  }
}
