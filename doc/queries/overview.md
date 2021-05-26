# Queries
Starting with `v0.40.x`, Cosmos has added the support to [gRPC](https://grpc.io/) queries and declared that REST APIs will be outdated in future versions. For this reason, Alan.dart now only uses gRPC queries in order to get the data from the chain whenever possible. Below you can find instructions on how to use this new and more efficient way of querying your chain.

## 1. Get the modules to use
### A. Using standard Cosmos modules
If you are building an application that wants to query only default Cosmos modules (eg. `x/bank`, `x/staking`, `x/slashing`, etc) you can simply use the `QueryClient` that are already contained inside Alan.dart. 

To do this, you can simply import the different already built-in modules: 

```dart
import 'package:alan/proto/cosmos/auth/v1beta1/export.dart' as auth;
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;
import 'package:alan/proto/cosmos/slashing/v1beta1/export.dart' as slashing;
...
```

As you can see, the pattern used to import a module is the following: 

```dart
import 'package:alan/proto/cosmos/<module name>/v1beta1/export.dart' as <module name>;
```

If you want to see all the supported modules, please visit the [modules page](../modules/overview.md)

### B. Using custom modules
If you want to use Alan.dart to work on a custom chain, then you will need to generate the gRPC clients starting from your custom Protobuf files. If you want to know how to do this, please reference the [custom chains](../custom-chains/overview.md) page.

## 2. Build the query clients
Once you have imported the module that you would like to use, you now need to build a `QueryClient` instance. To do this you have to: 

1. create a `ClientChannel` connection towards a gRPC endpoint;
2. build the `QueryClient` instance. 

In order to create a `ClientChannel` connection, the esiest way is to use an already existing `NetworkInfo` object:

```dart
final networkInfo = NetworkInfo.fromSingleHost(
    bech32Prefix: 'cosmos', 
    host: 'localhost',
);
final channel = networkInfo.gRPCChannel;
```

Once you have created a `ClientChannel`, you can use it to create the `QueryClient` instances:

```dart
final authClient = auth.QueryClient(channel);
final bankClient = bank.QueryClient(channel);
final stakingClient = staking.QueryClient(channel);
...
```

:::tip Reuse the same channel  
If you want to improve the efficiency of your application, you should reuse the same channel when creating different query clients. This will make sure that your application keeps alive only the bare minimum number of gRPC connections towards your node, instead of opening a lot of them. 
:::

## 3. Query the data
Once you have your `QueryClient` instance ready, you can now start querying the data. To do this, simply call the different `QueryClient` methods with the proper parameters: 

```dart
import 'package:alan/proto/cosmos/staking/v1beta1/export.dart' as staking;

// Create the pagination data
final pagination = PageRequest.create()
  ..limit = 100.toInt64()
  ..offset = 0.toInt64();

// Query the gRPC
final response = await stakingClient.validators(
  staking.QueryValidatorsRequest.create()
    ..status = status
    ..pagination = pagination,
);

// Get the validators
final validators = response.validators;
```

### Common data
A lot of the different `QueryClient` methods accept common parameters. Following you can find some examples and how to use them properly. 

#### Pagination
Most of the methods that return a list of objects accept a pagination object that describes the number of results that should be returned and the offset from which to start counting such limit. To build this object you can use the following code: 

```dart
final pagination = PageRequest.create()
  ..limit = limit.toInt64()
  ..offset = offset.toInt64();
```

Where `limit` and `offset` are `int` objects. 

As an example, to query the second page of 200 items, you can use the following pagination:

```dart
final pagination = PageRequest.create()
  ..limit = 200.toInt64()     // Return only 200 items
  ..offset = 200.toInt64();   // Skip the first 200 items (first page)
```

In general, the formula to compute the `offset` given a non-zero page number (starting from 1) should be 

```
offset = (page - 1) * limit
```

#### Height 
All queries support specifying a block height to query for. This is done using gRPC headers, and in particular the custom one named `x-cosmos-block-height`. To use this properly, you need to include this header inside a `CallOptions` object. To make this simpler, Alan.dart provides you with a helper method to build it simply: 

```dart
final heightOption = GrpcHeaders.height(100);
```

Once you created the header, you can use it simply by passing it to the query client method that you want to use: 

```dart
final response = await stakingClient.validators(request, heightOption);
```
