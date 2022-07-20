///
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgSubmitEvidenceDescriptor instead')
const MsgSubmitEvidence$json = const {
  '1': 'MsgSubmitEvidence',
  '2': const [
    const {'1': 'submitter', '3': 1, '4': 1, '5': 9, '10': 'submitter'},
    const {'1': 'evidence', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '8': const {}, '10': 'evidence'},
  ],
  '7': const {},
};

/// Descriptor for `MsgSubmitEvidence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSubmitEvidenceDescriptor = $convert.base64Decode('ChFNc2dTdWJtaXRFdmlkZW5jZRIcCglzdWJtaXR0ZXIYASABKAlSCXN1Ym1pdHRlchI+CghldmlkZW5jZRgCIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlCDMq0LQhFdmlkZW5jZVIIZXZpZGVuY2U6COigHwCIoB8A');
@$core.Deprecated('Use msgSubmitEvidenceResponseDescriptor instead')
const MsgSubmitEvidenceResponse$json = const {
  '1': 'MsgSubmitEvidenceResponse',
  '2': const [
    const {'1': 'hash', '3': 4, '4': 1, '5': 12, '10': 'hash'},
  ],
};

/// Descriptor for `MsgSubmitEvidenceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSubmitEvidenceResponseDescriptor = $convert.base64Decode('ChlNc2dTdWJtaXRFdmlkZW5jZVJlc3BvbnNlEhIKBGhhc2gYBCABKAxSBGhhc2g=');
