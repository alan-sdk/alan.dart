///
//  Generated code. Do not modify.
//  source: ibc/lightclients/solomachine/v1/solomachine.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DataType extends $pb.ProtobufEnum {
  static const DataType DATA_TYPE_UNINITIALIZED_UNSPECIFIED = DataType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_UNINITIALIZED_UNSPECIFIED');
  static const DataType DATA_TYPE_CLIENT_STATE = DataType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_CLIENT_STATE');
  static const DataType DATA_TYPE_CONSENSUS_STATE = DataType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_CONSENSUS_STATE');
  static const DataType DATA_TYPE_CONNECTION_STATE = DataType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_CONNECTION_STATE');
  static const DataType DATA_TYPE_CHANNEL_STATE = DataType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_CHANNEL_STATE');
  static const DataType DATA_TYPE_PACKET_COMMITMENT = DataType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_PACKET_COMMITMENT');
  static const DataType DATA_TYPE_PACKET_ACKNOWLEDGEMENT = DataType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_PACKET_ACKNOWLEDGEMENT');
  static const DataType DATA_TYPE_PACKET_RECEIPT_ABSENCE = DataType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_PACKET_RECEIPT_ABSENCE');
  static const DataType DATA_TYPE_NEXT_SEQUENCE_RECV = DataType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_NEXT_SEQUENCE_RECV');
  static const DataType DATA_TYPE_HEADER = DataType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATA_TYPE_HEADER');

  static const $core.List<DataType> values = <DataType> [
    DATA_TYPE_UNINITIALIZED_UNSPECIFIED,
    DATA_TYPE_CLIENT_STATE,
    DATA_TYPE_CONSENSUS_STATE,
    DATA_TYPE_CONNECTION_STATE,
    DATA_TYPE_CHANNEL_STATE,
    DATA_TYPE_PACKET_COMMITMENT,
    DATA_TYPE_PACKET_ACKNOWLEDGEMENT,
    DATA_TYPE_PACKET_RECEIPT_ABSENCE,
    DATA_TYPE_NEXT_SEQUENCE_RECV,
    DATA_TYPE_HEADER,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}

