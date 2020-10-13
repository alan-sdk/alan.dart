# Auth module
>The auth module is responsible for specifying the base transaction and account types for an application, since the SDK itself is agnostic to these particulars. It contains the ante handler, where all basic transaction validity checks (signatures, nonces, auxiliary fields) are performed, and exposes the account keeper, which allows other modules to read, write, and modify accounts.
> 
> [Source](https://docs.cosmos.network/v0.40/modules/auth/)



## Supported queries
### Account information
```dart
import "package:http/http.dart" as http; 
import "package:alan/alan.dart"; 

final querier = AuthQuerier.build(http.Client());
final account = querier.getAccountData(
  "http://localhost:1317",
  "cosmos1vv6hruquzpty4xpks9znkw8gys5x4nsnqw9f4k",
);
```
