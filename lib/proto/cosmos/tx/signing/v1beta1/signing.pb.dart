///
//  Generated code. Do not modify.
//  source: cosmos/tx/signing/v1beta1/signing.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/any.pb.dart' as $0;
import '../../../crypto/multisig/v1beta1/multisig.pb.dart' as $1;

import 'signing.pbenum.dart';

export 'signing.pbenum.dart';

class SignatureDescriptors extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignatureDescriptors', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.signing.v1beta1'), createEmptyInstance: create)
    ..pc<SignatureDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PM, subBuilder: SignatureDescriptor.create)
    ..hasRequiredFields = false
  ;

  SignatureDescriptors._() : super();
  factory SignatureDescriptors({
    $core.Iterable<SignatureDescriptor>? signatures,
  }) {
    final _result = create();
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    return _result;
  }
  factory SignatureDescriptors.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureDescriptors.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureDescriptors clone() => SignatureDescriptors()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureDescriptors copyWith(void Function(SignatureDescriptors) updates) => super.copyWith((message) => updates(message as SignatureDescriptors)) as SignatureDescriptors; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptors create() => SignatureDescriptors._();
  SignatureDescriptors createEmptyInstance() => create();
  static $pb.PbList<SignatureDescriptors> createRepeated() => $pb.PbList<SignatureDescriptors>();
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptors getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureDescriptors>(create);
  static SignatureDescriptors? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SignatureDescriptor> get signatures => $_getList(0);
}

class SignatureDescriptor_Data_Single extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignatureDescriptor.Data.Single', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.signing.v1beta1'), createEmptyInstance: create)
    ..e<SignMode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: SignMode.SIGN_MODE_UNSPECIFIED, valueOf: SignMode.valueOf, enumValues: SignMode.values)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignatureDescriptor_Data_Single._() : super();
  factory SignatureDescriptor_Data_Single({
    SignMode? mode,
    $core.List<$core.int>? signature,
  }) {
    final _result = create();
    if (mode != null) {
      _result.mode = mode;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory SignatureDescriptor_Data_Single.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureDescriptor_Data_Single.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureDescriptor_Data_Single clone() => SignatureDescriptor_Data_Single()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureDescriptor_Data_Single copyWith(void Function(SignatureDescriptor_Data_Single) updates) => super.copyWith((message) => updates(message as SignatureDescriptor_Data_Single)) as SignatureDescriptor_Data_Single; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor_Data_Single create() => SignatureDescriptor_Data_Single._();
  SignatureDescriptor_Data_Single createEmptyInstance() => create();
  static $pb.PbList<SignatureDescriptor_Data_Single> createRepeated() => $pb.PbList<SignatureDescriptor_Data_Single>();
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor_Data_Single getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureDescriptor_Data_Single>(create);
  static SignatureDescriptor_Data_Single? _defaultInstance;

  @$pb.TagNumber(1)
  SignMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(SignMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class SignatureDescriptor_Data_Multi extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignatureDescriptor.Data.Multi', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.signing.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.CompactBitArray>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bitarray', subBuilder: $1.CompactBitArray.create)
    ..pc<SignatureDescriptor_Data>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PM, subBuilder: SignatureDescriptor_Data.create)
    ..hasRequiredFields = false
  ;

  SignatureDescriptor_Data_Multi._() : super();
  factory SignatureDescriptor_Data_Multi({
    $1.CompactBitArray? bitarray,
    $core.Iterable<SignatureDescriptor_Data>? signatures,
  }) {
    final _result = create();
    if (bitarray != null) {
      _result.bitarray = bitarray;
    }
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    return _result;
  }
  factory SignatureDescriptor_Data_Multi.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureDescriptor_Data_Multi.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureDescriptor_Data_Multi clone() => SignatureDescriptor_Data_Multi()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureDescriptor_Data_Multi copyWith(void Function(SignatureDescriptor_Data_Multi) updates) => super.copyWith((message) => updates(message as SignatureDescriptor_Data_Multi)) as SignatureDescriptor_Data_Multi; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor_Data_Multi create() => SignatureDescriptor_Data_Multi._();
  SignatureDescriptor_Data_Multi createEmptyInstance() => create();
  static $pb.PbList<SignatureDescriptor_Data_Multi> createRepeated() => $pb.PbList<SignatureDescriptor_Data_Multi>();
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor_Data_Multi getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureDescriptor_Data_Multi>(create);
  static SignatureDescriptor_Data_Multi? _defaultInstance;

  @$pb.TagNumber(1)
  $1.CompactBitArray get bitarray => $_getN(0);
  @$pb.TagNumber(1)
  set bitarray($1.CompactBitArray v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBitarray() => $_has(0);
  @$pb.TagNumber(1)
  void clearBitarray() => clearField(1);
  @$pb.TagNumber(1)
  $1.CompactBitArray ensureBitarray() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<SignatureDescriptor_Data> get signatures => $_getList(1);
}

enum SignatureDescriptor_Data_Sum {
  single, 
  multi, 
  notSet
}

class SignatureDescriptor_Data extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SignatureDescriptor_Data_Sum> _SignatureDescriptor_Data_SumByTag = {
    1 : SignatureDescriptor_Data_Sum.single,
    2 : SignatureDescriptor_Data_Sum.multi,
    0 : SignatureDescriptor_Data_Sum.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignatureDescriptor.Data', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.signing.v1beta1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SignatureDescriptor_Data_Single>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'single', subBuilder: SignatureDescriptor_Data_Single.create)
    ..aOM<SignatureDescriptor_Data_Multi>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multi', subBuilder: SignatureDescriptor_Data_Multi.create)
    ..hasRequiredFields = false
  ;

  SignatureDescriptor_Data._() : super();
  factory SignatureDescriptor_Data({
    SignatureDescriptor_Data_Single? single,
    SignatureDescriptor_Data_Multi? multi,
  }) {
    final _result = create();
    if (single != null) {
      _result.single = single;
    }
    if (multi != null) {
      _result.multi = multi;
    }
    return _result;
  }
  factory SignatureDescriptor_Data.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureDescriptor_Data.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureDescriptor_Data clone() => SignatureDescriptor_Data()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureDescriptor_Data copyWith(void Function(SignatureDescriptor_Data) updates) => super.copyWith((message) => updates(message as SignatureDescriptor_Data)) as SignatureDescriptor_Data; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor_Data create() => SignatureDescriptor_Data._();
  SignatureDescriptor_Data createEmptyInstance() => create();
  static $pb.PbList<SignatureDescriptor_Data> createRepeated() => $pb.PbList<SignatureDescriptor_Data>();
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor_Data getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureDescriptor_Data>(create);
  static SignatureDescriptor_Data? _defaultInstance;

  SignatureDescriptor_Data_Sum whichSum() => _SignatureDescriptor_Data_SumByTag[$_whichOneof(0)]!;
  void clearSum() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SignatureDescriptor_Data_Single get single => $_getN(0);
  @$pb.TagNumber(1)
  set single(SignatureDescriptor_Data_Single v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSingle() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingle() => clearField(1);
  @$pb.TagNumber(1)
  SignatureDescriptor_Data_Single ensureSingle() => $_ensure(0);

  @$pb.TagNumber(2)
  SignatureDescriptor_Data_Multi get multi => $_getN(1);
  @$pb.TagNumber(2)
  set multi(SignatureDescriptor_Data_Multi v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMulti() => $_has(1);
  @$pb.TagNumber(2)
  void clearMulti() => clearField(2);
  @$pb.TagNumber(2)
  SignatureDescriptor_Data_Multi ensureMulti() => $_ensure(1);
}

class SignatureDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignatureDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.signing.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.Any>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', subBuilder: $0.Any.create)
    ..aOM<SignatureDescriptor_Data>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: SignatureDescriptor_Data.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SignatureDescriptor._() : super();
  factory SignatureDescriptor({
    $0.Any? publicKey,
    SignatureDescriptor_Data? data,
    $fixnum.Int64? sequence,
  }) {
    final _result = create();
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (data != null) {
      _result.data = data;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    return _result;
  }
  factory SignatureDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureDescriptor clone() => SignatureDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureDescriptor copyWith(void Function(SignatureDescriptor) updates) => super.copyWith((message) => updates(message as SignatureDescriptor)) as SignatureDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor create() => SignatureDescriptor._();
  SignatureDescriptor createEmptyInstance() => create();
  static $pb.PbList<SignatureDescriptor> createRepeated() => $pb.PbList<SignatureDescriptor>();
  @$core.pragma('dart2js:noInline')
  static SignatureDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureDescriptor>(create);
  static SignatureDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Any get publicKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicKey($0.Any v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensurePublicKey() => $_ensure(0);

  @$pb.TagNumber(2)
  SignatureDescriptor_Data get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(SignatureDescriptor_Data v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  SignatureDescriptor_Data ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sequence => $_getI64(2);
  @$pb.TagNumber(3)
  set sequence($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSequence() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequence() => clearField(3);
}

