///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

enum SnapshotItem_Item {
  store,
  iavl,
  notSet
}

class SnapshotItem extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SnapshotItem_Item> _SnapshotItem_ItemByTag = {
    1 : SnapshotItem_Item.store,
    2 : SnapshotItem_Item.iavl,
    0 : SnapshotItem_Item.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.store.v1beta1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SnapshotStoreItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'store', subBuilder: SnapshotStoreItem.create)
    ..aOM<SnapshotIAVLItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'iavl', subBuilder: SnapshotIAVLItem.create)
    ..hasRequiredFields = false
  ;

  SnapshotItem._() : super();
  factory SnapshotItem({
    SnapshotStoreItem? store,
    SnapshotIAVLItem? iavl,
  }) {
    final _result = create();
    if (store != null) {
      _result.store = store;
    }
    if (iavl != null) {
      _result.iavl = iavl;
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
}

class SnapshotStoreItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotStoreItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.store.v1beta1'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SnapshotIAVLItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.store.v1beta1'), createEmptyInstance: create)
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

