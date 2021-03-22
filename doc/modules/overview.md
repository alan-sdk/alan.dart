# Cosmos modules
Following you can find a list of all the modules that are included inside Alan.dart, and their associated messages and queries included. 

Please note that, instead of re-writing the documentation from scratch, if nothing custom has been implemented for the module we will simply link the included messages and querier methods with the Proto files definitions from which they are generated. Such files contain an extended documentation that can be used to properly comprehend everything. 

## Included modules
### Auth
Import:  
```dart
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
```

Documentation:
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/auth/v1beta1/query.proto) 

:::tip Custom x/auth implementations  
Alan.dart comes with a couple of custom implementations for the the `x/auth` module. Particularly, if you want to deserialize a custom account type of query the details of an account easily you should check out the [`x/auth` documentation page](x/auth.md).  
:::

### Bank
Import:
```dart
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
```

Documentation:
- [Messages](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/bank/v1beta1/tx.proto)
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/bank/v1beta1/query.proto)

### Crisis
Import:
```dart
import 'package:alan/proto/cosmos/crisis/v1beta1/export.dart' as crisis;
```

Documentation:
- [Messages](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/crisis/v1beta1/tx.proto)

### Distribution
Import:
```dart
import 'package:alan/proto/cosmos/distribution/v1beta1/export.dart' as distr;
```

Documentation:
- [Messages](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/distribution/v1beta1/tx.proto)
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/distribution/v1beta1/query.proto)

### Distribution
Import:
```dart
import 'package:alan/proto/cosmos/gov/v1beta1/export.dart' as gov;
```

Documentation:
- [Messages](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/gov/v1beta1/tx.proto)
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/gov/v1beta1/query.proto)


### Mint
Import:
```dart
import 'package:alan/proto/cosmos/mint/v1beta1/export.dart' as mint;
```

Documentation:
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/mint/v1beta1/query.proto)

### Params
Import:
```dart
import 'package:alan/proto/cosmos/params/v1beta1/export.dart' as params;
```

Documentation:
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/params/v1beta1/query.proto)

### Slashing
Import:
```dart
import 'package:alan/proto/cosmos/slashing/v1beta1/export.dart' as slashing;
```

Documentation:
- [Messages](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/slashing/v1beta1/tx.proto)
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/slashing/v1beta1/query.proto)

### Staking
Import:
```dart
import 'package:alan/proto/cosmos/staking/v1beta1/export.dart' as staking;
```

Documentation:
- [Messages](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/staking/v1beta1/tx.proto)
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/staking/v1beta1/query.proto)

### Upgrade
Import:
```dart
import 'package:alan/proto/cosmos/upgrade/v1beta1/export.dart' as upgrade;
```

Documentation:
- [Querier](https://github.com/cosmos/cosmos-sdk/tree/v0.42.1/proto/cosmos/upgrade/v1beta1/query.proto)
