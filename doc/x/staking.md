# Staking module
> The staking module enables Cosmos-SDK based blockchain to support an advanced Proof-of-Stake system. In this system, holders of the native staking token of the chain can become validators and can delegate tokens to validators, ultimately determining the effective validator set for the system.
> 
> [Source](https://docs.cosmos.network/v0.40/modules/staking/)

## Supported messages
- [`MsgCreateValidator`](#msgcreatevalidator)
- [`MsgEditValidator`](#msgeditvalidator)
- [`MsgDelegate`](#msgdelegate)
- [`MsgBeginRedelegate`](#msgbeginredelegate)
- [`MsgUndelegate`](#msgundelegate)

### MsgCreateValidator
```dart
import "package:alan/alan.dart";

final message = MsgCreateValidator(
  description: ValidatorDescription(
    moniker: 'retz80',
    identity: '',
    website: '',
    securityContact: '',
    details: '',
  ),
  commission: CommissionRates(
    rate: '0.100000000000000000',
    maxRate: '0.200000000000000000',
    maxChangeRate: '0.010000000000000000',
  ),
  minSelfDelegation: '1',
  delegatorAddress: 'desmos1jwrsx60nuuzw642u7uuhceuhnxgrrl895rsnf5',
  validatorAddress: 'desmosvaloper1jwrsx60nuuzw642u7uuhceuhnxgrrl892wc8rx',
  publicKey: 'desmosvalconspub1zcjduepqgztfagxazg9p2kz3sshmc4f909pd66cwuhmyhuw6un70hsvmw98sz6yucv',
  value: Coin(
    denom: 'udaric',
    amount: '1000000',
  ),
);
```

### MsgEditValidator
```dart
import "package:alan/alan.dart";

final message = MsgEditValidator(
  description: ValidatorDescription(
    moniker: '[do-not-modify]',
    identity: 'BE448F9ECAB40ABE',
    website: 'https://inchain.works/',
    securityContact: '[do-not-modify]',
    details: '[do-not-modify]',
  ),
  validatorAddress: 'desmosvaloper17xf8f0ly5evhawvfz2q9u4pvpjq3spfmmr4xaz',
  commissionRate: null,
  minSelfDelegation: null,
);
```

### MsgDelegate
```dart
import "package:alan/alan.dart";

final message = MsgDelegate(
  delegatorAddress: 'desmos1lzynvemltcx4kr6m6fc7w4ag8suulntgnjjw5s',
  validatorAddress: 'desmosvaloper1lzynvemltcx4kr6m6fc7w4ag8suulntgdl667z',
  amount: Coin(denom: 'udaric', amount: '10000000'),
);
```

### MsgBeginRedelegate
```dart
import "package:alan/alan.dart";

final message = MsgBeginRedelegate(
  delegatorAddress: 'cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k',
  validatorSourceAddress: 'cosmosvaloper10e4vsut6suau8tk9m6dnrm0slgd6npe3jx5xpv',
  validatorDestinationAddress: 'cosmosvaloper1qaa9zej9a0ge3ugpx3pxyx602lxh3ztqgfnp42',
  amount: Coin(denom: 'uatom', amount: '100000'),
);
```

### MsgUndelegate
```dart
import "package:alan/alan.dart";

final message = MsgUndelegate(
  delegatorAddress: 'cosmos1tnc2aakfk2nn7y6k3nm5et885ca68mkm4nshhk',
  validatorAddress: 'cosmosvaloper14kn0kk33szpwus9nh8n87fjel8djx0y070ymmj',
  amount: Coin(denom: 'uatom', amount: '1001059'),
);
```

## Supported queries
- [Validators list](#validators-list)
- [Validator details](#validator-details)
- [Validator delegations](#validator-delegations)
- [Validator unbonding delegations](#validator-unbonding-delegations)
- [Delegator delegations](#delegator-delegations)
- [Delegator unbonding delegations](#delegator-unbonding-delegations)
- [Delegator validators](#delegator-validators)
- [Delegation between delegator and validator](#delegation-between-delegator-and-validator)
- [Unbonding delegations between delegator and validator](#unbonding-delegation-between-delegator-and-validator)
- [Pool](#pool)
- [Parameters](#parameters)

### Validators list
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final validators = await querier.getValidators(lcdEndpoint);
``` 

### Validator details
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final validator = await querier.getValidator(
  lcdEndpoint, 
  "cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3",
);
``` 

### Validator delegations
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final delegations = await querier.getValidatorDelegations(
  lcdEndpoint, 
  "cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3",
);
``` 

### Validator unbonding delegations
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final delegations = await querier.getValidatorUnbondingDelegations(
  lcdEndpoint, 
  "cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3",
);
``` 

### Delegator delegations
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final delegations = await querier.getDelegatorDelegations(
  lcdEndpoint, 
  "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
);
``` 

### Delegator unbonding delegations
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final delegations = await querier.getDelegatorUnbondingDelegations(
  lcdEndpoint, 
  "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
);
``` 

### Delegator validators
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final validators = await querier.getDelegatorValidators(
  lcdEndpoint, 
  "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
);
``` 

### Delegation between delegator and validator
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final delegation = await querier.getDelegationBetweenDelegatorAndValidator(
  lcdEndpoint, 
  "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
  "cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3",
);
```

### Unbonding Delegation between delegator and validator
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final delegations = await querier.getUnbondingDelegationBetweenDelegatorAndValidator(
  lcdEndpoint, 
  "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
  "cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3",
);
```

### Redelegations
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final redelegations = await querier.getRedelegations(
  lcdEndpoint, 
  delegatorAddress: "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
  sourceValidatorAddress: "cosmosvaloper1tflk30mq5vgqjdly92kkhhq3raev2hnz6eete3",
);
```

### Pool
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final pool = await querier.getPool(lcdEndpoint);
```

### Parameters
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = StakingQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final pool = await querier.getParameters(lcdEndpoint);
```
