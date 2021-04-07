import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:grpc/grpc.dart' as grpc;

/// Allows to query the x/auth module endpoints easily.
class AuthQuerier {
  final auth.QueryClient _client;

  AuthQuerier({required auth.QueryClient client}) : _client = client;

  /// Builds a new [AuthQuerier] given a [ClientChannel].
  factory AuthQuerier.build(grpc.ClientChannel channel) {
    return AuthQuerier(client: auth.QueryClient(channel));
  }

  /// Reads the account endpoint and retrieves the details of the account
  /// having the given [address] from it.
  /// If no account with the specified [address] is found, returns `null`
  /// instead.
  Future<AccountI?> getAccountData(String address) async {
    final request = auth.QueryAccountRequest.create()..address = address;

    final response = await _client.account(request);
    if (!response.hasAccount()) {
      return null;
    }

    final account = Codec.deserializeAccount(response.account);
    return account.address == address ? account : null;
  }
}
