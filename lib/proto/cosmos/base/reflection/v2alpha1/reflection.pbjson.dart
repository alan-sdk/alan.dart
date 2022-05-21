///
//  Generated code. Do not modify.
//  source: cosmos/base/reflection/v2alpha1/reflection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use appDescriptorDescriptor instead')
const AppDescriptor$json = const {
  '1': 'AppDescriptor',
  '2': const [
    const {'1': 'authn', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.AuthnDescriptor', '10': 'authn'},
    const {'1': 'chain', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.ChainDescriptor', '10': 'chain'},
    const {'1': 'codec', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.CodecDescriptor', '10': 'codec'},
    const {'1': 'configuration', '3': 4, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.ConfigurationDescriptor', '10': 'configuration'},
    const {'1': 'query_services', '3': 5, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.QueryServicesDescriptor', '10': 'queryServices'},
    const {'1': 'tx', '3': 6, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.TxDescriptor', '10': 'tx'},
  ],
};

/// Descriptor for `AppDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appDescriptorDescriptor = $convert.base64Decode('Cg1BcHBEZXNjcmlwdG9yEkYKBWF1dGhuGAEgASgLMjAuY29zbW9zLmJhc2UucmVmbGVjdGlvbi52MmFscGhhMS5BdXRobkRlc2NyaXB0b3JSBWF1dGhuEkYKBWNoYWluGAIgASgLMjAuY29zbW9zLmJhc2UucmVmbGVjdGlvbi52MmFscGhhMS5DaGFpbkRlc2NyaXB0b3JSBWNoYWluEkYKBWNvZGVjGAMgASgLMjAuY29zbW9zLmJhc2UucmVmbGVjdGlvbi52MmFscGhhMS5Db2RlY0Rlc2NyaXB0b3JSBWNvZGVjEl4KDWNvbmZpZ3VyYXRpb24YBCABKAsyOC5jb3Ntb3MuYmFzZS5yZWZsZWN0aW9uLnYyYWxwaGExLkNvbmZpZ3VyYXRpb25EZXNjcmlwdG9yUg1jb25maWd1cmF0aW9uEl8KDnF1ZXJ5X3NlcnZpY2VzGAUgASgLMjguY29zbW9zLmJhc2UucmVmbGVjdGlvbi52MmFscGhhMS5RdWVyeVNlcnZpY2VzRGVzY3JpcHRvclINcXVlcnlTZXJ2aWNlcxI9CgJ0eBgGIAEoCzItLmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuVHhEZXNjcmlwdG9yUgJ0eA==');
@$core.Deprecated('Use txDescriptorDescriptor instead')
const TxDescriptor$json = const {
  '1': 'TxDescriptor',
  '2': const [
    const {'1': 'fullname', '3': 1, '4': 1, '5': 9, '10': 'fullname'},
    const {'1': 'msgs', '3': 2, '4': 3, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.MsgDescriptor', '10': 'msgs'},
  ],
};

/// Descriptor for `TxDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txDescriptorDescriptor = $convert.base64Decode('CgxUeERlc2NyaXB0b3ISGgoIZnVsbG5hbWUYASABKAlSCGZ1bGxuYW1lEkIKBG1zZ3MYAiADKAsyLi5jb3Ntb3MuYmFzZS5yZWZsZWN0aW9uLnYyYWxwaGExLk1zZ0Rlc2NyaXB0b3JSBG1zZ3M=');
@$core.Deprecated('Use authnDescriptorDescriptor instead')
const AuthnDescriptor$json = const {
  '1': 'AuthnDescriptor',
  '2': const [
    const {'1': 'sign_modes', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.SigningModeDescriptor', '10': 'signModes'},
  ],
};

/// Descriptor for `AuthnDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authnDescriptorDescriptor = $convert.base64Decode('Cg9BdXRobkRlc2NyaXB0b3ISVQoKc2lnbl9tb2RlcxgBIAMoCzI2LmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuU2lnbmluZ01vZGVEZXNjcmlwdG9yUglzaWduTW9kZXM=');
@$core.Deprecated('Use signingModeDescriptorDescriptor instead')
const SigningModeDescriptor$json = const {
  '1': 'SigningModeDescriptor',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'number', '3': 2, '4': 1, '5': 5, '10': 'number'},
    const {'1': 'authn_info_provider_method_fullname', '3': 3, '4': 1, '5': 9, '10': 'authnInfoProviderMethodFullname'},
  ],
};

/// Descriptor for `SigningModeDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signingModeDescriptorDescriptor = $convert.base64Decode('ChVTaWduaW5nTW9kZURlc2NyaXB0b3ISEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZudW1iZXIYAiABKAVSBm51bWJlchJMCiNhdXRobl9pbmZvX3Byb3ZpZGVyX21ldGhvZF9mdWxsbmFtZRgDIAEoCVIfYXV0aG5JbmZvUHJvdmlkZXJNZXRob2RGdWxsbmFtZQ==');
@$core.Deprecated('Use chainDescriptorDescriptor instead')
const ChainDescriptor$json = const {
  '1': 'ChainDescriptor',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ChainDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chainDescriptorDescriptor = $convert.base64Decode('Cg9DaGFpbkRlc2NyaXB0b3ISDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use codecDescriptorDescriptor instead')
const CodecDescriptor$json = const {
  '1': 'CodecDescriptor',
  '2': const [
    const {'1': 'interfaces', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.InterfaceDescriptor', '10': 'interfaces'},
  ],
};

/// Descriptor for `CodecDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codecDescriptorDescriptor = $convert.base64Decode('Cg9Db2RlY0Rlc2NyaXB0b3ISVAoKaW50ZXJmYWNlcxgBIAMoCzI0LmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuSW50ZXJmYWNlRGVzY3JpcHRvclIKaW50ZXJmYWNlcw==');
@$core.Deprecated('Use interfaceDescriptorDescriptor instead')
const InterfaceDescriptor$json = const {
  '1': 'InterfaceDescriptor',
  '2': const [
    const {'1': 'fullname', '3': 1, '4': 1, '5': 9, '10': 'fullname'},
    const {'1': 'interface_accepting_messages', '3': 2, '4': 3, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.InterfaceAcceptingMessageDescriptor', '10': 'interfaceAcceptingMessages'},
    const {'1': 'interface_implementers', '3': 3, '4': 3, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.InterfaceImplementerDescriptor', '10': 'interfaceImplementers'},
  ],
};

/// Descriptor for `InterfaceDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interfaceDescriptorDescriptor = $convert.base64Decode('ChNJbnRlcmZhY2VEZXNjcmlwdG9yEhoKCGZ1bGxuYW1lGAEgASgJUghmdWxsbmFtZRKGAQocaW50ZXJmYWNlX2FjY2VwdGluZ19tZXNzYWdlcxgCIAMoCzJELmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuSW50ZXJmYWNlQWNjZXB0aW5nTWVzc2FnZURlc2NyaXB0b3JSGmludGVyZmFjZUFjY2VwdGluZ01lc3NhZ2VzEnYKFmludGVyZmFjZV9pbXBsZW1lbnRlcnMYAyADKAsyPy5jb3Ntb3MuYmFzZS5yZWZsZWN0aW9uLnYyYWxwaGExLkludGVyZmFjZUltcGxlbWVudGVyRGVzY3JpcHRvclIVaW50ZXJmYWNlSW1wbGVtZW50ZXJz');
@$core.Deprecated('Use interfaceImplementerDescriptorDescriptor instead')
const InterfaceImplementerDescriptor$json = const {
  '1': 'InterfaceImplementerDescriptor',
  '2': const [
    const {'1': 'fullname', '3': 1, '4': 1, '5': 9, '10': 'fullname'},
    const {'1': 'type_url', '3': 2, '4': 1, '5': 9, '10': 'typeUrl'},
  ],
};

/// Descriptor for `InterfaceImplementerDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interfaceImplementerDescriptorDescriptor = $convert.base64Decode('Ch5JbnRlcmZhY2VJbXBsZW1lbnRlckRlc2NyaXB0b3ISGgoIZnVsbG5hbWUYASABKAlSCGZ1bGxuYW1lEhkKCHR5cGVfdXJsGAIgASgJUgd0eXBlVXJs');
@$core.Deprecated('Use interfaceAcceptingMessageDescriptorDescriptor instead')
const InterfaceAcceptingMessageDescriptor$json = const {
  '1': 'InterfaceAcceptingMessageDescriptor',
  '2': const [
    const {'1': 'fullname', '3': 1, '4': 1, '5': 9, '10': 'fullname'},
    const {'1': 'field_descriptor_names', '3': 2, '4': 3, '5': 9, '10': 'fieldDescriptorNames'},
  ],
};

/// Descriptor for `InterfaceAcceptingMessageDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interfaceAcceptingMessageDescriptorDescriptor = $convert.base64Decode('CiNJbnRlcmZhY2VBY2NlcHRpbmdNZXNzYWdlRGVzY3JpcHRvchIaCghmdWxsbmFtZRgBIAEoCVIIZnVsbG5hbWUSNAoWZmllbGRfZGVzY3JpcHRvcl9uYW1lcxgCIAMoCVIUZmllbGREZXNjcmlwdG9yTmFtZXM=');
@$core.Deprecated('Use configurationDescriptorDescriptor instead')
const ConfigurationDescriptor$json = const {
  '1': 'ConfigurationDescriptor',
  '2': const [
    const {'1': 'bech32_account_address_prefix', '3': 1, '4': 1, '5': 9, '10': 'bech32AccountAddressPrefix'},
  ],
};

/// Descriptor for `ConfigurationDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationDescriptorDescriptor = $convert.base64Decode('ChdDb25maWd1cmF0aW9uRGVzY3JpcHRvchJBCh1iZWNoMzJfYWNjb3VudF9hZGRyZXNzX3ByZWZpeBgBIAEoCVIaYmVjaDMyQWNjb3VudEFkZHJlc3NQcmVmaXg=');
@$core.Deprecated('Use msgDescriptorDescriptor instead')
const MsgDescriptor$json = const {
  '1': 'MsgDescriptor',
  '2': const [
    const {'1': 'msg_type_url', '3': 1, '4': 1, '5': 9, '10': 'msgTypeUrl'},
  ],
};

/// Descriptor for `MsgDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDescriptorDescriptor = $convert.base64Decode('Cg1Nc2dEZXNjcmlwdG9yEiAKDG1zZ190eXBlX3VybBgBIAEoCVIKbXNnVHlwZVVybA==');
@$core.Deprecated('Use getAuthnDescriptorRequestDescriptor instead')
const GetAuthnDescriptorRequest$json = const {
  '1': 'GetAuthnDescriptorRequest',
};

/// Descriptor for `GetAuthnDescriptorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAuthnDescriptorRequestDescriptor = $convert.base64Decode('ChlHZXRBdXRobkRlc2NyaXB0b3JSZXF1ZXN0');
@$core.Deprecated('Use getAuthnDescriptorResponseDescriptor instead')
const GetAuthnDescriptorResponse$json = const {
  '1': 'GetAuthnDescriptorResponse',
  '2': const [
    const {'1': 'authn', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.AuthnDescriptor', '10': 'authn'},
  ],
};

/// Descriptor for `GetAuthnDescriptorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAuthnDescriptorResponseDescriptor = $convert.base64Decode('ChpHZXRBdXRobkRlc2NyaXB0b3JSZXNwb25zZRJGCgVhdXRobhgBIAEoCzIwLmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuQXV0aG5EZXNjcmlwdG9yUgVhdXRobg==');
@$core.Deprecated('Use getChainDescriptorRequestDescriptor instead')
const GetChainDescriptorRequest$json = const {
  '1': 'GetChainDescriptorRequest',
};

/// Descriptor for `GetChainDescriptorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChainDescriptorRequestDescriptor = $convert.base64Decode('ChlHZXRDaGFpbkRlc2NyaXB0b3JSZXF1ZXN0');
@$core.Deprecated('Use getChainDescriptorResponseDescriptor instead')
const GetChainDescriptorResponse$json = const {
  '1': 'GetChainDescriptorResponse',
  '2': const [
    const {'1': 'chain', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.ChainDescriptor', '10': 'chain'},
  ],
};

/// Descriptor for `GetChainDescriptorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getChainDescriptorResponseDescriptor = $convert.base64Decode('ChpHZXRDaGFpbkRlc2NyaXB0b3JSZXNwb25zZRJGCgVjaGFpbhgBIAEoCzIwLmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuQ2hhaW5EZXNjcmlwdG9yUgVjaGFpbg==');
@$core.Deprecated('Use getCodecDescriptorRequestDescriptor instead')
const GetCodecDescriptorRequest$json = const {
  '1': 'GetCodecDescriptorRequest',
};

/// Descriptor for `GetCodecDescriptorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCodecDescriptorRequestDescriptor = $convert.base64Decode('ChlHZXRDb2RlY0Rlc2NyaXB0b3JSZXF1ZXN0');
@$core.Deprecated('Use getCodecDescriptorResponseDescriptor instead')
const GetCodecDescriptorResponse$json = const {
  '1': 'GetCodecDescriptorResponse',
  '2': const [
    const {'1': 'codec', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.CodecDescriptor', '10': 'codec'},
  ],
};

/// Descriptor for `GetCodecDescriptorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCodecDescriptorResponseDescriptor = $convert.base64Decode('ChpHZXRDb2RlY0Rlc2NyaXB0b3JSZXNwb25zZRJGCgVjb2RlYxgBIAEoCzIwLmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuQ29kZWNEZXNjcmlwdG9yUgVjb2RlYw==');
@$core.Deprecated('Use getConfigurationDescriptorRequestDescriptor instead')
const GetConfigurationDescriptorRequest$json = const {
  '1': 'GetConfigurationDescriptorRequest',
};

/// Descriptor for `GetConfigurationDescriptorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfigurationDescriptorRequestDescriptor = $convert.base64Decode('CiFHZXRDb25maWd1cmF0aW9uRGVzY3JpcHRvclJlcXVlc3Q=');
@$core.Deprecated('Use getConfigurationDescriptorResponseDescriptor instead')
const GetConfigurationDescriptorResponse$json = const {
  '1': 'GetConfigurationDescriptorResponse',
  '2': const [
    const {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.ConfigurationDescriptor', '10': 'config'},
  ],
};

/// Descriptor for `GetConfigurationDescriptorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfigurationDescriptorResponseDescriptor = $convert.base64Decode('CiJHZXRDb25maWd1cmF0aW9uRGVzY3JpcHRvclJlc3BvbnNlElAKBmNvbmZpZxgBIAEoCzI4LmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuQ29uZmlndXJhdGlvbkRlc2NyaXB0b3JSBmNvbmZpZw==');
@$core.Deprecated('Use getQueryServicesDescriptorRequestDescriptor instead')
const GetQueryServicesDescriptorRequest$json = const {
  '1': 'GetQueryServicesDescriptorRequest',
};

/// Descriptor for `GetQueryServicesDescriptorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQueryServicesDescriptorRequestDescriptor = $convert.base64Decode('CiFHZXRRdWVyeVNlcnZpY2VzRGVzY3JpcHRvclJlcXVlc3Q=');
@$core.Deprecated('Use getQueryServicesDescriptorResponseDescriptor instead')
const GetQueryServicesDescriptorResponse$json = const {
  '1': 'GetQueryServicesDescriptorResponse',
  '2': const [
    const {'1': 'queries', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.QueryServicesDescriptor', '10': 'queries'},
  ],
};

/// Descriptor for `GetQueryServicesDescriptorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQueryServicesDescriptorResponseDescriptor = $convert.base64Decode('CiJHZXRRdWVyeVNlcnZpY2VzRGVzY3JpcHRvclJlc3BvbnNlElIKB3F1ZXJpZXMYASABKAsyOC5jb3Ntb3MuYmFzZS5yZWZsZWN0aW9uLnYyYWxwaGExLlF1ZXJ5U2VydmljZXNEZXNjcmlwdG9yUgdxdWVyaWVz');
@$core.Deprecated('Use getTxDescriptorRequestDescriptor instead')
const GetTxDescriptorRequest$json = const {
  '1': 'GetTxDescriptorRequest',
};

/// Descriptor for `GetTxDescriptorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTxDescriptorRequestDescriptor = $convert.base64Decode('ChZHZXRUeERlc2NyaXB0b3JSZXF1ZXN0');
@$core.Deprecated('Use getTxDescriptorResponseDescriptor instead')
const GetTxDescriptorResponse$json = const {
  '1': 'GetTxDescriptorResponse',
  '2': const [
    const {'1': 'tx', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.TxDescriptor', '10': 'tx'},
  ],
};

/// Descriptor for `GetTxDescriptorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTxDescriptorResponseDescriptor = $convert.base64Decode('ChdHZXRUeERlc2NyaXB0b3JSZXNwb25zZRI9CgJ0eBgBIAEoCzItLmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuVHhEZXNjcmlwdG9yUgJ0eA==');
@$core.Deprecated('Use queryServicesDescriptorDescriptor instead')
const QueryServicesDescriptor$json = const {
  '1': 'QueryServicesDescriptor',
  '2': const [
    const {'1': 'query_services', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.QueryServiceDescriptor', '10': 'queryServices'},
  ],
};

/// Descriptor for `QueryServicesDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryServicesDescriptorDescriptor = $convert.base64Decode('ChdRdWVyeVNlcnZpY2VzRGVzY3JpcHRvchJeCg5xdWVyeV9zZXJ2aWNlcxgBIAMoCzI3LmNvc21vcy5iYXNlLnJlZmxlY3Rpb24udjJhbHBoYTEuUXVlcnlTZXJ2aWNlRGVzY3JpcHRvclINcXVlcnlTZXJ2aWNlcw==');
@$core.Deprecated('Use queryServiceDescriptorDescriptor instead')
const QueryServiceDescriptor$json = const {
  '1': 'QueryServiceDescriptor',
  '2': const [
    const {'1': 'fullname', '3': 1, '4': 1, '5': 9, '10': 'fullname'},
    const {'1': 'is_module', '3': 2, '4': 1, '5': 8, '10': 'isModule'},
    const {'1': 'methods', '3': 3, '4': 3, '5': 11, '6': '.cosmos.base.reflection.v2alpha1.QueryMethodDescriptor', '10': 'methods'},
  ],
};

/// Descriptor for `QueryServiceDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryServiceDescriptorDescriptor = $convert.base64Decode('ChZRdWVyeVNlcnZpY2VEZXNjcmlwdG9yEhoKCGZ1bGxuYW1lGAEgASgJUghmdWxsbmFtZRIbCglpc19tb2R1bGUYAiABKAhSCGlzTW9kdWxlElAKB21ldGhvZHMYAyADKAsyNi5jb3Ntb3MuYmFzZS5yZWZsZWN0aW9uLnYyYWxwaGExLlF1ZXJ5TWV0aG9kRGVzY3JpcHRvclIHbWV0aG9kcw==');
@$core.Deprecated('Use queryMethodDescriptorDescriptor instead')
const QueryMethodDescriptor$json = const {
  '1': 'QueryMethodDescriptor',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'full_query_path', '3': 2, '4': 1, '5': 9, '10': 'fullQueryPath'},
  ],
};

/// Descriptor for `QueryMethodDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMethodDescriptorDescriptor = $convert.base64Decode('ChVRdWVyeU1ldGhvZERlc2NyaXB0b3ISEgoEbmFtZRgBIAEoCVIEbmFtZRImCg9mdWxsX3F1ZXJ5X3BhdGgYAiABKAlSDWZ1bGxRdWVyeVBhdGg=');
