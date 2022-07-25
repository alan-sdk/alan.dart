///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/ibc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgIBCSendDescriptor instead')
const MsgIBCSend$json = const {
  '1': 'MsgIBCSend',
  '2': const [
    const {'1': 'channel', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'channel'},
    const {'1': 'timeout_height', '3': 4, '4': 1, '5': 4, '8': const {}, '10': 'timeoutHeight'},
    const {'1': 'timeout_timestamp', '3': 5, '4': 1, '5': 4, '8': const {}, '10': 'timeoutTimestamp'},
    const {'1': 'data', '3': 6, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `MsgIBCSend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgIBCSendDescriptor = $convert.base64Decode('CgpNc2dJQkNTZW5kEjMKB2NoYW5uZWwYAiABKAlCGfLeHxV5YW1sOiJzb3VyY2VfY2hhbm5lbCJSB2NoYW5uZWwSQAoOdGltZW91dF9oZWlnaHQYBCABKARCGfLeHxV5YW1sOiJ0aW1lb3V0X2hlaWdodCJSDXRpbWVvdXRIZWlnaHQSSQoRdGltZW91dF90aW1lc3RhbXAYBSABKARCHPLeHxh5YW1sOiJ0aW1lb3V0X3RpbWVzdGFtcCJSEHRpbWVvdXRUaW1lc3RhbXASEgoEZGF0YRgGIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use msgIBCCloseChannelDescriptor instead')
const MsgIBCCloseChannel$json = const {
  '1': 'MsgIBCCloseChannel',
  '2': const [
    const {'1': 'channel', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'channel'},
  ],
};

/// Descriptor for `MsgIBCCloseChannel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgIBCCloseChannelDescriptor = $convert.base64Decode('ChJNc2dJQkNDbG9zZUNoYW5uZWwSMwoHY2hhbm5lbBgCIAEoCUIZ8t4fFXlhbWw6InNvdXJjZV9jaGFubmVsIlIHY2hhbm5lbA==');
