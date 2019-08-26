# Sacco
Sacco, what composes a [Borsellino](https://github.com/commercionetwork/borsellino), is a Dart package that allows
to easily perform some operations related to the Cosmos ecosystem. This includes: 

1. Creating an HD Wallet. 
2. Creating a transaction. 
3. Signing a transaction. 
4. Broadcasting a transaction.  

## Development
In order to speed up the development process, we used [build_runner](https://dart.dev/tools/build_runner) and 
[json_serializable](https://pub.dev/packages/json_serializable) to easily generate JSON representations of some data.  
While this is extremely useful and helps us reduce the development times, it also means that if you want to start 
playing with this code base you need to perform the following command: 

```shell
flutter pub run build_runner build
```

Once the command has successfully run, you will be able to do whatever you prefer.