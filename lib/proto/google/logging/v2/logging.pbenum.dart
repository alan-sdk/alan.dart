///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TailLogEntriesResponse_SuppressionInfo_Reason extends $pb.ProtobufEnum {
  static const TailLogEntriesResponse_SuppressionInfo_Reason
      REASON_UNSPECIFIED = TailLogEntriesResponse_SuppressionInfo_Reason._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'REASON_UNSPECIFIED');
  static const TailLogEntriesResponse_SuppressionInfo_Reason RATE_LIMIT =
      TailLogEntriesResponse_SuppressionInfo_Reason._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'RATE_LIMIT');
  static const TailLogEntriesResponse_SuppressionInfo_Reason NOT_CONSUMED =
      TailLogEntriesResponse_SuppressionInfo_Reason._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'NOT_CONSUMED');

  static const $core.List<TailLogEntriesResponse_SuppressionInfo_Reason>
      values = <TailLogEntriesResponse_SuppressionInfo_Reason>[
    REASON_UNSPECIFIED,
    RATE_LIMIT,
    NOT_CONSUMED,
  ];

  static final $core
          .Map<$core.int, TailLogEntriesResponse_SuppressionInfo_Reason>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static TailLogEntriesResponse_SuppressionInfo_Reason valueOf(
          $core.int value) =>
      _byValue[value];

  const TailLogEntriesResponse_SuppressionInfo_Reason._(
      $core.int v, $core.String n)
      : super(v, n);
}
