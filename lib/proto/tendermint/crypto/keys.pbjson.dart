///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use publicKeyDescriptor instead')
const PublicKey$json = const {
  '1': 'PublicKey',
  '2': const [
    const {'1': 'ed25519', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'ed25519'},
    const {'1': 'secp256k1', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'secp256k1'},
  ],
  '7': const {},
  '8': const [
    const {'1': 'sum'},
  ],
};

/// Descriptor for `PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyDescriptor = $convert.base64Decode('CglQdWJsaWNLZXkSGgoHZWQyNTUxORgBIAEoDEgAUgdlZDI1NTE5Eh4KCXNlY3AyNTZrMRgCIAEoDEgAUglzZWNwMjU2azE6COihHwHooB8BQgUKA3N1bQ==');
