///
//  Generated code. Do not modify.
//  source: cosmos/authz/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../base/query/v1beta1/pagination.pb.dart' as $5;
import 'authz.pb.dart' as $6;

class QueryGrantsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGrantsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.authz.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'granter')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantee')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgTypeUrl')
    ..aOM<$5.PageRequest>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryGrantsRequest._() : super();
  factory QueryGrantsRequest({
    $core.String? granter,
    $core.String? grantee,
    $core.String? msgTypeUrl,
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (granter != null) {
      _result.granter = granter;
    }
    if (grantee != null) {
      _result.grantee = grantee;
    }
    if (msgTypeUrl != null) {
      _result.msgTypeUrl = msgTypeUrl;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryGrantsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGrantsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGrantsRequest clone() => QueryGrantsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGrantsRequest copyWith(void Function(QueryGrantsRequest) updates) => super.copyWith((message) => updates(message as QueryGrantsRequest)) as QueryGrantsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGrantsRequest create() => QueryGrantsRequest._();
  QueryGrantsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGrantsRequest> createRepeated() => $pb.PbList<QueryGrantsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGrantsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGrantsRequest>(create);
  static QueryGrantsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get granter => $_getSZ(0);
  @$pb.TagNumber(1)
  set granter($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGranter() => $_has(0);
  @$pb.TagNumber(1)
  void clearGranter() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get grantee => $_getSZ(1);
  @$pb.TagNumber(2)
  set grantee($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGrantee() => $_has(1);
  @$pb.TagNumber(2)
  void clearGrantee() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get msgTypeUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set msgTypeUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsgTypeUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsgTypeUrl() => clearField(3);

  @$pb.TagNumber(4)
  $5.PageRequest get pagination => $_getN(3);
  @$pb.TagNumber(4)
  set pagination($5.PageRequest v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPagination() => $_has(3);
  @$pb.TagNumber(4)
  void clearPagination() => clearField(4);
  @$pb.TagNumber(4)
  $5.PageRequest ensurePagination() => $_ensure(3);
}

class QueryGrantsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGrantsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.authz.v1beta1'), createEmptyInstance: create)
    ..pc<$6.Grant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grants', $pb.PbFieldType.PM, subBuilder: $6.Grant.create)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryGrantsResponse._() : super();
  factory QueryGrantsResponse({
    $core.Iterable<$6.Grant>? grants,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (grants != null) {
      _result.grants.addAll(grants);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryGrantsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGrantsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGrantsResponse clone() => QueryGrantsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGrantsResponse copyWith(void Function(QueryGrantsResponse) updates) => super.copyWith((message) => updates(message as QueryGrantsResponse)) as QueryGrantsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGrantsResponse create() => QueryGrantsResponse._();
  QueryGrantsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGrantsResponse> createRepeated() => $pb.PbList<QueryGrantsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGrantsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGrantsResponse>(create);
  static QueryGrantsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.Grant> get grants => $_getList(0);

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

class QueryGranterGrantsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGranterGrantsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.authz.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'granter')
    ..aOM<$5.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryGranterGrantsRequest._() : super();
  factory QueryGranterGrantsRequest({
    $core.String? granter,
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (granter != null) {
      _result.granter = granter;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryGranterGrantsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGranterGrantsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGranterGrantsRequest clone() => QueryGranterGrantsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGranterGrantsRequest copyWith(void Function(QueryGranterGrantsRequest) updates) => super.copyWith((message) => updates(message as QueryGranterGrantsRequest)) as QueryGranterGrantsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGranterGrantsRequest create() => QueryGranterGrantsRequest._();
  QueryGranterGrantsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGranterGrantsRequest> createRepeated() => $pb.PbList<QueryGranterGrantsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGranterGrantsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGranterGrantsRequest>(create);
  static QueryGranterGrantsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get granter => $_getSZ(0);
  @$pb.TagNumber(1)
  set granter($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGranter() => $_has(0);
  @$pb.TagNumber(1)
  void clearGranter() => clearField(1);

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

class QueryGranterGrantsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGranterGrantsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.authz.v1beta1'), createEmptyInstance: create)
    ..pc<$6.GrantAuthorization>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grants', $pb.PbFieldType.PM, subBuilder: $6.GrantAuthorization.create)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryGranterGrantsResponse._() : super();
  factory QueryGranterGrantsResponse({
    $core.Iterable<$6.GrantAuthorization>? grants,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (grants != null) {
      _result.grants.addAll(grants);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryGranterGrantsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGranterGrantsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGranterGrantsResponse clone() => QueryGranterGrantsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGranterGrantsResponse copyWith(void Function(QueryGranterGrantsResponse) updates) => super.copyWith((message) => updates(message as QueryGranterGrantsResponse)) as QueryGranterGrantsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGranterGrantsResponse create() => QueryGranterGrantsResponse._();
  QueryGranterGrantsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGranterGrantsResponse> createRepeated() => $pb.PbList<QueryGranterGrantsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGranterGrantsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGranterGrantsResponse>(create);
  static QueryGranterGrantsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.GrantAuthorization> get grants => $_getList(0);

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

class QueryGranteeGrantsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGranteeGrantsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.authz.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grantee')
    ..aOM<$5.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryGranteeGrantsRequest._() : super();
  factory QueryGranteeGrantsRequest({
    $core.String? grantee,
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (grantee != null) {
      _result.grantee = grantee;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryGranteeGrantsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGranteeGrantsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGranteeGrantsRequest clone() => QueryGranteeGrantsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGranteeGrantsRequest copyWith(void Function(QueryGranteeGrantsRequest) updates) => super.copyWith((message) => updates(message as QueryGranteeGrantsRequest)) as QueryGranteeGrantsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGranteeGrantsRequest create() => QueryGranteeGrantsRequest._();
  QueryGranteeGrantsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGranteeGrantsRequest> createRepeated() => $pb.PbList<QueryGranteeGrantsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGranteeGrantsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGranteeGrantsRequest>(create);
  static QueryGranteeGrantsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get grantee => $_getSZ(0);
  @$pb.TagNumber(1)
  set grantee($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGrantee() => $_has(0);
  @$pb.TagNumber(1)
  void clearGrantee() => clearField(1);

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

class QueryGranteeGrantsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGranteeGrantsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.authz.v1beta1'), createEmptyInstance: create)
    ..pc<$6.GrantAuthorization>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'grants', $pb.PbFieldType.PM, subBuilder: $6.GrantAuthorization.create)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryGranteeGrantsResponse._() : super();
  factory QueryGranteeGrantsResponse({
    $core.Iterable<$6.GrantAuthorization>? grants,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (grants != null) {
      _result.grants.addAll(grants);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryGranteeGrantsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGranteeGrantsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGranteeGrantsResponse clone() => QueryGranteeGrantsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGranteeGrantsResponse copyWith(void Function(QueryGranteeGrantsResponse) updates) => super.copyWith((message) => updates(message as QueryGranteeGrantsResponse)) as QueryGranteeGrantsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGranteeGrantsResponse create() => QueryGranteeGrantsResponse._();
  QueryGranteeGrantsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGranteeGrantsResponse> createRepeated() => $pb.PbList<QueryGranteeGrantsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGranteeGrantsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGranteeGrantsResponse>(create);
  static QueryGranteeGrantsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$6.GrantAuthorization> get grants => $_getList(0);

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

