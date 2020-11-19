# Bank module
>The bank module is responsible for handling multi-asset coin transfers between accounts and tracking special-case pseudo-transfers which must work differently with particular kinds of accounts (notably delegating/undelegating for vesting accounts). It exposes several interfaces with varying capabilities for secure interaction with other modules which must alter user balances.
> 
> [Source](https://docs.cosmos.network/v0.40/modules/bank/)

## Supported messages
### MsgSend
```dart
import "package:alan/alan.dart";

final message = MsgSend(
  fromAddress: "cosmos1huydeevpz37sd9snkgul6070mstupukw00xkw9",
  toAddress: "cosmos12lla7fg3hjd2zj6uvf4pqj7atx273klc487c5k",
  amount: [Coin(denom: "uatom", amount: "100")],
);
```
