///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pb.dart' as $3;
import '../../../cosmos/base/query/v1beta1/pagination.pb.dart' as $5;

class QueryContractInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryContractInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  QueryContractInfoRequest._() : super();
  factory QueryContractInfoRequest({
    $core.String? address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory QueryContractInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContractInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContractInfoRequest clone() => QueryContractInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContractInfoRequest copyWith(void Function(QueryContractInfoRequest) updates) => super.copyWith((message) => updates(message as QueryContractInfoRequest)) as QueryContractInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryContractInfoRequest create() => QueryContractInfoRequest._();
  QueryContractInfoRequest createEmptyInstance() => create();
  static $pb.PbList<QueryContractInfoRequest> createRepeated() => $pb.PbList<QueryContractInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryContractInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContractInfoRequest>(create);
  static QueryContractInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class QueryContractInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryContractInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<$3.ContractInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractInfo', subBuilder: $3.ContractInfo.create)
    ..hasRequiredFields = false
  ;

  QueryContractInfoResponse._() : super();
  factory QueryContractInfoResponse({
    $core.String? address,
    $3.ContractInfo? contractInfo,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (contractInfo != null) {
      _result.contractInfo = contractInfo;
    }
    return _result;
  }
  factory QueryContractInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContractInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContractInfoResponse clone() => QueryContractInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContractInfoResponse copyWith(void Function(QueryContractInfoResponse) updates) => super.copyWith((message) => updates(message as QueryContractInfoResponse)) as QueryContractInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryContractInfoResponse create() => QueryContractInfoResponse._();
  QueryContractInfoResponse createEmptyInstance() => create();
  static $pb.PbList<QueryContractInfoResponse> createRepeated() => $pb.PbList<QueryContractInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryContractInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContractInfoResponse>(create);
  static QueryContractInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $3.ContractInfo get contractInfo => $_getN(1);
  @$pb.TagNumber(2)
  set contractInfo($3.ContractInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContractInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractInfo() => clearField(2);
  @$pb.TagNumber(2)
  $3.ContractInfo ensureContractInfo() => $_ensure(1);
}

class QueryContractHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryContractHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<$5.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryContractHistoryRequest._() : super();
  factory QueryContractHistoryRequest({
    $core.String? address,
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryContractHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContractHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContractHistoryRequest clone() => QueryContractHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContractHistoryRequest copyWith(void Function(QueryContractHistoryRequest) updates) => super.copyWith((message) => updates(message as QueryContractHistoryRequest)) as QueryContractHistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryContractHistoryRequest create() => QueryContractHistoryRequest._();
  QueryContractHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<QueryContractHistoryRequest> createRepeated() => $pb.PbList<QueryContractHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryContractHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContractHistoryRequest>(create);
  static QueryContractHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $5.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageRequest ensurePagination() => $_ensure(1);
}

class QueryContractHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryContractHistoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..pc<$3.ContractCodeHistoryEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entries', $pb.PbFieldType.PM, subBuilder: $3.ContractCodeHistoryEntry.create)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryContractHistoryResponse._() : super();
  factory QueryContractHistoryResponse({
    $core.Iterable<$3.ContractCodeHistoryEntry>? entries,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (entries != null) {
      _result.entries.addAll(entries);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryContractHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContractHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContractHistoryResponse clone() => QueryContractHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContractHistoryResponse copyWith(void Function(QueryContractHistoryResponse) updates) => super.copyWith((message) => updates(message as QueryContractHistoryResponse)) as QueryContractHistoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryContractHistoryResponse create() => QueryContractHistoryResponse._();
  QueryContractHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<QueryContractHistoryResponse> createRepeated() => $pb.PbList<QueryContractHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryContractHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContractHistoryResponse>(create);
  static QueryContractHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.ContractCodeHistoryEntry> get entries => $_getList(0);

  @$pb.TagNumber(2)
  $5.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageResponse ensurePagination() => $_ensure(1);
}

class QueryContractsByCodeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryContractsByCodeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$5.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryContractsByCodeRequest._() : super();
  factory QueryContractsByCodeRequest({
    $fixnum.Int64? codeId,
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (codeId != null) {
      _result.codeId = codeId;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryContractsByCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContractsByCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContractsByCodeRequest clone() => QueryContractsByCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContractsByCodeRequest copyWith(void Function(QueryContractsByCodeRequest) updates) => super.copyWith((message) => updates(message as QueryContractsByCodeRequest)) as QueryContractsByCodeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryContractsByCodeRequest create() => QueryContractsByCodeRequest._();
  QueryContractsByCodeRequest createEmptyInstance() => create();
  static $pb.PbList<QueryContractsByCodeRequest> createRepeated() => $pb.PbList<QueryContractsByCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryContractsByCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContractsByCodeRequest>(create);
  static QueryContractsByCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get codeId => $_getI64(0);
  @$pb.TagNumber(1)
  set codeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeId() => clearField(1);

  @$pb.TagNumber(2)
  $5.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageRequest ensurePagination() => $_ensure(1);
}

class QueryContractsByCodeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryContractsByCodeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contracts')
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryContractsByCodeResponse._() : super();
  factory QueryContractsByCodeResponse({
    $core.Iterable<$core.String>? contracts,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (contracts != null) {
      _result.contracts.addAll(contracts);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryContractsByCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryContractsByCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryContractsByCodeResponse clone() => QueryContractsByCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryContractsByCodeResponse copyWith(void Function(QueryContractsByCodeResponse) updates) => super.copyWith((message) => updates(message as QueryContractsByCodeResponse)) as QueryContractsByCodeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryContractsByCodeResponse create() => QueryContractsByCodeResponse._();
  QueryContractsByCodeResponse createEmptyInstance() => create();
  static $pb.PbList<QueryContractsByCodeResponse> createRepeated() => $pb.PbList<QueryContractsByCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryContractsByCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryContractsByCodeResponse>(create);
  static QueryContractsByCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get contracts => $_getList(0);

  @$pb.TagNumber(2)
  $5.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageResponse ensurePagination() => $_ensure(1);
}

class QueryAllContractStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllContractStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<$5.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryAllContractStateRequest._() : super();
  factory QueryAllContractStateRequest({
    $core.String? address,
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllContractStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllContractStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllContractStateRequest clone() => QueryAllContractStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllContractStateRequest copyWith(void Function(QueryAllContractStateRequest) updates) => super.copyWith((message) => updates(message as QueryAllContractStateRequest)) as QueryAllContractStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllContractStateRequest create() => QueryAllContractStateRequest._();
  QueryAllContractStateRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllContractStateRequest> createRepeated() => $pb.PbList<QueryAllContractStateRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllContractStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllContractStateRequest>(create);
  static QueryAllContractStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $5.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageRequest ensurePagination() => $_ensure(1);
}

class QueryAllContractStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllContractStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..pc<$3.Model>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'models', $pb.PbFieldType.PM, subBuilder: $3.Model.create)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryAllContractStateResponse._() : super();
  factory QueryAllContractStateResponse({
    $core.Iterable<$3.Model>? models,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (models != null) {
      _result.models.addAll(models);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllContractStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllContractStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllContractStateResponse clone() => QueryAllContractStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllContractStateResponse copyWith(void Function(QueryAllContractStateResponse) updates) => super.copyWith((message) => updates(message as QueryAllContractStateResponse)) as QueryAllContractStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllContractStateResponse create() => QueryAllContractStateResponse._();
  QueryAllContractStateResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllContractStateResponse> createRepeated() => $pb.PbList<QueryAllContractStateResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllContractStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllContractStateResponse>(create);
  static QueryAllContractStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.Model> get models => $_getList(0);

  @$pb.TagNumber(2)
  $5.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageResponse ensurePagination() => $_ensure(1);
}

class QueryRawContractStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryRawContractStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queryData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  QueryRawContractStateRequest._() : super();
  factory QueryRawContractStateRequest({
    $core.String? address,
    $core.List<$core.int>? queryData,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (queryData != null) {
      _result.queryData = queryData;
    }
    return _result;
  }
  factory QueryRawContractStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRawContractStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRawContractStateRequest clone() => QueryRawContractStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRawContractStateRequest copyWith(void Function(QueryRawContractStateRequest) updates) => super.copyWith((message) => updates(message as QueryRawContractStateRequest)) as QueryRawContractStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryRawContractStateRequest create() => QueryRawContractStateRequest._();
  QueryRawContractStateRequest createEmptyInstance() => create();
  static $pb.PbList<QueryRawContractStateRequest> createRepeated() => $pb.PbList<QueryRawContractStateRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryRawContractStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRawContractStateRequest>(create);
  static QueryRawContractStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get queryData => $_getN(1);
  @$pb.TagNumber(2)
  set queryData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQueryData() => $_has(1);
  @$pb.TagNumber(2)
  void clearQueryData() => clearField(2);
}

class QueryRawContractStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryRawContractStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  QueryRawContractStateResponse._() : super();
  factory QueryRawContractStateResponse({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory QueryRawContractStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRawContractStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRawContractStateResponse clone() => QueryRawContractStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRawContractStateResponse copyWith(void Function(QueryRawContractStateResponse) updates) => super.copyWith((message) => updates(message as QueryRawContractStateResponse)) as QueryRawContractStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryRawContractStateResponse create() => QueryRawContractStateResponse._();
  QueryRawContractStateResponse createEmptyInstance() => create();
  static $pb.PbList<QueryRawContractStateResponse> createRepeated() => $pb.PbList<QueryRawContractStateResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryRawContractStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRawContractStateResponse>(create);
  static QueryRawContractStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class QuerySmartContractStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuerySmartContractStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queryData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  QuerySmartContractStateRequest._() : super();
  factory QuerySmartContractStateRequest({
    $core.String? address,
    $core.List<$core.int>? queryData,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (queryData != null) {
      _result.queryData = queryData;
    }
    return _result;
  }
  factory QuerySmartContractStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuerySmartContractStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuerySmartContractStateRequest clone() => QuerySmartContractStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuerySmartContractStateRequest copyWith(void Function(QuerySmartContractStateRequest) updates) => super.copyWith((message) => updates(message as QuerySmartContractStateRequest)) as QuerySmartContractStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuerySmartContractStateRequest create() => QuerySmartContractStateRequest._();
  QuerySmartContractStateRequest createEmptyInstance() => create();
  static $pb.PbList<QuerySmartContractStateRequest> createRepeated() => $pb.PbList<QuerySmartContractStateRequest>();
  @$core.pragma('dart2js:noInline')
  static QuerySmartContractStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuerySmartContractStateRequest>(create);
  static QuerySmartContractStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get queryData => $_getN(1);
  @$pb.TagNumber(2)
  set queryData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQueryData() => $_has(1);
  @$pb.TagNumber(2)
  void clearQueryData() => clearField(2);
}

class QuerySmartContractStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuerySmartContractStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  QuerySmartContractStateResponse._() : super();
  factory QuerySmartContractStateResponse({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory QuerySmartContractStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuerySmartContractStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuerySmartContractStateResponse clone() => QuerySmartContractStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuerySmartContractStateResponse copyWith(void Function(QuerySmartContractStateResponse) updates) => super.copyWith((message) => updates(message as QuerySmartContractStateResponse)) as QuerySmartContractStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuerySmartContractStateResponse create() => QuerySmartContractStateResponse._();
  QuerySmartContractStateResponse createEmptyInstance() => create();
  static $pb.PbList<QuerySmartContractStateResponse> createRepeated() => $pb.PbList<QuerySmartContractStateResponse>();
  @$core.pragma('dart2js:noInline')
  static QuerySmartContractStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuerySmartContractStateResponse>(create);
  static QuerySmartContractStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class QueryCodeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCodeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryCodeRequest._() : super();
  factory QueryCodeRequest({
    $fixnum.Int64? codeId,
  }) {
    final _result = create();
    if (codeId != null) {
      _result.codeId = codeId;
    }
    return _result;
  }
  factory QueryCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCodeRequest clone() => QueryCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCodeRequest copyWith(void Function(QueryCodeRequest) updates) => super.copyWith((message) => updates(message as QueryCodeRequest)) as QueryCodeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCodeRequest create() => QueryCodeRequest._();
  QueryCodeRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCodeRequest> createRepeated() => $pb.PbList<QueryCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCodeRequest>(create);
  static QueryCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get codeId => $_getI64(0);
  @$pb.TagNumber(1)
  set codeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeId() => clearField(1);
}

class CodeInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CodeInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataHash', $pb.PbFieldType.OY)
    ..aOM<$3.AccessConfig>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instantiatePermission', subBuilder: $3.AccessConfig.create)
    ..hasRequiredFields = false
  ;

  CodeInfoResponse._() : super();
  factory CodeInfoResponse({
    $fixnum.Int64? codeId,
    $core.String? creator,
    $core.List<$core.int>? dataHash,
    $3.AccessConfig? instantiatePermission,
  }) {
    final _result = create();
    if (codeId != null) {
      _result.codeId = codeId;
    }
    if (creator != null) {
      _result.creator = creator;
    }
    if (dataHash != null) {
      _result.dataHash = dataHash;
    }
    if (instantiatePermission != null) {
      _result.instantiatePermission = instantiatePermission;
    }
    return _result;
  }
  factory CodeInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CodeInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CodeInfoResponse clone() => CodeInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CodeInfoResponse copyWith(void Function(CodeInfoResponse) updates) => super.copyWith((message) => updates(message as CodeInfoResponse)) as CodeInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CodeInfoResponse create() => CodeInfoResponse._();
  CodeInfoResponse createEmptyInstance() => create();
  static $pb.PbList<CodeInfoResponse> createRepeated() => $pb.PbList<CodeInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static CodeInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CodeInfoResponse>(create);
  static CodeInfoResponse? _defaultInstance;

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
  $core.List<$core.int> get dataHash => $_getN(2);
  @$pb.TagNumber(3)
  set dataHash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataHash() => clearField(3);

  @$pb.TagNumber(6)
  $3.AccessConfig get instantiatePermission => $_getN(3);
  @$pb.TagNumber(6)
  set instantiatePermission($3.AccessConfig v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInstantiatePermission() => $_has(3);
  @$pb.TagNumber(6)
  void clearInstantiatePermission() => clearField(6);
  @$pb.TagNumber(6)
  $3.AccessConfig ensureInstantiatePermission() => $_ensure(3);
}

class QueryCodeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCodeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOM<CodeInfoResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeInfo', subBuilder: CodeInfoResponse.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  QueryCodeResponse._() : super();
  factory QueryCodeResponse({
    CodeInfoResponse? codeInfo,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (codeInfo != null) {
      _result.codeInfo = codeInfo;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory QueryCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCodeResponse clone() => QueryCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCodeResponse copyWith(void Function(QueryCodeResponse) updates) => super.copyWith((message) => updates(message as QueryCodeResponse)) as QueryCodeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCodeResponse create() => QueryCodeResponse._();
  QueryCodeResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCodeResponse> createRepeated() => $pb.PbList<QueryCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCodeResponse>(create);
  static QueryCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CodeInfoResponse get codeInfo => $_getN(0);
  @$pb.TagNumber(1)
  set codeInfo(CodeInfoResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeInfo() => clearField(1);
  @$pb.TagNumber(1)
  CodeInfoResponse ensureCodeInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class QueryCodesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCodesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOM<$5.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryCodesRequest._() : super();
  factory QueryCodesRequest({
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryCodesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCodesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCodesRequest clone() => QueryCodesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCodesRequest copyWith(void Function(QueryCodesRequest) updates) => super.copyWith((message) => updates(message as QueryCodesRequest)) as QueryCodesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCodesRequest create() => QueryCodesRequest._();
  QueryCodesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCodesRequest> createRepeated() => $pb.PbList<QueryCodesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCodesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCodesRequest>(create);
  static QueryCodesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $5.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($5.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $5.PageRequest ensurePagination() => $_ensure(0);
}

class QueryCodesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCodesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..pc<CodeInfoResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeInfos', $pb.PbFieldType.PM, subBuilder: CodeInfoResponse.create)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryCodesResponse._() : super();
  factory QueryCodesResponse({
    $core.Iterable<CodeInfoResponse>? codeInfos,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (codeInfos != null) {
      _result.codeInfos.addAll(codeInfos);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryCodesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCodesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCodesResponse clone() => QueryCodesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCodesResponse copyWith(void Function(QueryCodesResponse) updates) => super.copyWith((message) => updates(message as QueryCodesResponse)) as QueryCodesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCodesResponse create() => QueryCodesResponse._();
  QueryCodesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCodesResponse> createRepeated() => $pb.PbList<QueryCodesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCodesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCodesResponse>(create);
  static QueryCodesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CodeInfoResponse> get codeInfos => $_getList(0);

  @$pb.TagNumber(2)
  $5.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageResponse ensurePagination() => $_ensure(1);
}

class QueryPinnedCodesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPinnedCodesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOM<$5.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryPinnedCodesRequest._() : super();
  factory QueryPinnedCodesRequest({
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPinnedCodesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPinnedCodesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPinnedCodesRequest clone() => QueryPinnedCodesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPinnedCodesRequest copyWith(void Function(QueryPinnedCodesRequest) updates) => super.copyWith((message) => updates(message as QueryPinnedCodesRequest)) as QueryPinnedCodesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPinnedCodesRequest create() => QueryPinnedCodesRequest._();
  QueryPinnedCodesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryPinnedCodesRequest> createRepeated() => $pb.PbList<QueryPinnedCodesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryPinnedCodesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPinnedCodesRequest>(create);
  static QueryPinnedCodesRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $5.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(2)
  set pagination($5.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageRequest ensurePagination() => $_ensure(0);
}

class QueryPinnedCodesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryPinnedCodesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeIds', $pb.PbFieldType.KU6)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryPinnedCodesResponse._() : super();
  factory QueryPinnedCodesResponse({
    $core.Iterable<$fixnum.Int64>? codeIds,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (codeIds != null) {
      _result.codeIds.addAll(codeIds);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryPinnedCodesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryPinnedCodesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryPinnedCodesResponse clone() => QueryPinnedCodesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryPinnedCodesResponse copyWith(void Function(QueryPinnedCodesResponse) updates) => super.copyWith((message) => updates(message as QueryPinnedCodesResponse)) as QueryPinnedCodesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryPinnedCodesResponse create() => QueryPinnedCodesResponse._();
  QueryPinnedCodesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryPinnedCodesResponse> createRepeated() => $pb.PbList<QueryPinnedCodesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryPinnedCodesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryPinnedCodesResponse>(create);
  static QueryPinnedCodesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get codeIds => $_getList(0);

  @$pb.TagNumber(2)
  $5.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageResponse ensurePagination() => $_ensure(1);
}

