import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:alan/proto/cosmos/tx/v1beta1/export.dart' as tx;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../common.dart';
import 'tx_sender_test.mocks.dart';

@GenerateMocks([tx.ServiceClient])
void main() {
  late tx.ServiceClient client;
  late TxSender sender;

  setUp(() {
    client = MockServiceClient();
    sender = TxSender(client: client);
  });

  test('Signed transaction is broadcast properly', () async {
    final response = TxResponse()
      ..height = fixnum.Int64(0)
      ..txhash =
          '8B95B0F8FB358833A5CC1C3251A663C121CF3F43F6AF8540DCBB32E2FC502462'
      ..rawLog = '[]';

    // Crete the transaction and send it
    final message = bank.MsgSend.create();
    message.fromAddress = 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9';
    message.toAddress = 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k';
    message.amount.add(Coin.create()
      ..denom = 'uatom'
      ..amount = '100');

    final builder = TxBuilder.create();
    builder.setMsgs([message]);
    builder.setGasLimit(200000.toInt64());
    final tx = builder.getTx();

    // Mock the service
    final req = BroadcastTxRequest()
      ..mode = BroadcastMode.BROADCAST_MODE_SYNC
      ..txBytes = DefaultTxConfig.create().txEncoder()(tx);
    when(client.broadcastTx(req)).thenAnswer((_) {
      final broadcastResponse = BroadcastTxResponse()..txResponse = response;
      return MockResponseFuture.value(broadcastResponse);
    });

    final result = await sender.broadcastTx(tx);
    expect(result, response);
  });
}
