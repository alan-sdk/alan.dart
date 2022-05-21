///
//  Generated code. Do not modify.
//  source: cosmos/base/store/v1beta1/listening.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StoreKVPair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoreKVPair', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.store.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeKey')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'delete')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  StoreKVPair._() : super();
  factory StoreKVPair({
    $core.String? storeKey,
    $core.bool? delete,
    $core.List<$core.int>? key,
    $core.List<$core.int>? value,
  }) {
    final _result = create();
    if (storeKey != null) {
      _result.storeKey = storeKey;
    }
    if (delete != null) {
      _result.delete = delete;
    }
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory StoreKVPair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoreKVPair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoreKVPair clone() => StoreKVPair()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoreKVPair copyWith(void Function(StoreKVPair) updates) => super.copyWith((message) => updates(message as StoreKVPair)) as StoreKVPair; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoreKVPair create() => StoreKVPair._();
  StoreKVPair createEmptyInstance() => create();
  static $pb.PbList<StoreKVPair> createRepeated() => $pb.PbList<StoreKVPair>();
  @$core.pragma('dart2js:noInline')
  static StoreKVPair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoreKVPair>(create);
  static StoreKVPair? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get delete => $_getBF(1);
  @$pb.TagNumber(2)
  set delete($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDelete() => $_has(1);
  @$pb.TagNumber(2)
  void clearDelete() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get key => $_getN(2);
  @$pb.TagNumber(3)
  set key($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
}

