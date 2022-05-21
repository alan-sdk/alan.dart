///
//  Generated code. Do not modify.
//  source: cosmos/crypto/multisig/keys.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $0;

class LegacyAminoPubKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LegacyAminoPubKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.crypto.multisig'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'threshold', $pb.PbFieldType.OU3)
    ..pc<$0.Any>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKeys', $pb.PbFieldType.PM, subBuilder: $0.Any.create)
    ..hasRequiredFields = false
  ;

  LegacyAminoPubKey._() : super();
  factory LegacyAminoPubKey({
    $core.int? threshold,
    $core.Iterable<$0.Any>? publicKeys,
  }) {
    final _result = create();
    if (threshold != null) {
      _result.threshold = threshold;
    }
    if (publicKeys != null) {
      _result.publicKeys.addAll(publicKeys);
    }
    return _result;
  }
  factory LegacyAminoPubKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LegacyAminoPubKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LegacyAminoPubKey clone() => LegacyAminoPubKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LegacyAminoPubKey copyWith(void Function(LegacyAminoPubKey) updates) => super.copyWith((message) => updates(message as LegacyAminoPubKey)) as LegacyAminoPubKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LegacyAminoPubKey create() => LegacyAminoPubKey._();
  LegacyAminoPubKey createEmptyInstance() => create();
  static $pb.PbList<LegacyAminoPubKey> createRepeated() => $pb.PbList<LegacyAminoPubKey>();
  @$core.pragma('dart2js:noInline')
  static LegacyAminoPubKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LegacyAminoPubKey>(create);
  static LegacyAminoPubKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get threshold => $_getIZ(0);
  @$pb.TagNumber(1)
  set threshold($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasThreshold() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreshold() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.Any> get publicKeys => $_getList(1);
}

