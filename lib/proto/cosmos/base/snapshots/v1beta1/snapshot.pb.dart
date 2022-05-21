///
//  Generated code. Do not modify.
//  source: cosmos/base/snapshots/v1beta1/snapshot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Snapshot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Snapshot', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.snapshots.v1beta1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'format', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunks', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..aOM<Metadata>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', subBuilder: Metadata.create)
    ..hasRequiredFields = false
  ;

  Snapshot._() : super();
  factory Snapshot({
    $fixnum.Int64? height,
    $core.int? format,
    $core.int? chunks,
    $core.List<$core.int>? hash,
    Metadata? metadata,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    if (format != null) {
      _result.format = format;
    }
    if (chunks != null) {
      _result.chunks = chunks;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory Snapshot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Snapshot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Snapshot clone() => Snapshot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Snapshot copyWith(void Function(Snapshot) updates) => super.copyWith((message) => updates(message as Snapshot)) as Snapshot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Snapshot create() => Snapshot._();
  Snapshot createEmptyInstance() => create();
  static $pb.PbList<Snapshot> createRepeated() => $pb.PbList<Snapshot>();
  @$core.pragma('dart2js:noInline')
  static Snapshot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Snapshot>(create);
  static Snapshot? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get format => $_getIZ(1);
  @$pb.TagNumber(2)
  set format($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearFormat() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get chunks => $_getIZ(2);
  @$pb.TagNumber(3)
  set chunks($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChunks() => $_has(2);
  @$pb.TagNumber(3)
  void clearChunks() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get hash => $_getN(3);
  @$pb.TagNumber(4)
  set hash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearHash() => clearField(4);

  @$pb.TagNumber(5)
  Metadata get metadata => $_getN(4);
  @$pb.TagNumber(5)
  set metadata(Metadata v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMetadata() => $_has(4);
  @$pb.TagNumber(5)
  void clearMetadata() => clearField(5);
  @$pb.TagNumber(5)
  Metadata ensureMetadata() => $_ensure(4);
}

class Metadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Metadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.snapshots.v1beta1'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chunkHashes', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  Metadata._() : super();
  factory Metadata({
    $core.Iterable<$core.List<$core.int>>? chunkHashes,
  }) {
    final _result = create();
    if (chunkHashes != null) {
      _result.chunkHashes.addAll(chunkHashes);
    }
    return _result;
  }
  factory Metadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) => super.copyWith((message) => updates(message as Metadata)) as Metadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get chunkHashes => $_getList(0);
}

enum SnapshotItem_Item {
  store, 
  iavl, 
  extension_3, 
  extensionPayload, 
  notSet
}

class SnapshotItem extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SnapshotItem_Item> _SnapshotItem_ItemByTag = {
    1 : SnapshotItem_Item.store,
    2 : SnapshotItem_Item.iavl,
    3 : SnapshotItem_Item.extension_3,
    4 : SnapshotItem_Item.extensionPayload,
    0 : SnapshotItem_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.snapshots.v1beta1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<SnapshotStoreItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'store', subBuilder: SnapshotStoreItem.create)
    ..aOM<SnapshotIAVLItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iavl', subBuilder: SnapshotIAVLItem.create)
    ..aOM<SnapshotExtensionMeta>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extension', subBuilder: SnapshotExtensionMeta.create)
    ..aOM<SnapshotExtensionPayload>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extensionPayload', subBuilder: SnapshotExtensionPayload.create)
    ..hasRequiredFields = false
  ;

  SnapshotItem._() : super();
  factory SnapshotItem({
    SnapshotStoreItem? store,
    SnapshotIAVLItem? iavl,
    SnapshotExtensionMeta? extension_3,
    SnapshotExtensionPayload? extensionPayload,
  }) {
    final _result = create();
    if (store != null) {
      _result.store = store;
    }
    if (iavl != null) {
      _result.iavl = iavl;
    }
    if (extension_3 != null) {
      _result.extension_3 = extension_3;
    }
    if (extensionPayload != null) {
      _result.extensionPayload = extensionPayload;
    }
    return _result;
  }
  factory SnapshotItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotItem clone() => SnapshotItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotItem copyWith(void Function(SnapshotItem) updates) => super.copyWith((message) => updates(message as SnapshotItem)) as SnapshotItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SnapshotItem create() => SnapshotItem._();
  SnapshotItem createEmptyInstance() => create();
  static $pb.PbList<SnapshotItem> createRepeated() => $pb.PbList<SnapshotItem>();
  @$core.pragma('dart2js:noInline')
  static SnapshotItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotItem>(create);
  static SnapshotItem? _defaultInstance;

  SnapshotItem_Item whichItem() => _SnapshotItem_ItemByTag[$_whichOneof(0)]!;
  void clearItem() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SnapshotStoreItem get store => $_getN(0);
  @$pb.TagNumber(1)
  set store(SnapshotStoreItem v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStore() => $_has(0);
  @$pb.TagNumber(1)
  void clearStore() => clearField(1);
  @$pb.TagNumber(1)
  SnapshotStoreItem ensureStore() => $_ensure(0);

  @$pb.TagNumber(2)
  SnapshotIAVLItem get iavl => $_getN(1);
  @$pb.TagNumber(2)
  set iavl(SnapshotIAVLItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIavl() => $_has(1);
  @$pb.TagNumber(2)
  void clearIavl() => clearField(2);
  @$pb.TagNumber(2)
  SnapshotIAVLItem ensureIavl() => $_ensure(1);

  @$pb.TagNumber(3)
  SnapshotExtensionMeta get extension_3 => $_getN(2);
  @$pb.TagNumber(3)
  set extension_3(SnapshotExtensionMeta v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtension_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtension_3() => clearField(3);
  @$pb.TagNumber(3)
  SnapshotExtensionMeta ensureExtension_3() => $_ensure(2);

  @$pb.TagNumber(4)
  SnapshotExtensionPayload get extensionPayload => $_getN(3);
  @$pb.TagNumber(4)
  set extensionPayload(SnapshotExtensionPayload v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtensionPayload() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtensionPayload() => clearField(4);
  @$pb.TagNumber(4)
  SnapshotExtensionPayload ensureExtensionPayload() => $_ensure(3);
}

class SnapshotStoreItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotStoreItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.snapshots.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  SnapshotStoreItem._() : super();
  factory SnapshotStoreItem({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory SnapshotStoreItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotStoreItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotStoreItem clone() => SnapshotStoreItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotStoreItem copyWith(void Function(SnapshotStoreItem) updates) => super.copyWith((message) => updates(message as SnapshotStoreItem)) as SnapshotStoreItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SnapshotStoreItem create() => SnapshotStoreItem._();
  SnapshotStoreItem createEmptyInstance() => create();
  static $pb.PbList<SnapshotStoreItem> createRepeated() => $pb.PbList<SnapshotStoreItem>();
  @$core.pragma('dart2js:noInline')
  static SnapshotStoreItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotStoreItem>(create);
  static SnapshotStoreItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class SnapshotIAVLItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotIAVLItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.snapshots.v1beta1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SnapshotIAVLItem._() : super();
  factory SnapshotIAVLItem({
    $core.List<$core.int>? key,
    $core.List<$core.int>? value,
    $fixnum.Int64? version,
    $core.int? height,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (version != null) {
      _result.version = version;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory SnapshotIAVLItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotIAVLItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotIAVLItem clone() => SnapshotIAVLItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotIAVLItem copyWith(void Function(SnapshotIAVLItem) updates) => super.copyWith((message) => updates(message as SnapshotIAVLItem)) as SnapshotIAVLItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SnapshotIAVLItem create() => SnapshotIAVLItem._();
  SnapshotIAVLItem createEmptyInstance() => create();
  static $pb.PbList<SnapshotIAVLItem> createRepeated() => $pb.PbList<SnapshotIAVLItem>();
  @$core.pragma('dart2js:noInline')
  static SnapshotIAVLItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotIAVLItem>(create);
  static SnapshotIAVLItem? _defaultInstance;

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

  @$pb.TagNumber(3)
  $fixnum.Int64 get version => $_getI64(2);
  @$pb.TagNumber(3)
  set version($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get height => $_getIZ(3);
  @$pb.TagNumber(4)
  set height($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);
}

class SnapshotExtensionMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotExtensionMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.snapshots.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'format', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SnapshotExtensionMeta._() : super();
  factory SnapshotExtensionMeta({
    $core.String? name,
    $core.int? format,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (format != null) {
      _result.format = format;
    }
    return _result;
  }
  factory SnapshotExtensionMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotExtensionMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotExtensionMeta clone() => SnapshotExtensionMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotExtensionMeta copyWith(void Function(SnapshotExtensionMeta) updates) => super.copyWith((message) => updates(message as SnapshotExtensionMeta)) as SnapshotExtensionMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SnapshotExtensionMeta create() => SnapshotExtensionMeta._();
  SnapshotExtensionMeta createEmptyInstance() => create();
  static $pb.PbList<SnapshotExtensionMeta> createRepeated() => $pb.PbList<SnapshotExtensionMeta>();
  @$core.pragma('dart2js:noInline')
  static SnapshotExtensionMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotExtensionMeta>(create);
  static SnapshotExtensionMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get format => $_getIZ(1);
  @$pb.TagNumber(2)
  set format($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFormat() => $_has(1);
  @$pb.TagNumber(2)
  void clearFormat() => clearField(2);
}

class SnapshotExtensionPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotExtensionPayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.snapshots.v1beta1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SnapshotExtensionPayload._() : super();
  factory SnapshotExtensionPayload({
    $core.List<$core.int>? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory SnapshotExtensionPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotExtensionPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotExtensionPayload clone() => SnapshotExtensionPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotExtensionPayload copyWith(void Function(SnapshotExtensionPayload) updates) => super.copyWith((message) => updates(message as SnapshotExtensionPayload)) as SnapshotExtensionPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SnapshotExtensionPayload create() => SnapshotExtensionPayload._();
  SnapshotExtensionPayload createEmptyInstance() => create();
  static $pb.PbList<SnapshotExtensionPayload> createRepeated() => $pb.PbList<SnapshotExtensionPayload>();
  @$core.pragma('dart2js:noInline')
  static SnapshotExtensionPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotExtensionPayload>(create);
  static SnapshotExtensionPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
}

