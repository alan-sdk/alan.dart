# Queries
In order to query the chain, you can use the `QueryHelper` class. 

This contains the following method: 

```dart
/// Queries the chain at the given [url].
Future<RequestResult<Map<String, dynamic>>> queryChain(String url)
```

The returned result is wrapped inside the `RequestResult` object. You can check if the query was successful using the `isSuccessful` method, or checking the `value` and `error` fields. 

## Example
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final queryHelper = QueryHelper(httpClient: http.Client());

final url = "http://localhost:1317/node_info";
final result = queryHelper.queryChain(url);
if (result.isSuccessful) {
  print('Query was successful with result ${result.value}');
} else {
  print('Query errored with error ${result.error}');
}
```

## Modules
Usually, each module present inside the `lib/x` folder implements its own instance of `QueryHelper` allowing you to easily query the data regarding that module.  

To know more about module-based query helpers, read the [modules documentation](doc/x/overview.md).
