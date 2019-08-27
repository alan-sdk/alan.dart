import 'package:test/test.dart';

import 'package:sacco/models/export.dart';

void main() {
  test('MsgSend is built correctly', () {
    final message = MsgSend(
      fromAddress: "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
      toAddress: "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
      amount: [StdCoin(denom: "uatom", amount: "100")],
    );

    expect(message.type, "cosmos-sdk/MsgSend");
    expect(message.value, {
      "from_address": "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
      "to_address": "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
      "amount": [
        {"amount": "100", "denom": "uatom"}
      ]
    });
    expect(message.toJson(), {
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
