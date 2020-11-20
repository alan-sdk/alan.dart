import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:grpc/grpc.dart';
import 'package:test/test.dart';

void main() {
  final channel = ClientChannel(
    'localhost',
    port: 9090,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  tearDown(() async {
    await channel.shutdown();
  });

  test('gRPC test', () async {
    final stub = auth.QueryClient(channel);

    final address = 'cosmos1r8vw529qrrd69wq4g0kqa6kpaufam8smljwpsy';
    final response = await stub.account(
      auth.QueryAccountRequest()..address = address,
    );

    final account = BaseAccount.fromBuffer(response.account.value);
    expect(account.address, address);
  });
}
