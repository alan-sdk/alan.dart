import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to query the x/auth module endpoints easily.
class AuthQuerier extends QueryHelper {
  AuthQuerier({
    @required http.Client httpClient,
  }) : super(httpClient: httpClient);

  factory AuthQuerier.build(http.Client httpClient) {
    return AuthQuerier(httpClient: httpClient);
  }

  /// Reads the account endpoint and retrieves the details of the account
  /// having the given [address] from it.
  /// If no account with the specified [address] is found, returns `null`
  /// instead.
  Future<CosmosAccount> getAccountData(
    String lcdEndpoint,
    String address,
  ) async {
    final endpoint = '${lcdEndpoint}/auth/accounts/${address}';
    final result = await queryChain(endpoint);
    if (!result.isSuccessful) {
      return null;
    }

    final lcdResponse = LcdResponse.fromJson(result.value);
    final response = AccountResponse.fromJson(
      lcdResponse.result as Map<String, dynamic>,
    );
    final account = response.accountData;

    // If the account does not exist on chain, then an empty account data
    // object might be returned instead
    return account?.address == address ? account : null;
  }
}
