///
//  Generated code. Do not modify.
//  source: tendermint/libs/bits/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class BitArray extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BitArray', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.libs.bits'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bits')
    ..p<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'elems', $pb.PbFieldType.PU6)
    ..hasRequiredFields = false
  ;

  BitArray._() : super();
  factory BitArray({
    $fixnum.Int64? bits,
    $core.Iterable<$fixnum.Int64>? elems,
  }) {
    final _result = create();
    if (bits != null) {
      _result.bits = bits;
    }
    if (elems != null) {
      _result.elems.addAll(elems);
    }
    return _result;
  }
  factory BitArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BitArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BitArray clone() => BitArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BitArray copyWith(void Function(BitArray) updates) => super.copyWith((message) => updates(message as BitArray)) as BitArray; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BitArray create() => BitArray._();
  BitArray createEmptyInstance() => create();
  static $pb.PbList<BitArray> createRepeated() => $pb.PbList<BitArray>();
  @$core.pragma('dart2js:noInline')
  static BitArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BitArray>(create);
  static BitArray? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bits => $_getI64(0);
  @$pb.TagNumber(1)
  set bits($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBits() => $_has(0);
  @$pb.TagNumber(1)
  void clearBits() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get elems => $_getList(1);
}

