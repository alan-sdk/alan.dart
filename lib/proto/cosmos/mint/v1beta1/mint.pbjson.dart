///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use minterDescriptor instead')
const Minter$json = const {
  '1': 'Minter',
  '2': const [
    const {'1': 'inflation', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'inflation'},
    const {'1': 'annual_provisions', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'annualProvisions'},
  ],
};

/// Descriptor for `Minter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List minterDescriptor = $convert.base64Decode('CgZNaW50ZXISTAoJaW5mbGF0aW9uGAEgASgJQi7a3h8mZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5EZWPI3h8AUglpbmZsYXRpb24SdwoRYW5udWFsX3Byb3Zpc2lvbnMYAiABKAlCSvLeHxh5YW1sOiJhbm51YWxfcHJvdmlzaW9ucyLa3h8mZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5EZWPI3h8AUhBhbm51YWxQcm92aXNpb25z');
@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = const {
  '1': 'Params',
  '2': const [
    const {'1': 'mint_denom', '3': 1, '4': 1, '5': 9, '10': 'mintDenom'},
    const {'1': 'inflation_rate_change', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'inflationRateChange'},
    const {'1': 'inflation_max', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'inflationMax'},
    const {'1': 'inflation_min', '3': 4, '4': 1, '5': 9, '8': const {}, '10': 'inflationMin'},
    const {'1': 'goal_bonded', '3': 5, '4': 1, '5': 9, '8': const {}, '10': 'goalBonded'},
    const {'1': 'blocks_per_year', '3': 6, '4': 1, '5': 4, '8': const {}, '10': 'blocksPerYear'},
  ],
  '7': const {},
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode('CgZQYXJhbXMSHQoKbWludF9kZW5vbRgBIAEoCVIJbWludERlbm9tEoIBChVpbmZsYXRpb25fcmF0ZV9jaGFuZ2UYAiABKAlCTvLeHxx5YW1sOiJpbmZsYXRpb25fcmF0ZV9jaGFuZ2Ui2t4fJmdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuRGVjyN4fAFITaW5mbGF0aW9uUmF0ZUNoYW5nZRJrCg1pbmZsYXRpb25fbWF4GAMgASgJQkby3h8UeWFtbDoiaW5mbGF0aW9uX21heCLa3h8mZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5EZWPI3h8AUgxpbmZsYXRpb25NYXgSawoNaW5mbGF0aW9uX21pbhgEIAEoCUJG8t4fFHlhbWw6ImluZmxhdGlvbl9taW4i2t4fJmdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuRGVjyN4fAFIMaW5mbGF0aW9uTWluEmUKC2dvYWxfYm9uZGVkGAUgASgJQkTy3h8SeWFtbDoiZ29hbF9ib25kZWQi2t4fJmdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuRGVjyN4fAFIKZ29hbEJvbmRlZBJCCg9ibG9ja3NfcGVyX3llYXIYBiABKARCGvLeHxZ5YW1sOiJibG9ja3NfcGVyX3llYXIiUg1ibG9ja3NQZXJZZWFyOgSYoB8A');
