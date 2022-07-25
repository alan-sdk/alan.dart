///
//  Generated code. Do not modify.
//  source: tendermint/libs/bits/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use bitArrayDescriptor instead')
const BitArray$json = const {
  '1': 'BitArray',
  '2': const [
    const {'1': 'bits', '3': 1, '4': 1, '5': 3, '10': 'bits'},
    const {'1': 'elems', '3': 2, '4': 3, '5': 4, '10': 'elems'},
  ],
};

/// Descriptor for `BitArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bitArrayDescriptor = $convert.base64Decode('CghCaXRBcnJheRISCgRiaXRzGAEgASgDUgRiaXRzEhQKBWVsZW1zGAIgAygEUgVlbGVtcw==');
