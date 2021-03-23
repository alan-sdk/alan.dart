# Auth custom operations
In order to implement frequent operations that are performed on the `x/auth` module, Alan.dart comes with a couple of utility methods related to such module. 

## Query the details of an account
The first utility class that Alan.dart has related to the `x/auth` module is the `AuthQuerier` class. This is a simple wrapper around the `auth.QueryClient` class that allows to query the details of an account more easily. 

By default, Cosmos returns the accounts as instances of the `Any`. Such instances should then be de-serialized by reading the `typeUrl` property and decide what account implementation they are referring to. 

In order to avoid having you re-write this logic every time, we implemented the `AuthQuerier.getAccountData` method that simply returns an `AccountI` instance. This is an interface that is implemented by all the classes representing an account and contains all the getters to access common data. 

```dart
import 'package:alan/alan.dart';

final querier = AuthQuerier.create(channel);
final account = await querier.getAccountData(address);
```

:::warning Querying a custom account  
If you are trying to query the chain for an account that is implemented using a custom type, you should first [register your account type](#working-with-custom-account-implementations) in order to avoid any error such as: 

```
Account of type XXXXX cannot be deserialized properly.
Please register this type using Codec.registerAccountImpl
```
:::

## Working with custom account implementations
If the blockchain you are working with has some custom `AccountI` implementations that you might want to work with (eg. query from the chain), you must register those types using the `Codec.registerAccountImpl` method. 

Such method takes as input an `AccountImpl` instance, which must contain a `typeUrl` of the account implementation as well as a reference to a static method that can be called to deserialize such account instance from an `Any`. 

Note that when you want to register a custom account type, it must implement the `AccountI` interface. The easiest way to do this is to create a wrapper around an already existing Proto message that represents an account:

```dart
/// IBCAccount is a wrapper around an [ibc.IBCAccount] Proto message that allows to 
/// implement the [AccountI] interface properly.
class IBCAccount implements AccountI {
  final ibc.IBCAccount account;

  @override
  Int64 get accountNumber {
    return account.accountNumber;
  }

  @override
  String get address {
    return account.address;
  }

  @override
  Any get pubKey {
    return account.pubKey;
  }

  @override
  Int64 get sequence {
    return account.sequence;
  }
  
  IBCAccount(ibc.IBCAccount account): account = account;
  
  static IBCAccount fromAny(Any any) {
    final account = ibc.IBCAccount.fromBuffer(any.value);
    return IBCAccount(account);
  }
}
```

Once you have created your custom class, you can now register it as an `AccountI` implementation: 

```dart
final implementation = AccountImpl('IBCAccount', IBCAccount.fromAny);
Codec.registerAccountImpl(implementation);
```

From this point onwards, you will be able to deserialize the account properly: 

```dart
Codec.deserializeAccount(any);
```

:::warning Querying a custom account  
Since this method is also called when [querying an account](#query-the-details-of-an-account), you should call it before querying the details of an account that is represented by a custom type in order to avoid any error.  
:::
