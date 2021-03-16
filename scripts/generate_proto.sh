#!/usr/bin/env bash

set -eo pipefail

BUILD=.build
mkdir -p "$BUILD"

OUT=lib/proto
mkdir -p "$OUT"

# Download the Google APIs types
GOOGLEAPIS_ZIP="$BUILD/googleapis.zip"
wget -O "$GOOGLEAPIS_ZIP" https://github.com/googleapis/googleapis/archive/master.zip
unzip "$GOOGLEAPIS_ZIP" -d "$BUILD/" && rm "$GOOGLEAPIS_ZIP"
GOOGLEAPIS="$BUILD/googleapis-master"

# Download Protobuf
PROTOBUF_ZIP="$BUILD/protobuf.zip"
wget -O "$PROTOBUF_ZIP" https://github.com/protocolbuffers/protobuf/archive/master.zip
unzip "$PROTOBUF_ZIP" -d "$BUILD/" && rm "$PROTOBUF_ZIP"
PROTOBUF="$BUILD/protobuf-master"

# Generate the needed filesfic
mkdir -p "$OUT"
PROTOC="protoc --dart_out=grpc:$OUT -I$PROTOBUF/src -I$GOOGLEAPIS"
$PROTOC $GOOGLEAPIS/google/logging/v2/logging.proto
$PROTOC $GOOGLEAPIS/google/logging/v2/log_entry.proto
$PROTOC $GOOGLEAPIS/google/logging/type/log_severity.proto
$PROTOC $GOOGLEAPIS/google/logging/type/http_request.proto
$PROTOC $GOOGLEAPIS/google/api/monitored_resource.proto
$PROTOC $GOOGLEAPIS/google/api/label.proto
$PROTOC $GOOGLEAPIS/google/api/launch_stage.proto
$PROTOC $GOOGLEAPIS/google/rpc/status.proto
$PROTOC $PROTOBUF/src/google/protobuf/any.proto
$PROTOC $PROTOBUF/src/google/protobuf/duration.proto
$PROTOC $PROTOBUF/src/google/protobuf/empty.proto
$PROTOC $PROTOBUF/src/google/protobuf/struct.proto
$PROTOC $PROTOBUF/src/google/protobuf/timestamp.proto

# Download the Cosmos SDK
COSMOS_ZIP="$BUILD/cosmos.zip"
wget -O "$COSMOS_ZIP" https://github.com/cosmos/cosmos-sdk/archive/master.zip
unzip "$COSMOS_ZIP" -d "$BUILD/" && rm "$COSMOS_ZIP"
COSMOS="$BUILD/cosmos-sdk-master"

# Update the protoc command
PROTOC="$PROTOC -I$COSMOS/third_party/proto"

# Generate Tendermint files
TENDERMINT="$COSMOS/third_party/proto/tendermint"
$PROTOC $TENDERMINT/abci/types.proto
$PROTOC $TENDERMINT/version/types.proto
$PROTOC $TENDERMINT/crypto/keys.proto
$PROTOC $TENDERMINT/crypto/proof.proto
$PROTOC $TENDERMINT/types/types.proto
$PROTOC $TENDERMINT/types/validator.proto
$PROTOC $TENDERMINT/types/params.proto

# Generate Cosmos SDK Protobuf implementation
proto_dirs=$(find "$COSMOS/proto" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  $PROTOC \
  -I$COSMOS/proto \
  --gocosmos_out=plugins=interfacetype+grpc,\
Mgoogle/protobuf/any.proto=github.com/cosmos/cosmos-sdk/codec/types:. \
  $(find "${dir}" -maxdepth 1 -name '*.proto')
done

# Remove all .pbserver.dart files as they are unnecessary
find "$OUT" -name "*.pbserver.dart" -type f -delete

# Delete unnecessary folders
rm -rf "$GOOGLEAPIS" "$PROTOBUF" "$COSMOS" "github.com"

# Generate exports
source scripts/generate_exports.sh
