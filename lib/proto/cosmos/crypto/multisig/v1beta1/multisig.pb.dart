///
//  Generated code. Do not modify.
//  source: cosmos/crypto/multisig/v1beta1/multisig.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MultiSignature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MultiSignature', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.crypto.multisig.v1beta1'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  MultiSignature._() : super();
  factory MultiSignature({
    $core.Iterable<$core.List<$core.int>>? signatures,
  }) {
    final _result = create();
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    return _result;
  }
  factory MultiSignature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiSignature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiSignature clone() => MultiSignature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiSignature copyWith(void Function(MultiSignature) updates) => super.copyWith((message) => updates(message as MultiSignature)) as MultiSignature; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultiSignature create() => MultiSignature._();
  MultiSignature createEmptyInstance() => create();
  static $pb.PbList<MultiSignature> createRepeated() => $pb.PbList<MultiSignature>();
  @$core.pragma('dart2js:noInline')
  static MultiSignature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiSignature>(create);
  static MultiSignature? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get signatures => $_getList(0);
}

class CompactBitArray extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CompactBitArray', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.crypto.multisig.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraBitsStored', $pb.PbFieldType.OU3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'elems', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CompactBitArray._() : super();
  factory CompactBitArray({
    $core.int? extraBitsStored,
    $core.List<$core.int>? elems,
  }) {
    final _result = create();
    if (extraBitsStored != null) {
      _result.extraBitsStored = extraBitsStored;
    }
    if (elems != null) {
      _result.elems = elems;
    }
    return _result;
  }
  factory CompactBitArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompactBitArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CompactBitArray clone() => CompactBitArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CompactBitArray copyWith(void Function(CompactBitArray) updates) => super.copyWith((message) => updates(message as CompactBitArray)) as CompactBitArray; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompactBitArray create() => CompactBitArray._();
  CompactBitArray createEmptyInstance() => create();
  static $pb.PbList<CompactBitArray> createRepeated() => $pb.PbList<CompactBitArray>();
  @$core.pragma('dart2js:noInline')
  static CompactBitArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CompactBitArray>(create);
  static CompactBitArray? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get extraBitsStored => $_getIZ(0);
  @$pb.TagNumber(1)
  set extraBitsStored($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExtraBitsStored() => $_has(0);
  @$pb.TagNumber(1)
  void clearExtraBitsStored() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get elems => $_getN(1);
  @$pb.TagNumber(2)
  set elems($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasElems() => $_has(1);
  @$pb.TagNumber(2)
  void clearElems() => clearField(2);
}

