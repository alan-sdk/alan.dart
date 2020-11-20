import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

/// Allows to query the x/auth module endpoints easily.
class AuthQuerier {
  final auth.QueryClient _client;

  AuthQuerier._({
    @required ClientChannel clientChannel,
  }) : _client = auth.QueryClient(clientChannel);

  factory AuthQuerier.build(ClientChannel channel) {
    return AuthQuerier._(clientChannel: channel);
  }

  /// Reads the account endpoint and retrieves the details of the account
  /// having the given [address] from it.
  /// If no account with the specified [address] is found, returns `null`
  /// instead.
  Future<BaseAccount> getAccountData(String address) async {
    final response = await _client.account(
      auth.QueryAccountRequest.create()..address = address,
    );

    if (!response.hasAccount()) {
      return null;
    }

    // TODO: Use codec here
    final account = BaseAccount.fromBuffer(response.account.value);
    return account.address == address ? account : null;
  }
}
