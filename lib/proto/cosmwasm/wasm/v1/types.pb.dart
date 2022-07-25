///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $2;

import 'types.pbenum.dart';

export 'types.pbenum.dart';

class AccessTypeParam extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccessTypeParam', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..e<AccessType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OE, defaultOrMaker: AccessType.ACCESS_TYPE_UNSPECIFIED, valueOf: AccessType.valueOf, enumValues: AccessType.values)
    ..hasRequiredFields = false
  ;

  AccessTypeParam._() : super();
  factory AccessTypeParam({
    AccessType? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory AccessTypeParam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessTypeParam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessTypeParam clone() => AccessTypeParam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessTypeParam copyWith(void Function(AccessTypeParam) updates) => super.copyWith((message) => updates(message as AccessTypeParam)) as AccessTypeParam; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessTypeParam create() => AccessTypeParam._();
  AccessTypeParam createEmptyInstance() => create();
  static $pb.PbList<AccessTypeParam> createRepeated() => $pb.PbList<AccessTypeParam>();
  @$core.pragma('dart2js:noInline')
  static AccessTypeParam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessTypeParam>(create);
  static AccessTypeParam? _defaultInstance;

  @$pb.TagNumber(1)
  AccessType get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(AccessType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class AccessConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccessConfig', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..e<AccessType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permission', $pb.PbFieldType.OE, defaultOrMaker: AccessType.ACCESS_TYPE_UNSPECIFIED, valueOf: AccessType.valueOf, enumValues: AccessType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  AccessConfig._() : super();
  factory AccessConfig({
    AccessType? permission,
    $core.String? address,
  }) {
    final _result = create();
    if (permission != null) {
      _result.permission = permission;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory AccessConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessConfig clone() => AccessConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessConfig copyWith(void Function(AccessConfig) updates) => super.copyWith((message) => updates(message as AccessConfig)) as AccessConfig; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessConfig create() => AccessConfig._();
  AccessConfig createEmptyInstance() => create();
  static $pb.PbList<AccessConfig> createRepeated() => $pb.PbList<AccessConfig>();
  @$core.pragma('dart2js:noInline')
  static AccessConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessConfig>(create);
  static AccessConfig? _defaultInstance;

  @$pb.TagNumber(1)
  AccessType get permission => $_getN(0);
  @$pb.TagNumber(1)
  set permission(AccessType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPermission() => $_has(0);
  @$pb.TagNumber(1)
  void clearPermission() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);
}

class Params extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Params', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOM<AccessConfig>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeUploadAccess', subBuilder: AccessConfig.create)
    ..e<AccessType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instantiateDefaultPermission', $pb.PbFieldType.OE, defaultOrMaker: AccessType.ACCESS_TYPE_UNSPECIFIED, valueOf: AccessType.valueOf, enumValues: AccessType.values)
    ..hasRequiredFields = false
  ;

  Params._() : super();
  factory Params({
    AccessConfig? codeUploadAccess,
    AccessType? instantiateDefaultPermission,
  }) {
    final _result = create();
    if (codeUploadAccess != null) {
      _result.codeUploadAccess = codeUploadAccess;
    }
    if (instantiateDefaultPermission != null) {
      _result.instantiateDefaultPermission = instantiateDefaultPermission;
    }
    return _result;
  }
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Params clone() => Params()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Params copyWith(void Function(Params) updates) => super.copyWith((message) => updates(message as Params)) as Params; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Params create() => Params._();
  Params createEmptyInstance() => create();
  static $pb.PbList<Params> createRepeated() => $pb.PbList<Params>();
  @$core.pragma('dart2js:noInline')
  static Params getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Params>(create);
  static Params? _defaultInstance;

  @$pb.TagNumber(1)
  AccessConfig get codeUploadAccess => $_getN(0);
  @$pb.TagNumber(1)
  set codeUploadAccess(AccessConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeUploadAccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeUploadAccess() => clearField(1);
  @$pb.TagNumber(1)
  AccessConfig ensureCodeUploadAccess() => $_ensure(0);

  @$pb.TagNumber(2)
  AccessType get instantiateDefaultPermission => $_getN(1);
  @$pb.TagNumber(2)
  set instantiateDefaultPermission(AccessType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInstantiateDefaultPermission() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstantiateDefaultPermission() => clearField(2);
}

class CodeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CodeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeHash', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOM<AccessConfig>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instantiateConfig', subBuilder: AccessConfig.create)
    ..hasRequiredFields = false
  ;

  CodeInfo._() : super();
  factory CodeInfo({
    $core.List<$core.int>? codeHash,
    $core.String? creator,
    AccessConfig? instantiateConfig,
  }) {
    final _result = create();
    if (codeHash != null) {
      _result.codeHash = codeHash;
    }
    if (creator != null) {
      _result.creator = creator;
    }
    if (instantiateConfig != null) {
      _result.instantiateConfig = instantiateConfig;
    }
    return _result;
  }
  factory CodeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CodeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CodeInfo clone() => CodeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CodeInfo copyWith(void Function(CodeInfo) updates) => super.copyWith((message) => updates(message as CodeInfo)) as CodeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CodeInfo create() => CodeInfo._();
  CodeInfo createEmptyInstance() => create();
  static $pb.PbList<CodeInfo> createRepeated() => $pb.PbList<CodeInfo>();
  @$core.pragma('dart2js:noInline')
  static CodeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CodeInfo>(create);
  static CodeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get codeHash => $_getN(0);
  @$pb.TagNumber(1)
  set codeHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get creator => $_getSZ(1);
  @$pb.TagNumber(2)
  set creator($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreator() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreator() => clearField(2);

  @$pb.TagNumber(5)
  AccessConfig get instantiateConfig => $_getN(2);
  @$pb.TagNumber(5)
  set instantiateConfig(AccessConfig v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasInstantiateConfig() => $_has(2);
  @$pb.TagNumber(5)
  void clearInstantiateConfig() => clearField(5);
  @$pb.TagNumber(5)
  AccessConfig ensureInstantiateConfig() => $_ensure(2);
}

class ContractInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContractInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOM<AbsoluteTxPosition>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created', subBuilder: AbsoluteTxPosition.create)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ibcPortId')
    ..aOM<$2.Any>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extension', subBuilder: $2.Any.create)
    ..hasRequiredFields = false
  ;

  ContractInfo._() : super();
  factory ContractInfo({
    $fixnum.Int64? codeId,
    $core.String? creator,
    $core.String? admin,
    $core.String? label,
    AbsoluteTxPosition? created,
    $core.String? ibcPortId,
    $2.Any? extension_7,
  }) {
    final _result = create();
    if (codeId != null) {
      _result.codeId = codeId;
    }
    if (creator != null) {
      _result.creator = creator;
    }
    if (admin != null) {
      _result.admin = admin;
    }
    if (label != null) {
      _result.label = label;
    }
    if (created != null) {
      _result.created = created;
    }
    if (ibcPortId != null) {
      _result.ibcPortId = ibcPortId;
    }
    if (extension_7 != null) {
      _result.extension_7 = extension_7;
    }
    return _result;
  }
  factory ContractInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContractInfo clone() => ContractInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContractInfo copyWith(void Function(ContractInfo) updates) => super.copyWith((message) => updates(message as ContractInfo)) as ContractInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractInfo create() => ContractInfo._();
  ContractInfo createEmptyInstance() => create();
  static $pb.PbList<ContractInfo> createRepeated() => $pb.PbList<ContractInfo>();
  @$core.pragma('dart2js:noInline')
  static ContractInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractInfo>(create);
  static ContractInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get codeId => $_getI64(0);
  @$pb.TagNumber(1)
  set codeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get creator => $_getSZ(1);
  @$pb.TagNumber(2)
  set creator($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreator() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreator() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get admin => $_getSZ(2);
  @$pb.TagNumber(3)
  set admin($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdmin() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdmin() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get label => $_getSZ(3);
  @$pb.TagNumber(4)
  set label($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabel() => clearField(4);

  @$pb.TagNumber(5)
  AbsoluteTxPosition get created => $_getN(4);
  @$pb.TagNumber(5)
  set created(AbsoluteTxPosition v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreated() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreated() => clearField(5);
  @$pb.TagNumber(5)
  AbsoluteTxPosition ensureCreated() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get ibcPortId => $_getSZ(5);
  @$pb.TagNumber(6)
  set ibcPortId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIbcPortId() => $_has(5);
  @$pb.TagNumber(6)
  void clearIbcPortId() => clearField(6);

  @$pb.TagNumber(7)
  $2.Any get extension_7 => $_getN(6);
  @$pb.TagNumber(7)
  set extension_7($2.Any v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasExtension_7() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtension_7() => clearField(7);
  @$pb.TagNumber(7)
  $2.Any ensureExtension_7() => $_ensure(6);
}

class ContractCodeHistoryEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContractCodeHistoryEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..e<ContractCodeHistoryOperationType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operation', $pb.PbFieldType.OE, defaultOrMaker: ContractCodeHistoryOperationType.CONTRACT_CODE_HISTORY_OPERATION_TYPE_UNSPECIFIED, valueOf: ContractCodeHistoryOperationType.valueOf, enumValues: ContractCodeHistoryOperationType.values)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<AbsoluteTxPosition>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updated', subBuilder: AbsoluteTxPosition.create)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ContractCodeHistoryEntry._() : super();
  factory ContractCodeHistoryEntry({
    ContractCodeHistoryOperationType? operation,
    $fixnum.Int64? codeId,
    AbsoluteTxPosition? updated,
    $core.List<$core.int>? msg,
  }) {
    final _result = create();
    if (operation != null) {
      _result.operation = operation;
    }
    if (codeId != null) {
      _result.codeId = codeId;
    }
    if (updated != null) {
      _result.updated = updated;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory ContractCodeHistoryEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContractCodeHistoryEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContractCodeHistoryEntry clone() => ContractCodeHistoryEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContractCodeHistoryEntry copyWith(void Function(ContractCodeHistoryEntry) updates) => super.copyWith((message) => updates(message as ContractCodeHistoryEntry)) as ContractCodeHistoryEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContractCodeHistoryEntry create() => ContractCodeHistoryEntry._();
  ContractCodeHistoryEntry createEmptyInstance() => create();
  static $pb.PbList<ContractCodeHistoryEntry> createRepeated() => $pb.PbList<ContractCodeHistoryEntry>();
  @$core.pragma('dart2js:noInline')
  static ContractCodeHistoryEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContractCodeHistoryEntry>(create);
  static ContractCodeHistoryEntry? _defaultInstance;

  @$pb.TagNumber(1)
  ContractCodeHistoryOperationType get operation => $_getN(0);
  @$pb.TagNumber(1)
  set operation(ContractCodeHistoryOperationType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperation() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get codeId => $_getI64(1);
  @$pb.TagNumber(2)
  set codeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodeId() => clearField(2);

  @$pb.TagNumber(3)
  AbsoluteTxPosition get updated => $_getN(2);
  @$pb.TagNumber(3)
  set updated(AbsoluteTxPosition v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdated() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdated() => clearField(3);
  @$pb.TagNumber(3)
  AbsoluteTxPosition ensureUpdated() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get msg => $_getN(3);
  @$pb.TagNumber(4)
  set msg($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsg() => clearField(4);
}

class AbsoluteTxPosition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AbsoluteTxPosition', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AbsoluteTxPosition._() : super();
  factory AbsoluteTxPosition({
    $fixnum.Int64? blockHeight,
    $fixnum.Int64? txIndex,
  }) {
    final _result = create();
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (txIndex != null) {
      _result.txIndex = txIndex;
    }
    return _result;
  }
  factory AbsoluteTxPosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AbsoluteTxPosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AbsoluteTxPosition clone() => AbsoluteTxPosition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AbsoluteTxPosition copyWith(void Function(AbsoluteTxPosition) updates) => super.copyWith((message) => updates(message as AbsoluteTxPosition)) as AbsoluteTxPosition; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AbsoluteTxPosition create() => AbsoluteTxPosition._();
  AbsoluteTxPosition createEmptyInstance() => create();
  static $pb.PbList<AbsoluteTxPosition> createRepeated() => $pb.PbList<AbsoluteTxPosition>();
  @$core.pragma('dart2js:noInline')
  static AbsoluteTxPosition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AbsoluteTxPosition>(create);
  static AbsoluteTxPosition? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set blockHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get txIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set txIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxIndex() => clearField(2);
}

class Model extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Model', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Model._() : super();
  factory Model({
    $core.List<$core.int>? key,
    $core.List<$core.int>? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Model.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Model.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Model clone() => Model()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Model copyWith(void Function(Model) updates) => super.copyWith((message) => updates(message as Model)) as Model; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Model create() => Model._();
  Model createEmptyInstance() => create();
  static $pb.PbList<Model> createRepeated() => $pb.PbList<Model>();
  @$core.pragma('dart2js:noInline')
  static Model getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Model>(create);
  static Model? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get key => $_getN(0);
  @$pb.TagNumber(1)
  set key($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

