#!/usr/bin/env bash

set -eo pipefail
mkdir -p lib/proto
rm -r lib/proto/**

proto_dirs=$(find ./proto -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  protoc --proto_path=proto --dart_out=lib/proto $(find "${dir}" -maxdepth 1 -name '*.proto')
done

# Generate the export.dart file
#generated_dirs=$(find ./lib/proto -path -prune -o -name '*.pb.dart' -print0 | xargs -0 -n1 dirname | sort | uniq)
#for dir in $generated_dirs; do
#  files=$(find "${dir}" -maxdepth 1 -name "*.pb.dart")
#  for file in $files; do
#    path="${file#"./lib/proto/"}"
#    echo "export '${path}';" >> ./lib/proto/export.dart;
#  done
#done
