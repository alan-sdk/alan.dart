import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:test/test.dart';

void main() {
  test('Transaction is built correctly', () {
    final message = bank.MsgSend.create();
    message.fromAddress = 'cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9';
    message.toAddress = 'cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k';
    message.amount.add(Coin.create()
      ..denom = 'uatom'
      ..amount = '100');

    final builder = TxBuilder.create();
    builder.setMsgs([message]);
    builder.setGasLimit(200000.toInt64());

    // Create the transaction by hand
    final body = TxBody();
    body.messages.add(Codec.serialize(message));

    final authInfo = AuthInfo();
    authInfo.fee = Fee()..gasLimit = fixnum.Int64(200000);

    final expected = Tx()
      ..body = body
      ..authInfo = authInfo;

    // Verify the transaction matches
    expect(builder.getTx(), expected);
  });
}
