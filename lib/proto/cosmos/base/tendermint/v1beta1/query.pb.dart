///
//  Generated code. Do not modify.
//  source: cosmos/base/tendermint/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../query/v1beta1/pagination.pb.dart' as $1;
import '../../../../google/protobuf/any.pb.dart' as $2;
import '../../../../tendermint/types/types.pb.dart' as $3;
import '../../../../tendermint/types/block.pb.dart' as $4;
import '../../../../tendermint/p2p/types.pb.dart' as $5;

class GetValidatorSetByHeightRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetValidatorSetByHeightRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height')
    ..aOM<$1.PageRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PageRequest.create)
    ..hasRequiredFields = false
  ;

  GetValidatorSetByHeightRequest._() : super();
  factory GetValidatorSetByHeightRequest({
    $fixnum.Int64? height,
    $1.PageRequest? pagination,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory GetValidatorSetByHeightRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetValidatorSetByHeightRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetValidatorSetByHeightRequest clone() => GetValidatorSetByHeightRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetValidatorSetByHeightRequest copyWith(void Function(GetValidatorSetByHeightRequest) updates) => super.copyWith((message) => updates(message as GetValidatorSetByHeightRequest)) as GetValidatorSetByHeightRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetValidatorSetByHeightRequest create() => GetValidatorSetByHeightRequest._();
  GetValidatorSetByHeightRequest createEmptyInstance() => create();
  static $pb.PbList<GetValidatorSetByHeightRequest> createRepeated() => $pb.PbList<GetValidatorSetByHeightRequest>();
  @$core.pragma('dart2js:noInline')
  static GetValidatorSetByHeightRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetValidatorSetByHeightRequest>(create);
  static GetValidatorSetByHeightRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $1.PageRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PageRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PageRequest ensurePagination() => $_ensure(1);
}

class GetValidatorSetByHeightResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetValidatorSetByHeightResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight')
    ..pc<Validator>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validators', $pb.PbFieldType.PM, subBuilder: Validator.create)
    ..aOM<$1.PageResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PageResponse.create)
    ..hasRequiredFields = false
  ;

  GetValidatorSetByHeightResponse._() : super();
  factory GetValidatorSetByHeightResponse({
    $fixnum.Int64? blockHeight,
    $core.Iterable<Validator>? validators,
    $1.PageResponse? pagination,
  }) {
    final _result = create();
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (validators != null) {
      _result.validators.addAll(validators);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory GetValidatorSetByHeightResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetValidatorSetByHeightResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetValidatorSetByHeightResponse clone() => GetValidatorSetByHeightResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetValidatorSetByHeightResponse copyWith(void Function(GetValidatorSetByHeightResponse) updates) => super.copyWith((message) => updates(message as GetValidatorSetByHeightResponse)) as GetValidatorSetByHeightResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetValidatorSetByHeightResponse create() => GetValidatorSetByHeightResponse._();
  GetValidatorSetByHeightResponse createEmptyInstance() => create();
  static $pb.PbList<GetValidatorSetByHeightResponse> createRepeated() => $pb.PbList<GetValidatorSetByHeightResponse>();
  @$core.pragma('dart2js:noInline')
  static GetValidatorSetByHeightResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetValidatorSetByHeightResponse>(create);
  static GetValidatorSetByHeightResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set blockHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Validator> get validators => $_getList(1);

  @$pb.TagNumber(3)
  $1.PageResponse get pagination => $_getN(2);
  @$pb.TagNumber(3)
  set pagination($1.PageResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPagination() => $_has(2);
  @$pb.TagNumber(3)
  void clearPagination() => clearField(3);
  @$pb.TagNumber(3)
  $1.PageResponse ensurePagination() => $_ensure(2);
}

class GetLatestValidatorSetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestValidatorSetRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PageRequest.create)
    ..hasRequiredFields = false
  ;

  GetLatestValidatorSetRequest._() : super();
  factory GetLatestValidatorSetRequest({
    $1.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory GetLatestValidatorSetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestValidatorSetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestValidatorSetRequest clone() => GetLatestValidatorSetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestValidatorSetRequest copyWith(void Function(GetLatestValidatorSetRequest) updates) => super.copyWith((message) => updates(message as GetLatestValidatorSetRequest)) as GetLatestValidatorSetRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestValidatorSetRequest create() => GetLatestValidatorSetRequest._();
  GetLatestValidatorSetRequest createEmptyInstance() => create();
  static $pb.PbList<GetLatestValidatorSetRequest> createRepeated() => $pb.PbList<GetLatestValidatorSetRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLatestValidatorSetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestValidatorSetRequest>(create);
  static GetLatestValidatorSetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($1.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $1.PageRequest ensurePagination() => $_ensure(0);
}

class GetLatestValidatorSetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestValidatorSetResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight')
    ..pc<Validator>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validators', $pb.PbFieldType.PM, subBuilder: Validator.create)
    ..aOM<$1.PageResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PageResponse.create)
    ..hasRequiredFields = false
  ;

  GetLatestValidatorSetResponse._() : super();
  factory GetLatestValidatorSetResponse({
    $fixnum.Int64? blockHeight,
    $core.Iterable<Validator>? validators,
    $1.PageResponse? pagination,
  }) {
    final _result = create();
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (validators != null) {
      _result.validators.addAll(validators);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory GetLatestValidatorSetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestValidatorSetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestValidatorSetResponse clone() => GetLatestValidatorSetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestValidatorSetResponse copyWith(void Function(GetLatestValidatorSetResponse) updates) => super.copyWith((message) => updates(message as GetLatestValidatorSetResponse)) as GetLatestValidatorSetResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestValidatorSetResponse create() => GetLatestValidatorSetResponse._();
  GetLatestValidatorSetResponse createEmptyInstance() => create();
  static $pb.PbList<GetLatestValidatorSetResponse> createRepeated() => $pb.PbList<GetLatestValidatorSetResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLatestValidatorSetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestValidatorSetResponse>(create);
  static GetLatestValidatorSetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get blockHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set blockHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Validator> get validators => $_getList(1);

  @$pb.TagNumber(3)
  $1.PageResponse get pagination => $_getN(2);
  @$pb.TagNumber(3)
  set pagination($1.PageResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPagination() => $_has(2);
  @$pb.TagNumber(3)
  void clearPagination() => clearField(3);
  @$pb.TagNumber(3)
  $1.PageResponse ensurePagination() => $_ensure(2);
}

class Validator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Validator', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aOM<$2.Any>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey', subBuilder: $2.Any.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'votingPower')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'proposerPriority')
    ..hasRequiredFields = false
  ;

  Validator._() : super();
  factory Validator({
    $core.String? address,
    $2.Any? pubKey,
    $fixnum.Int64? votingPower,
    $fixnum.Int64? proposerPriority,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (votingPower != null) {
      _result.votingPower = votingPower;
    }
    if (proposerPriority != null) {
      _result.proposerPriority = proposerPriority;
    }
    return _result;
  }
  factory Validator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Validator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Validator clone() => Validator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Validator copyWith(void Function(Validator) updates) => super.copyWith((message) => updates(message as Validator)) as Validator; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Validator create() => Validator._();
  Validator createEmptyInstance() => create();
  static $pb.PbList<Validator> createRepeated() => $pb.PbList<Validator>();
  @$core.pragma('dart2js:noInline')
  static Validator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Validator>(create);
  static Validator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $2.Any get pubKey => $_getN(1);
  @$pb.TagNumber(2)
  set pubKey($2.Any v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKey() => clearField(2);
  @$pb.TagNumber(2)
  $2.Any ensurePubKey() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get votingPower => $_getI64(2);
  @$pb.TagNumber(3)
  set votingPower($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVotingPower() => $_has(2);
  @$pb.TagNumber(3)
  void clearVotingPower() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get proposerPriority => $_getI64(3);
  @$pb.TagNumber(4)
  set proposerPriority($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasProposerPriority() => $_has(3);
  @$pb.TagNumber(4)
  void clearProposerPriority() => clearField(4);
}

class GetBlockByHeightRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockByHeightRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height')
    ..hasRequiredFields = false
  ;

  GetBlockByHeightRequest._() : super();
  factory GetBlockByHeightRequest({
    $fixnum.Int64? height,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory GetBlockByHeightRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockByHeightRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockByHeightRequest clone() => GetBlockByHeightRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockByHeightRequest copyWith(void Function(GetBlockByHeightRequest) updates) => super.copyWith((message) => updates(message as GetBlockByHeightRequest)) as GetBlockByHeightRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockByHeightRequest create() => GetBlockByHeightRequest._();
  GetBlockByHeightRequest createEmptyInstance() => create();
  static $pb.PbList<GetBlockByHeightRequest> createRepeated() => $pb.PbList<GetBlockByHeightRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBlockByHeightRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockByHeightRequest>(create);
  static GetBlockByHeightRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);
}

class GetBlockByHeightResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBlockByHeightResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOM<$3.BlockID>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockId', subBuilder: $3.BlockID.create)
    ..aOM<$4.Block>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'block', subBuilder: $4.Block.create)
    ..hasRequiredFields = false
  ;

  GetBlockByHeightResponse._() : super();
  factory GetBlockByHeightResponse({
    $3.BlockID? blockId,
    $4.Block? block,
  }) {
    final _result = create();
    if (blockId != null) {
      _result.blockId = blockId;
    }
    if (block != null) {
      _result.block = block;
    }
    return _result;
  }
  factory GetBlockByHeightResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBlockByHeightResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBlockByHeightResponse clone() => GetBlockByHeightResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBlockByHeightResponse copyWith(void Function(GetBlockByHeightResponse) updates) => super.copyWith((message) => updates(message as GetBlockByHeightResponse)) as GetBlockByHeightResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBlockByHeightResponse create() => GetBlockByHeightResponse._();
  GetBlockByHeightResponse createEmptyInstance() => create();
  static $pb.PbList<GetBlockByHeightResponse> createRepeated() => $pb.PbList<GetBlockByHeightResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBlockByHeightResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBlockByHeightResponse>(create);
  static GetBlockByHeightResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.BlockID get blockId => $_getN(0);
  @$pb.TagNumber(1)
  set blockId($3.BlockID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockId() => clearField(1);
  @$pb.TagNumber(1)
  $3.BlockID ensureBlockId() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.Block get block => $_getN(1);
  @$pb.TagNumber(2)
  set block($4.Block v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlock() => clearField(2);
  @$pb.TagNumber(2)
  $4.Block ensureBlock() => $_ensure(1);
}

class GetLatestBlockRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestBlockRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetLatestBlockRequest._() : super();
  factory GetLatestBlockRequest() => create();
  factory GetLatestBlockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestBlockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestBlockRequest clone() => GetLatestBlockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestBlockRequest copyWith(void Function(GetLatestBlockRequest) updates) => super.copyWith((message) => updates(message as GetLatestBlockRequest)) as GetLatestBlockRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockRequest create() => GetLatestBlockRequest._();
  GetLatestBlockRequest createEmptyInstance() => create();
  static $pb.PbList<GetLatestBlockRequest> createRepeated() => $pb.PbList<GetLatestBlockRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestBlockRequest>(create);
  static GetLatestBlockRequest? _defaultInstance;
}

class GetLatestBlockResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLatestBlockResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOM<$3.BlockID>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockId', subBuilder: $3.BlockID.create)
    ..aOM<$4.Block>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'block', subBuilder: $4.Block.create)
    ..hasRequiredFields = false
  ;

  GetLatestBlockResponse._() : super();
  factory GetLatestBlockResponse({
    $3.BlockID? blockId,
    $4.Block? block,
  }) {
    final _result = create();
    if (blockId != null) {
      _result.blockId = blockId;
    }
    if (block != null) {
      _result.block = block;
    }
    return _result;
  }
  factory GetLatestBlockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLatestBlockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLatestBlockResponse clone() => GetLatestBlockResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLatestBlockResponse copyWith(void Function(GetLatestBlockResponse) updates) => super.copyWith((message) => updates(message as GetLatestBlockResponse)) as GetLatestBlockResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockResponse create() => GetLatestBlockResponse._();
  GetLatestBlockResponse createEmptyInstance() => create();
  static $pb.PbList<GetLatestBlockResponse> createRepeated() => $pb.PbList<GetLatestBlockResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLatestBlockResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLatestBlockResponse>(create);
  static GetLatestBlockResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.BlockID get blockId => $_getN(0);
  @$pb.TagNumber(1)
  set blockId($3.BlockID v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockId() => clearField(1);
  @$pb.TagNumber(1)
  $3.BlockID ensureBlockId() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.Block get block => $_getN(1);
  @$pb.TagNumber(2)
  set block($4.Block v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlock() => clearField(2);
  @$pb.TagNumber(2)
  $4.Block ensureBlock() => $_ensure(1);
}

class GetSyncingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSyncingRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetSyncingRequest._() : super();
  factory GetSyncingRequest() => create();
  factory GetSyncingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSyncingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSyncingRequest clone() => GetSyncingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSyncingRequest copyWith(void Function(GetSyncingRequest) updates) => super.copyWith((message) => updates(message as GetSyncingRequest)) as GetSyncingRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSyncingRequest create() => GetSyncingRequest._();
  GetSyncingRequest createEmptyInstance() => create();
  static $pb.PbList<GetSyncingRequest> createRepeated() => $pb.PbList<GetSyncingRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSyncingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSyncingRequest>(create);
  static GetSyncingRequest? _defaultInstance;
}

class GetSyncingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSyncingResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncing')
    ..hasRequiredFields = false
  ;

  GetSyncingResponse._() : super();
  factory GetSyncingResponse({
    $core.bool? syncing,
  }) {
    final _result = create();
    if (syncing != null) {
      _result.syncing = syncing;
    }
    return _result;
  }
  factory GetSyncingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSyncingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSyncingResponse clone() => GetSyncingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSyncingResponse copyWith(void Function(GetSyncingResponse) updates) => super.copyWith((message) => updates(message as GetSyncingResponse)) as GetSyncingResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSyncingResponse create() => GetSyncingResponse._();
  GetSyncingResponse createEmptyInstance() => create();
  static $pb.PbList<GetSyncingResponse> createRepeated() => $pb.PbList<GetSyncingResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSyncingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSyncingResponse>(create);
  static GetSyncingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get syncing => $_getBF(0);
  @$pb.TagNumber(1)
  set syncing($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSyncing() => $_has(0);
  @$pb.TagNumber(1)
  void clearSyncing() => clearField(1);
}

class GetNodeInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNodeInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetNodeInfoRequest._() : super();
  factory GetNodeInfoRequest() => create();
  factory GetNodeInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNodeInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNodeInfoRequest clone() => GetNodeInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNodeInfoRequest copyWith(void Function(GetNodeInfoRequest) updates) => super.copyWith((message) => updates(message as GetNodeInfoRequest)) as GetNodeInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNodeInfoRequest create() => GetNodeInfoRequest._();
  GetNodeInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetNodeInfoRequest> createRepeated() => $pb.PbList<GetNodeInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNodeInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNodeInfoRequest>(create);
  static GetNodeInfoRequest? _defaultInstance;
}

class GetNodeInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetNodeInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOM<$5.DefaultNodeInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultNodeInfo', subBuilder: $5.DefaultNodeInfo.create)
    ..aOM<VersionInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applicationVersion', subBuilder: VersionInfo.create)
    ..hasRequiredFields = false
  ;

  GetNodeInfoResponse._() : super();
  factory GetNodeInfoResponse({
    $5.DefaultNodeInfo? defaultNodeInfo,
    VersionInfo? applicationVersion,
  }) {
    final _result = create();
    if (defaultNodeInfo != null) {
      _result.defaultNodeInfo = defaultNodeInfo;
    }
    if (applicationVersion != null) {
      _result.applicationVersion = applicationVersion;
    }
    return _result;
  }
  factory GetNodeInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNodeInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNodeInfoResponse clone() => GetNodeInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNodeInfoResponse copyWith(void Function(GetNodeInfoResponse) updates) => super.copyWith((message) => updates(message as GetNodeInfoResponse)) as GetNodeInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNodeInfoResponse create() => GetNodeInfoResponse._();
  GetNodeInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetNodeInfoResponse> createRepeated() => $pb.PbList<GetNodeInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNodeInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNodeInfoResponse>(create);
  static GetNodeInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $5.DefaultNodeInfo get defaultNodeInfo => $_getN(0);
  @$pb.TagNumber(1)
  set defaultNodeInfo($5.DefaultNodeInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDefaultNodeInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDefaultNodeInfo() => clearField(1);
  @$pb.TagNumber(1)
  $5.DefaultNodeInfo ensureDefaultNodeInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  VersionInfo get applicationVersion => $_getN(1);
  @$pb.TagNumber(2)
  set applicationVersion(VersionInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplicationVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplicationVersion() => clearField(2);
  @$pb.TagNumber(2)
  VersionInfo ensureApplicationVersion() => $_ensure(1);
}

class VersionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VersionInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gitCommit')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildTags')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'goVersion')
    ..pc<Module>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildDeps', $pb.PbFieldType.PM, subBuilder: Module.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cosmosSdkVersion')
    ..hasRequiredFields = false
  ;

  VersionInfo._() : super();
  factory VersionInfo({
    $core.String? name,
    $core.String? appName,
    $core.String? version,
    $core.String? gitCommit,
    $core.String? buildTags,
    $core.String? goVersion,
    $core.Iterable<Module>? buildDeps,
    $core.String? cosmosSdkVersion,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (appName != null) {
      _result.appName = appName;
    }
    if (version != null) {
      _result.version = version;
    }
    if (gitCommit != null) {
      _result.gitCommit = gitCommit;
    }
    if (buildTags != null) {
      _result.buildTags = buildTags;
    }
    if (goVersion != null) {
      _result.goVersion = goVersion;
    }
    if (buildDeps != null) {
      _result.buildDeps.addAll(buildDeps);
    }
    if (cosmosSdkVersion != null) {
      _result.cosmosSdkVersion = cosmosSdkVersion;
    }
    return _result;
  }
  factory VersionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VersionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VersionInfo clone() => VersionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VersionInfo copyWith(void Function(VersionInfo) updates) => super.copyWith((message) => updates(message as VersionInfo)) as VersionInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VersionInfo create() => VersionInfo._();
  VersionInfo createEmptyInstance() => create();
  static $pb.PbList<VersionInfo> createRepeated() => $pb.PbList<VersionInfo>();
  @$core.pragma('dart2js:noInline')
  static VersionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VersionInfo>(create);
  static VersionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appName => $_getSZ(1);
  @$pb.TagNumber(2)
  set appName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gitCommit => $_getSZ(3);
  @$pb.TagNumber(4)
  set gitCommit($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGitCommit() => $_has(3);
  @$pb.TagNumber(4)
  void clearGitCommit() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get buildTags => $_getSZ(4);
  @$pb.TagNumber(5)
  set buildTags($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBuildTags() => $_has(4);
  @$pb.TagNumber(5)
  void clearBuildTags() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get goVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set goVersion($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGoVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearGoVersion() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Module> get buildDeps => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get cosmosSdkVersion => $_getSZ(7);
  @$pb.TagNumber(8)
  set cosmosSdkVersion($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCosmosSdkVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearCosmosSdkVersion() => clearField(8);
}

class Module extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Module', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.tendermint.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sum')
    ..hasRequiredFields = false
  ;

  Module._() : super();
  factory Module({
    $core.String? path,
    $core.String? version,
    $core.String? sum,
  }) {
    final _result = create();
    if (path != null) {
      _result.path = path;
    }
    if (version != null) {
      _result.version = version;
    }
    if (sum != null) {
      _result.sum = sum;
    }
    return _result;
  }
  factory Module.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Module.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Module clone() => Module()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Module copyWith(void Function(Module) updates) => super.copyWith((message) => updates(message as Module)) as Module; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Module create() => Module._();
  Module createEmptyInstance() => create();
  static $pb.PbList<Module> createRepeated() => $pb.PbList<Module>();
  @$core.pragma('dart2js:noInline')
  static Module getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Module>(create);
  static Module? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sum => $_getSZ(2);
  @$pb.TagNumber(3)
  set sum($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSum() => $_has(2);
  @$pb.TagNumber(3)
  void clearSum() => clearField(3);
}

