import 'package:alan/alan.dart';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to query the x/auth module endpoints easily.
class AuthQuerier {
  final ClientChannel _channel;

  AuthQuerier({
    @required ClientChannel clientChannel,
  }) : _channel = clientChannel;

  factory AuthQuerier.build(ClientChannel channel) {
    return AuthQuerier(clientChannel: channel);
  }

  /// Reads the account endpoint and retrieves the details of the account
  /// having the given [address] from it.
  /// If no account with the specified [address] is found, returns `null`
  /// instead.
  Future<BaseAccount> getAccountData(
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
