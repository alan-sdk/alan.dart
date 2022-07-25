#!/usr/bin/env bash

set -eo pipefail

# Export all the files
INPUT="./lib/proto/"
proto_dirs=$(find "$INPUT" -path -prune -o -name '*.pb*.dart' -print0 | xargs -0 -n1 dirname | sort | uniq)
for dir in $proto_dirs; do
  rm -f "$dir/export.dart"

  files=$(find "${dir}" -maxdepth 1 -name '*.pb*.dart')
  for file in $files; do
    echo "export '${file#$dir/}';" >> "$dir/export.dart"
  done
done
