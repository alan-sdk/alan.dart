import 'package:alan/alan.dart';
import 'package:grpc/grpc.dart';

void main() async {
  final channel = ClientChannel(
    'localhost',
    port: 9090,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = QueryClient(channel);

  try {
    final response = await stub.account(QueryAccountRequest()
      ..address = 'cosmos1r8vw529qrrd69wq4g0kqa6kpaufam8smljwpsy');

    final account = BaseAccount.fromBuffer(response.account.value);
    print(account.writeToJson());

    print(response.account);
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
