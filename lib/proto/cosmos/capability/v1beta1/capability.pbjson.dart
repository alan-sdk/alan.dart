///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use capabilityDescriptor instead')
const Capability$json = const {
  '1': 'Capability',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 4, '8': const {}, '10': 'index'},
  ],
  '7': const {},
};

/// Descriptor for `Capability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List capabilityDescriptor = $convert.base64Decode('CgpDYXBhYmlsaXR5EiYKBWluZGV4GAEgASgEQhDy3h8MeWFtbDoiaW5kZXgiUgVpbmRleDoEmKAfAA==');
@$core.Deprecated('Use ownerDescriptor instead')
const Owner$json = const {
  '1': 'Owner',
  '2': const [
    const {'1': 'module', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'module'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'name'},
  ],
  '7': const {},
};

/// Descriptor for `Owner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownerDescriptor = $convert.base64Decode('CgVPd25lchIpCgZtb2R1bGUYASABKAlCEfLeHw15YW1sOiJtb2R1bGUiUgZtb2R1bGUSIwoEbmFtZRgCIAEoCUIP8t4fC3lhbWw6Im5hbWUiUgRuYW1lOgiYoB8AiKAfAA==');
@$core.Deprecated('Use capabilityOwnersDescriptor instead')
const CapabilityOwners$json = const {
  '1': 'CapabilityOwners',
  '2': const [
    const {'1': 'owners', '3': 1, '4': 3, '5': 11, '6': '.cosmos.capability.v1beta1.Owner', '8': const {}, '10': 'owners'},
  ],
};

/// Descriptor for `CapabilityOwners`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List capabilityOwnersDescriptor = $convert.base64Decode('ChBDYXBhYmlsaXR5T3duZXJzEj4KBm93bmVycxgBIAMoCzIgLmNvc21vcy5jYXBhYmlsaXR5LnYxYmV0YTEuT3duZXJCBMjeHwBSBm93bmVycw==');
