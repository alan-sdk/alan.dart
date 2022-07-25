///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccessType extends $pb.ProtobufEnum {
  static const AccessType ACCESS_TYPE_UNSPECIFIED = AccessType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_TYPE_UNSPECIFIED');
  static const AccessType ACCESS_TYPE_NOBODY = AccessType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_TYPE_NOBODY');
  static const AccessType ACCESS_TYPE_ONLY_ADDRESS = AccessType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_TYPE_ONLY_ADDRESS');
  static const AccessType ACCESS_TYPE_EVERYBODY = AccessType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCESS_TYPE_EVERYBODY');

  static const $core.List<AccessType> values = <AccessType> [
    ACCESS_TYPE_UNSPECIFIED,
    ACCESS_TYPE_NOBODY,
    ACCESS_TYPE_ONLY_ADDRESS,
    ACCESS_TYPE_EVERYBODY,
  ];

  static final $core.Map<$core.int, AccessType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccessType? valueOf($core.int value) => _byValue[value];

  const AccessType._($core.int v, $core.String n) : super(v, n);
}

class ContractCodeHistoryOperationType extends $pb.ProtobufEnum {
  static const ContractCodeHistoryOperationType CONTRACT_CODE_HISTORY_OPERATION_TYPE_UNSPECIFIED = ContractCodeHistoryOperationType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_UNSPECIFIED');
  static const ContractCodeHistoryOperationType CONTRACT_CODE_HISTORY_OPERATION_TYPE_INIT = ContractCodeHistoryOperationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_INIT');
  static const ContractCodeHistoryOperationType CONTRACT_CODE_HISTORY_OPERATION_TYPE_MIGRATE = ContractCodeHistoryOperationType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_MIGRATE');
  static const ContractCodeHistoryOperationType CONTRACT_CODE_HISTORY_OPERATION_TYPE_GENESIS = ContractCodeHistoryOperationType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONTRACT_CODE_HISTORY_OPERATION_TYPE_GENESIS');

  static const $core.List<ContractCodeHistoryOperationType> values = <ContractCodeHistoryOperationType> [
    CONTRACT_CODE_HISTORY_OPERATION_TYPE_UNSPECIFIED,
    CONTRACT_CODE_HISTORY_OPERATION_TYPE_INIT,
    CONTRACT_CODE_HISTORY_OPERATION_TYPE_MIGRATE,
    CONTRACT_CODE_HISTORY_OPERATION_TYPE_GENESIS,
  ];

  static final $core.Map<$core.int, ContractCodeHistoryOperationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ContractCodeHistoryOperationType? valueOf($core.int value) => _byValue[value];

  const ContractCodeHistoryOperationType._($core.int v, $core.String n) : super(v, n);
}

