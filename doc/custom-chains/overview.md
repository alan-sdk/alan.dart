# Working with custom chains 
Given Alan.dart now works primarily based on Protobuf, in order to use it with a custom chain you will need to generate the proper files. This will make sure you are able to create transactions containing custom messages or to query the chain for custom modules. Following, you can find how to do this.

## Generating custom Protobuf implementations
### 1. Get the `.proto` files
The first thing you have to do is to get the `.proto` files necessary to compile everything. Most custom chains include those files into two separate folders: `proto` and `third_party`:

- inside the `proto` folder you can usually find the various `.proto` files that are used to generate custom messages, queriers, etc;

- inside the `third_party`, instead, you can find all the other `.proto` files that are taken from third party projects (such as Protobuf, Google, Cosmos, etc) and are still required to compile the custom ones.  

That being said, what you want to do is get those two folders (`proto` and `third_party`) and put them into your project root folder. As an example, this is the folder structure of Alan.dart's root folder: 

```
Alan.dart
├── proto
│    └── cosmos
│         ├── auth
│         ├── bank
│         ├── base
│         ├── capability
│         ├── crisis
│         ├── crypto
│         ├── distribution
│         ├── evidence
│         ├── genutil
│         ├── gov
│         ├── mint
│         ├── params
│         ├── slashing
│         ├── staking
│         ├── tx
│         ├── upgrade
│         └── vesting
│
├── third_party
│    └── proto
│         ├── confio
│         ├── cosmos_proto
│         ├── gogoproto
│         ├── google
│         └── tendermint
├── ...
```

As you can see, the `proto` folder contains all the Cosmos-related `.proto` files, while the `third_party` contains all the `.proto` files needed in other to compile the Cosmos ones properly.

### 2. Generate the `.dart` files.
Now that you have your `.proto` files ready, it's time to generate the `.dart` files that will contain the classes that you will be able to use with Dart. 

To do so, the first thing you have to do is to have `protoc` installed on your machine, as well as the Dart plugin for Protobuf. If you don't have them installed, you can get them here: 
- [Protobuf compiler (`protoc`)](https://github.com/protocolbuffers/protobuf#protocol-compiler-installation)
- [Dart `protoc` plugin](https://pub.dev/packages/protoc_plugin)

Once you have them installed, you can now generate your Dart files running the following script:

```shell
# Define variables
OUT=lib/proto
PROTO=proto
THIRD_PARTY=third_party

# Generate the third party Protobuf implementations
PROTOC="protoc --dart_out=grpc:$OUT -I$THIRD_PARTY/proto"
proto_dirs=$(find "$THIRD_PARTY/proto" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  $PROTOC -I$THIRD_PARTY/proto $(find "${dir}" -maxdepth 1 -name '*.proto')
done

# Generate the Cosmos Protobuf implementation
proto_dirs=$(find "$PROTO" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  $PROTOC -I$PROTO \
  --gocosmos_out=plugins=interfacetype+grpc,\
Mgoogle/protobuf/any.proto=github.com/cosmos/cosmos-sdk/codec/types:. \
  $(find "${dir}" -maxdepth 1 -name '*.proto')
done

# Remove all .pbserver.dart files as they are unnecessary
find "$OUT" -name "*.pbserver.dart" -type f -delete
```

As you can see, this script uses three variables: 
- `OUT`, which represents the folder inside which all the `.dart` files will be put once generated;
- `PROTO`, which is the path to the `.proto` files that should be used to generate your custom types; 
- `THIRD_PARTY`, which is the folder inside which you have placed third parties' `.proto` files. 

## Build errors
It might happen that, after you have generated all your files, some errors pop up while building the project. The most commons are the ones like the following: 

```
Error when reading 'lib/proto/google/protobuf/timestamp.pb.dart': No such file or directory
import '../../google/protobuf/timestamp.pb.dart' as $3;
```

Such errors appear if you did not include all the required `.proto` files inside the `third_party` folder. In the example above, we can see that it was not possible to build the project because the `../google/protobuf/timestamp.pb.dart` file does not exist. 

To solve this problem, the easiest way is to simply download the get `.proto` file and put into the appropriate folder. In this case, we should download the `timestamp.proto` file and put inside the `third_party/proto/google/protobuf` folder:

```shell
curl https://raw.githubusercontent.com/protocolbuffers/protobuf/master/src/google/protobuf/timestamp.proto > third_party/proto/google/protobuf/timestamp.proto
```

Once we have done so, we can simply re-run our generation script and make sure that everything builds properly.

:::tip Common missing files  
The most common missing files are the ones associated with two external dependencies that are highly used inside Cosmos: Protobuf and the Google APIs. If you are missing one or more files from either of those two projects, you can find all the files here: 

- [Protobuf](https://github.com/protocolbuffers/protobuf/tree/master/src/google/protobuf)
- [Google APIs](https://github.com/googleapis/googleapis)

:::
