///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use netAddressDescriptor instead')
const NetAddress$json = const {
  '1': 'NetAddress',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'id'},
    const {'1': 'ip', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'ip'},
    const {'1': 'port', '3': 3, '4': 1, '5': 13, '10': 'port'},
  ],
};

/// Descriptor for `NetAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List netAddressDescriptor = $convert.base64Decode('CgpOZXRBZGRyZXNzEhYKAmlkGAEgASgJQgbi3h8CSURSAmlkEhYKAmlwGAIgASgJQgbi3h8CSVBSAmlwEhIKBHBvcnQYAyABKA1SBHBvcnQ=');
@$core.Deprecated('Use protocolVersionDescriptor instead')
const ProtocolVersion$json = const {
  '1': 'ProtocolVersion',
  '2': const [
    const {'1': 'p2p', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'p2p'},
    const {'1': 'block', '3': 2, '4': 1, '5': 4, '10': 'block'},
    const {'1': 'app', '3': 3, '4': 1, '5': 4, '10': 'app'},
  ],
};

/// Descriptor for `ProtocolVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocolVersionDescriptor = $convert.base64Decode('Cg9Qcm90b2NvbFZlcnNpb24SGQoDcDJwGAEgASgEQgfi3h8DUDJQUgNwMnASFAoFYmxvY2sYAiABKARSBWJsb2NrEhAKA2FwcBgDIAEoBFIDYXBw');
@$core.Deprecated('Use defaultNodeInfoDescriptor instead')
const DefaultNodeInfo$json = const {
  '1': 'DefaultNodeInfo',
  '2': const [
    const {'1': 'protocol_version', '3': 1, '4': 1, '5': 11, '6': '.tendermint.p2p.ProtocolVersion', '8': const {}, '10': 'protocolVersion'},
    const {'1': 'default_node_id', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'defaultNodeId'},
    const {'1': 'listen_addr', '3': 3, '4': 1, '5': 9, '10': 'listenAddr'},
    const {'1': 'network', '3': 4, '4': 1, '5': 9, '10': 'network'},
    const {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'channels', '3': 6, '4': 1, '5': 12, '10': 'channels'},
    const {'1': 'moniker', '3': 7, '4': 1, '5': 9, '10': 'moniker'},
    const {'1': 'other', '3': 8, '4': 1, '5': 11, '6': '.tendermint.p2p.DefaultNodeInfoOther', '8': const {}, '10': 'other'},
  ],
};

/// Descriptor for `DefaultNodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defaultNodeInfoDescriptor = $convert.base64Decode('Cg9EZWZhdWx0Tm9kZUluZm8SUAoQcHJvdG9jb2xfdmVyc2lvbhgBIAEoCzIfLnRlbmRlcm1pbnQucDJwLlByb3RvY29sVmVyc2lvbkIEyN4fAFIPcHJvdG9jb2xWZXJzaW9uEjkKD2RlZmF1bHRfbm9kZV9pZBgCIAEoCUIR4t4fDURlZmF1bHROb2RlSURSDWRlZmF1bHROb2RlSWQSHwoLbGlzdGVuX2FkZHIYAyABKAlSCmxpc3RlbkFkZHISGAoHbmV0d29yaxgEIAEoCVIHbmV0d29yaxIYCgd2ZXJzaW9uGAUgASgJUgd2ZXJzaW9uEhoKCGNoYW5uZWxzGAYgASgMUghjaGFubmVscxIYCgdtb25pa2VyGAcgASgJUgdtb25pa2VyEkAKBW90aGVyGAggASgLMiQudGVuZGVybWludC5wMnAuRGVmYXVsdE5vZGVJbmZvT3RoZXJCBMjeHwBSBW90aGVy');
@$core.Deprecated('Use defaultNodeInfoOtherDescriptor instead')
const DefaultNodeInfoOther$json = const {
  '1': 'DefaultNodeInfoOther',
  '2': const [
    const {'1': 'tx_index', '3': 1, '4': 1, '5': 9, '10': 'txIndex'},
    const {'1': 'rpc_address', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'rpcAddress'},
  ],
};

/// Descriptor for `DefaultNodeInfoOther`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defaultNodeInfoOtherDescriptor = $convert.base64Decode('ChREZWZhdWx0Tm9kZUluZm9PdGhlchIZCgh0eF9pbmRleBgBIAEoCVIHdHhJbmRleBIvCgtycGNfYWRkcmVzcxgCIAEoCUIO4t4fClJQQ0FkZHJlc3NSCnJwY0FkZHJlc3M=');
