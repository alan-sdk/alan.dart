import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

/// Contains the data returned when performing a chain query.
class RequestResult<T> extends Equatable {
  final T? value;
  final String? error;

  bool get isSuccessful => error == null;

  RequestResult({
    this.value,
    this.error,
  });

  @override
  List<Object?> get props => [value, error];
}

/// Allows to easily query the current chain state.
class QueryHelper {
  final http.Client _httpClient;

  QueryHelper({required http.Client httpClient}) : _httpClient = httpClient;

  /// Queries the chain at the given [url].
  Future<RequestResult<Map<String, dynamic>>> queryChain(
    String url,
  ) async {
    final data = await _httpClient.get(Uri.parse(url));
    if (data.statusCode != 200) {
      return RequestResult(
        error: 'Call to $url returned status code ${data.statusCode}',
      );
    }

    return RequestResult(
      value: json.decode(utf8.decode(data.bodyBytes)) as Map<String, dynamic>,
    );
  }
}
