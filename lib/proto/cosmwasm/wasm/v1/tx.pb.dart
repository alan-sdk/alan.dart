///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pb.dart' as $3;
import '../../../cosmos/base/v1beta1/coin.pb.dart' as $4;

class MsgStoreCode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgStoreCode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wasmByteCode', $pb.PbFieldType.OY)
    ..aOM<$3.AccessConfig>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instantiatePermission', subBuilder: $3.AccessConfig.create)
    ..hasRequiredFields = false
  ;

  MsgStoreCode._() : super();
  factory MsgStoreCode({
    $core.String? sender,
    $core.List<$core.int>? wasmByteCode,
    $3.AccessConfig? instantiatePermission,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (wasmByteCode != null) {
      _result.wasmByteCode = wasmByteCode;
    }
    if (instantiatePermission != null) {
      _result.instantiatePermission = instantiatePermission;
    }
    return _result;
  }
  factory MsgStoreCode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgStoreCode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgStoreCode clone() => MsgStoreCode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgStoreCode copyWith(void Function(MsgStoreCode) updates) => super.copyWith((message) => updates(message as MsgStoreCode)) as MsgStoreCode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgStoreCode create() => MsgStoreCode._();
  MsgStoreCode createEmptyInstance() => create();
  static $pb.PbList<MsgStoreCode> createRepeated() => $pb.PbList<MsgStoreCode>();
  @$core.pragma('dart2js:noInline')
  static MsgStoreCode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgStoreCode>(create);
  static MsgStoreCode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get wasmByteCode => $_getN(1);
  @$pb.TagNumber(2)
  set wasmByteCode($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWasmByteCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearWasmByteCode() => clearField(2);

  @$pb.TagNumber(5)
  $3.AccessConfig get instantiatePermission => $_getN(2);
  @$pb.TagNumber(5)
  set instantiatePermission($3.AccessConfig v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasInstantiatePermission() => $_has(2);
  @$pb.TagNumber(5)
  void clearInstantiatePermission() => clearField(5);
  @$pb.TagNumber(5)
  $3.AccessConfig ensureInstantiatePermission() => $_ensure(2);
}

class MsgStoreCodeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgStoreCodeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MsgStoreCodeResponse._() : super();
  factory MsgStoreCodeResponse({
    $fixnum.Int64? codeId,
  }) {
    final _result = create();
    if (codeId != null) {
      _result.codeId = codeId;
    }
    return _result;
  }
  factory MsgStoreCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgStoreCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgStoreCodeResponse clone() => MsgStoreCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgStoreCodeResponse copyWith(void Function(MsgStoreCodeResponse) updates) => super.copyWith((message) => updates(message as MsgStoreCodeResponse)) as MsgStoreCodeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgStoreCodeResponse create() => MsgStoreCodeResponse._();
  MsgStoreCodeResponse createEmptyInstance() => create();
  static $pb.PbList<MsgStoreCodeResponse> createRepeated() => $pb.PbList<MsgStoreCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgStoreCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgStoreCodeResponse>(create);
  static MsgStoreCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get codeId => $_getI64(0);
  @$pb.TagNumber(1)
  set codeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeId() => clearField(1);
}

class MsgInstantiateContract extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgInstantiateContract', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..pc<$4.Coin>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funds', $pb.PbFieldType.PM, subBuilder: $4.Coin.create)
    ..hasRequiredFields = false
  ;

  MsgInstantiateContract._() : super();
  factory MsgInstantiateContract({
    $core.String? sender,
    $core.String? admin,
    $fixnum.Int64? codeId,
    $core.String? label,
    $core.List<$core.int>? msg,
    $core.Iterable<$4.Coin>? funds,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (admin != null) {
      _result.admin = admin;
    }
    if (codeId != null) {
      _result.codeId = codeId;
    }
    if (label != null) {
      _result.label = label;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (funds != null) {
      _result.funds.addAll(funds);
    }
    return _result;
  }
  factory MsgInstantiateContract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgInstantiateContract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgInstantiateContract clone() => MsgInstantiateContract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgInstantiateContract copyWith(void Function(MsgInstantiateContract) updates) => super.copyWith((message) => updates(message as MsgInstantiateContract)) as MsgInstantiateContract; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgInstantiateContract create() => MsgInstantiateContract._();
  MsgInstantiateContract createEmptyInstance() => create();
  static $pb.PbList<MsgInstantiateContract> createRepeated() => $pb.PbList<MsgInstantiateContract>();
  @$core.pragma('dart2js:noInline')
  static MsgInstantiateContract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgInstantiateContract>(create);
  static MsgInstantiateContract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get admin => $_getSZ(1);
  @$pb.TagNumber(2)
  set admin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdmin() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get codeId => $_getI64(2);
  @$pb.TagNumber(3)
  set codeId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCodeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get label => $_getSZ(3);
  @$pb.TagNumber(4)
  set label($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLabel() => $_has(3);
  @$pb.TagNumber(4)
  void clearLabel() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get msg => $_getN(4);
  @$pb.TagNumber(5)
  set msg($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsg() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsg() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$4.Coin> get funds => $_getList(5);
}

class MsgInstantiateContractResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgInstantiateContractResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgInstantiateContractResponse._() : super();
  factory MsgInstantiateContractResponse({
    $core.String? address,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory MsgInstantiateContractResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgInstantiateContractResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgInstantiateContractResponse clone() => MsgInstantiateContractResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgInstantiateContractResponse copyWith(void Function(MsgInstantiateContractResponse) updates) => super.copyWith((message) => updates(message as MsgInstantiateContractResponse)) as MsgInstantiateContractResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgInstantiateContractResponse create() => MsgInstantiateContractResponse._();
  MsgInstantiateContractResponse createEmptyInstance() => create();
  static $pb.PbList<MsgInstantiateContractResponse> createRepeated() => $pb.PbList<MsgInstantiateContractResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgInstantiateContractResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgInstantiateContractResponse>(create);
  static MsgInstantiateContractResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class MsgExecuteContract extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgExecuteContract', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contract')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..pc<$4.Coin>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funds', $pb.PbFieldType.PM, subBuilder: $4.Coin.create)
    ..hasRequiredFields = false
  ;

  MsgExecuteContract._() : super();
  factory MsgExecuteContract({
    $core.String? sender,
    $core.String? contract,
    $core.List<$core.int>? msg,
    $core.Iterable<$4.Coin>? funds,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (contract != null) {
      _result.contract = contract;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (funds != null) {
      _result.funds.addAll(funds);
    }
    return _result;
  }
  factory MsgExecuteContract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgExecuteContract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgExecuteContract clone() => MsgExecuteContract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgExecuteContract copyWith(void Function(MsgExecuteContract) updates) => super.copyWith((message) => updates(message as MsgExecuteContract)) as MsgExecuteContract; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgExecuteContract create() => MsgExecuteContract._();
  MsgExecuteContract createEmptyInstance() => create();
  static $pb.PbList<MsgExecuteContract> createRepeated() => $pb.PbList<MsgExecuteContract>();
  @$core.pragma('dart2js:noInline')
  static MsgExecuteContract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgExecuteContract>(create);
  static MsgExecuteContract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contract => $_getSZ(1);
  @$pb.TagNumber(2)
  set contract($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContract() => $_has(1);
  @$pb.TagNumber(2)
  void clearContract() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get msg => $_getN(2);
  @$pb.TagNumber(3)
  set msg($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => clearField(3);

  @$pb.TagNumber(5)
  $core.List<$4.Coin> get funds => $_getList(3);
}

class MsgExecuteContractResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgExecuteContractResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgExecuteContractResponse._() : super();
  factory MsgExecuteContractResponse({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory MsgExecuteContractResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgExecuteContractResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgExecuteContractResponse clone() => MsgExecuteContractResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgExecuteContractResponse copyWith(void Function(MsgExecuteContractResponse) updates) => super.copyWith((message) => updates(message as MsgExecuteContractResponse)) as MsgExecuteContractResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgExecuteContractResponse create() => MsgExecuteContractResponse._();
  MsgExecuteContractResponse createEmptyInstance() => create();
  static $pb.PbList<MsgExecuteContractResponse> createRepeated() => $pb.PbList<MsgExecuteContractResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgExecuteContractResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgExecuteContractResponse>(create);
  static MsgExecuteContractResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class MsgMigrateContract extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgMigrateContract', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contract')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgMigrateContract._() : super();
  factory MsgMigrateContract({
    $core.String? sender,
    $core.String? contract,
    $fixnum.Int64? codeId,
    $core.List<$core.int>? msg,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (contract != null) {
      _result.contract = contract;
    }
    if (codeId != null) {
      _result.codeId = codeId;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory MsgMigrateContract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgMigrateContract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgMigrateContract clone() => MsgMigrateContract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgMigrateContract copyWith(void Function(MsgMigrateContract) updates) => super.copyWith((message) => updates(message as MsgMigrateContract)) as MsgMigrateContract; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgMigrateContract create() => MsgMigrateContract._();
  MsgMigrateContract createEmptyInstance() => create();
  static $pb.PbList<MsgMigrateContract> createRepeated() => $pb.PbList<MsgMigrateContract>();
  @$core.pragma('dart2js:noInline')
  static MsgMigrateContract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgMigrateContract>(create);
  static MsgMigrateContract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contract => $_getSZ(1);
  @$pb.TagNumber(2)
  set contract($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContract() => $_has(1);
  @$pb.TagNumber(2)
  void clearContract() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get codeId => $_getI64(2);
  @$pb.TagNumber(3)
  set codeId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCodeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get msg => $_getN(3);
  @$pb.TagNumber(4)
  set msg($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsg() => clearField(4);
}

class MsgMigrateContractResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgMigrateContractResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgMigrateContractResponse._() : super();
  factory MsgMigrateContractResponse({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory MsgMigrateContractResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgMigrateContractResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgMigrateContractResponse clone() => MsgMigrateContractResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgMigrateContractResponse copyWith(void Function(MsgMigrateContractResponse) updates) => super.copyWith((message) => updates(message as MsgMigrateContractResponse)) as MsgMigrateContractResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgMigrateContractResponse create() => MsgMigrateContractResponse._();
  MsgMigrateContractResponse createEmptyInstance() => create();
  static $pb.PbList<MsgMigrateContractResponse> createRepeated() => $pb.PbList<MsgMigrateContractResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgMigrateContractResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgMigrateContractResponse>(create);
  static MsgMigrateContractResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class MsgUpdateAdmin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpdateAdmin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newAdmin')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contract')
    ..hasRequiredFields = false
  ;

  MsgUpdateAdmin._() : super();
  factory MsgUpdateAdmin({
    $core.String? sender,
    $core.String? newAdmin,
    $core.String? contract,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (newAdmin != null) {
      _result.newAdmin = newAdmin;
    }
    if (contract != null) {
      _result.contract = contract;
    }
    return _result;
  }
  factory MsgUpdateAdmin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateAdmin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateAdmin clone() => MsgUpdateAdmin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateAdmin copyWith(void Function(MsgUpdateAdmin) updates) => super.copyWith((message) => updates(message as MsgUpdateAdmin)) as MsgUpdateAdmin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpdateAdmin create() => MsgUpdateAdmin._();
  MsgUpdateAdmin createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateAdmin> createRepeated() => $pb.PbList<MsgUpdateAdmin>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateAdmin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateAdmin>(create);
  static MsgUpdateAdmin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get newAdmin => $_getSZ(1);
  @$pb.TagNumber(2)
  set newAdmin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewAdmin() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contract => $_getSZ(2);
  @$pb.TagNumber(3)
  set contract($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContract() => $_has(2);
  @$pb.TagNumber(3)
  void clearContract() => clearField(3);
}

class MsgUpdateAdminResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpdateAdminResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgUpdateAdminResponse._() : super();
  factory MsgUpdateAdminResponse() => create();
  factory MsgUpdateAdminResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateAdminResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateAdminResponse clone() => MsgUpdateAdminResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateAdminResponse copyWith(void Function(MsgUpdateAdminResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateAdminResponse)) as MsgUpdateAdminResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpdateAdminResponse create() => MsgUpdateAdminResponse._();
  MsgUpdateAdminResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateAdminResponse> createRepeated() => $pb.PbList<MsgUpdateAdminResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateAdminResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateAdminResponse>(create);
  static MsgUpdateAdminResponse? _defaultInstance;
}

class MsgClearAdmin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgClearAdmin', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contract')
    ..hasRequiredFields = false
  ;

  MsgClearAdmin._() : super();
  factory MsgClearAdmin({
    $core.String? sender,
    $core.String? contract,
  }) {
    final _result = create();
    if (sender != null) {
      _result.sender = sender;
    }
    if (contract != null) {
      _result.contract = contract;
    }
    return _result;
  }
  factory MsgClearAdmin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgClearAdmin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgClearAdmin clone() => MsgClearAdmin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgClearAdmin copyWith(void Function(MsgClearAdmin) updates) => super.copyWith((message) => updates(message as MsgClearAdmin)) as MsgClearAdmin; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgClearAdmin create() => MsgClearAdmin._();
  MsgClearAdmin createEmptyInstance() => create();
  static $pb.PbList<MsgClearAdmin> createRepeated() => $pb.PbList<MsgClearAdmin>();
  @$core.pragma('dart2js:noInline')
  static MsgClearAdmin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgClearAdmin>(create);
  static MsgClearAdmin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sender => $_getSZ(0);
  @$pb.TagNumber(1)
  set sender($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get contract => $_getSZ(1);
  @$pb.TagNumber(3)
  set contract($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasContract() => $_has(1);
  @$pb.TagNumber(3)
  void clearContract() => clearField(3);
}

class MsgClearAdminResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgClearAdminResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgClearAdminResponse._() : super();
  factory MsgClearAdminResponse() => create();
  factory MsgClearAdminResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgClearAdminResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgClearAdminResponse clone() => MsgClearAdminResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgClearAdminResponse copyWith(void Function(MsgClearAdminResponse) updates) => super.copyWith((message) => updates(message as MsgClearAdminResponse)) as MsgClearAdminResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgClearAdminResponse create() => MsgClearAdminResponse._();
  MsgClearAdminResponse createEmptyInstance() => create();
  static $pb.PbList<MsgClearAdminResponse> createRepeated() => $pb.PbList<MsgClearAdminResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgClearAdminResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgClearAdminResponse>(create);
  static MsgClearAdminResponse? _defaultInstance;
}

