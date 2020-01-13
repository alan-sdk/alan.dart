import 'package:alan/alan.dart';
import 'package:test/test.dart';

import 'package:alan/models/export.dart';

void main() {
  test('MsgSend is built correctly', () {
    final message = MsgSend(
      fromAddress: "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
      toAddress: "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
      amount: [StdCoin(denom: "uatom", amount: "100")],
    );

    expect(Codec.serializeMsg(message), {
      "type": "cosmos-sdk/MsgSend",
      "value": {
        "from_address": "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
        "to_address": "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
        "amount": [
          {"amount": "100", "denom": "uatom"}
        ]
      }
    });
  });
}
