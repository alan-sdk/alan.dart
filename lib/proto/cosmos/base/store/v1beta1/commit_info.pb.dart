///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CommitInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommitInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.store.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..pc<StoreInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeInfos', $pb.PbFieldType.PM, subBuilder: StoreInfo.create)
    ..hasRequiredFields = false
  ;

  CommitInfo._() : super();
  factory CommitInfo({
    $fixnum.Int64? version,
    $core.Iterable<StoreInfo>? storeInfos,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (storeInfos != null) {
      _result.storeInfos.addAll(storeInfos);
    }
    return _result;
  }
  factory CommitInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommitInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommitInfo clone() => CommitInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommitInfo copyWith(void Function(CommitInfo) updates) => super.copyWith((message) => updates(message as CommitInfo)) as CommitInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommitInfo create() => CommitInfo._();
  CommitInfo createEmptyInstance() => create();
  static $pb.PbList<CommitInfo> createRepeated() => $pb.PbList<CommitInfo>();
  @$core.pragma('dart2js:noInline')
  static CommitInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommitInfo>(create);
  static CommitInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get version => $_getI64(0);
  @$pb.TagNumber(1)
  set version($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<StoreInfo> get storeInfos => $_getList(1);
}

class StoreInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.store.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<CommitID>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitId', subBuilder: CommitID.create)
    ..hasRequiredFields = false
  ;

  StoreInfo._() : super();
  factory StoreInfo({
    $core.String? name,
    CommitID? commitId,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (commitId != null) {
      _result.commitId = commitId;
    }
    return _result;
  }
  factory StoreInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreInfo clone() => StoreInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreInfo copyWith(void Function(StoreInfo) updates) => super.copyWith((message) => updates(message as StoreInfo)) as StoreInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreInfo create() => StoreInfo._();
  StoreInfo createEmptyInstance() => create();
  static $pb.PbList<StoreInfo> createRepeated() => $pb.PbList<StoreInfo>();
  @$core.pragma('dart2js:noInline')
  static StoreInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreInfo>(create);
  static StoreInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  CommitID get commitId => $_getN(1);
  @$pb.TagNumber(2)
  set commitId(CommitID v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommitId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommitId() => clearField(2);
  @$pb.TagNumber(2)
  CommitID ensureCommitId() => $_ensure(1);
}

class CommitID extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommitID', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.store.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CommitID._() : super();
  factory CommitID({
    $fixnum.Int64? version,
    $core.List<$core.int>? hash,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    return _result;
  }
  factory CommitID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommitID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommitID clone() => CommitID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommitID copyWith(void Function(CommitID) updates) => super.copyWith((message) => updates(message as CommitID)) as CommitID; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommitID create() => CommitID._();
  CommitID createEmptyInstance() => create();
  static $pb.PbList<CommitID> createRepeated() => $pb.PbList<CommitID>();
  @$core.pragma('dart2js:noInline')
  static CommitID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommitID>(create);
  static CommitID? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get version => $_getI64(0);
  @$pb.TagNumber(1)
  set version($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hash => $_getN(1);
  @$pb.TagNumber(2)
  set hash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);
}

