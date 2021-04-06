///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $2;
import '../../base/v1beta1/coin.pb.dart' as $4;
import '../../crypto/multisig/v1beta1/multisig.pb.dart' as $3;
import '../signing/v1beta1/signing.pbenum.dart' as $5;

class Tx extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Tx', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..aOM<TxBody>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body', subBuilder: TxBody.create)
    ..aOM<AuthInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authInfo', subBuilder: AuthInfo.create)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  Tx._() : super();
  factory Tx({
    TxBody? body,
    AuthInfo? authInfo,
    $core.Iterable<$core.List<$core.int>>? signatures,
  }) {
    final _result = create();
    if (body != null) {
      _result.body = body;
    }
    if (authInfo != null) {
      _result.authInfo = authInfo;
    }
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    return _result;
  }
  factory Tx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tx clone() => Tx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tx copyWith(void Function(Tx) updates) => super.copyWith((message) => updates(message as Tx)) as Tx; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tx create() => Tx._();
  Tx createEmptyInstance() => create();
  static $pb.PbList<Tx> createRepeated() => $pb.PbList<Tx>();
  @$core.pragma('dart2js:noInline')
  static Tx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tx>(create);
  static Tx? _defaultInstance;

  @$pb.TagNumber(1)
  TxBody get body => $_getN(0);
  @$pb.TagNumber(1)
  set body(TxBody v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
  @$pb.TagNumber(1)
  TxBody ensureBody() => $_ensure(0);

  @$pb.TagNumber(2)
  AuthInfo get authInfo => $_getN(1);
  @$pb.TagNumber(2)
  set authInfo(AuthInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthInfo() => clearField(2);
  @$pb.TagNumber(2)
  AuthInfo ensureAuthInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get signatures => $_getList(2);
}

class TxRaw extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxRaw', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bodyBytes', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authInfoBytes', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signatures', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  TxRaw._() : super();
  factory TxRaw({
    $core.List<$core.int>? bodyBytes,
    $core.List<$core.int>? authInfoBytes,
    $core.Iterable<$core.List<$core.int>>? signatures,
  }) {
    final _result = create();
    if (bodyBytes != null) {
      _result.bodyBytes = bodyBytes;
    }
    if (authInfoBytes != null) {
      _result.authInfoBytes = authInfoBytes;
    }
    if (signatures != null) {
      _result.signatures.addAll(signatures);
    }
    return _result;
  }
  factory TxRaw.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxRaw.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxRaw clone() => TxRaw()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxRaw copyWith(void Function(TxRaw) updates) => super.copyWith((message) => updates(message as TxRaw)) as TxRaw; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxRaw create() => TxRaw._();
  TxRaw createEmptyInstance() => create();
  static $pb.PbList<TxRaw> createRepeated() => $pb.PbList<TxRaw>();
  @$core.pragma('dart2js:noInline')
  static TxRaw getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxRaw>(create);
  static TxRaw? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bodyBytes => $_getN(0);
  @$pb.TagNumber(1)
  set bodyBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBodyBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBodyBytes() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get authInfoBytes => $_getN(1);
  @$pb.TagNumber(2)
  set authInfoBytes($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthInfoBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthInfoBytes() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get signatures => $_getList(2);
}

class SignDoc extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignDoc', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bodyBytes', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authInfoBytes', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainId')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNumber', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SignDoc._() : super();
  factory SignDoc({
    $core.List<$core.int>? bodyBytes,
    $core.List<$core.int>? authInfoBytes,
    $core.String? chainId,
    $fixnum.Int64? accountNumber,
  }) {
    final _result = create();
    if (bodyBytes != null) {
      _result.bodyBytes = bodyBytes;
    }
    if (authInfoBytes != null) {
      _result.authInfoBytes = authInfoBytes;
    }
    if (chainId != null) {
      _result.chainId = chainId;
    }
    if (accountNumber != null) {
      _result.accountNumber = accountNumber;
    }
    return _result;
  }
  factory SignDoc.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignDoc.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignDoc clone() => SignDoc()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignDoc copyWith(void Function(SignDoc) updates) => super.copyWith((message) => updates(message as SignDoc)) as SignDoc; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignDoc create() => SignDoc._();
  SignDoc createEmptyInstance() => create();
  static $pb.PbList<SignDoc> createRepeated() => $pb.PbList<SignDoc>();
  @$core.pragma('dart2js:noInline')
  static SignDoc getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignDoc>(create);
  static SignDoc? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bodyBytes => $_getN(0);
  @$pb.TagNumber(1)
  set bodyBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBodyBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearBodyBytes() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get authInfoBytes => $_getN(1);
  @$pb.TagNumber(2)
  set authInfoBytes($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthInfoBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthInfoBytes() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get chainId => $_getSZ(2);
  @$pb.TagNumber(3)
  set chainId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChainId() => $_has(2);
  @$pb.TagNumber(3)
  void clearChainId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get accountNumber => $_getI64(3);
  @$pb.TagNumber(4)
  set accountNumber($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountNumber() => clearField(4);
}

class TxBody extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxBody', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..pc<$2.Any>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: $2.Any.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeoutHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$2.Any>(1023, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extensionOptions', $pb.PbFieldType.PM, subBuilder: $2.Any.create)
    ..pc<$2.Any>(2047, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonCriticalExtensionOptions', $pb.PbFieldType.PM, subBuilder: $2.Any.create)
    ..hasRequiredFields = false
  ;

  TxBody._() : super();
  factory TxBody({
    $core.Iterable<$2.Any>? messages,
    $core.String? memo,
    $fixnum.Int64? timeoutHeight,
    $core.Iterable<$2.Any>? extensionOptions,
    $core.Iterable<$2.Any>? nonCriticalExtensionOptions,
  }) {
    final _result = create();
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    if (memo != null) {
      _result.memo = memo;
    }
    if (timeoutHeight != null) {
      _result.timeoutHeight = timeoutHeight;
    }
    if (extensionOptions != null) {
      _result.extensionOptions.addAll(extensionOptions);
    }
    if (nonCriticalExtensionOptions != null) {
      _result.nonCriticalExtensionOptions.addAll(nonCriticalExtensionOptions);
    }
    return _result;
  }
  factory TxBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxBody clone() => TxBody()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxBody copyWith(void Function(TxBody) updates) => super.copyWith((message) => updates(message as TxBody)) as TxBody; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxBody create() => TxBody._();
  TxBody createEmptyInstance() => create();
  static $pb.PbList<TxBody> createRepeated() => $pb.PbList<TxBody>();
  @$core.pragma('dart2js:noInline')
  static TxBody getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxBody>(create);
  static TxBody? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Any> get messages => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get memo => $_getSZ(1);
  @$pb.TagNumber(2)
  set memo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMemo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemo() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timeoutHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set timeoutHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeoutHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeoutHeight() => clearField(3);

  @$pb.TagNumber(1023)
  $core.List<$2.Any> get extensionOptions => $_getList(3);

  @$pb.TagNumber(2047)
  $core.List<$2.Any> get nonCriticalExtensionOptions => $_getList(4);
}

class AuthInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..pc<SignerInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signerInfos', $pb.PbFieldType.PM, subBuilder: SignerInfo.create)
    ..aOM<Fee>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', subBuilder: Fee.create)
    ..hasRequiredFields = false
  ;

  AuthInfo._() : super();
  factory AuthInfo({
    $core.Iterable<SignerInfo>? signerInfos,
    Fee? fee,
  }) {
    final _result = create();
    if (signerInfos != null) {
      _result.signerInfos.addAll(signerInfos);
    }
    if (fee != null) {
      _result.fee = fee;
    }
    return _result;
  }
  factory AuthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthInfo clone() => AuthInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthInfo copyWith(void Function(AuthInfo) updates) => super.copyWith((message) => updates(message as AuthInfo)) as AuthInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthInfo create() => AuthInfo._();
  AuthInfo createEmptyInstance() => create();
  static $pb.PbList<AuthInfo> createRepeated() => $pb.PbList<AuthInfo>();
  @$core.pragma('dart2js:noInline')
  static AuthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthInfo>(create);
  static AuthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SignerInfo> get signerInfos => $_getList(0);

  @$pb.TagNumber(2)
  Fee get fee => $_getN(1);
  @$pb.TagNumber(2)
  set fee(Fee v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearFee() => clearField(2);
  @$pb.TagNumber(2)
  Fee ensureFee() => $_ensure(1);
}

class SignerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..aOM<$2.Any>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', subBuilder: $2.Any.create)
    ..aOM<ModeInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modeInfo', subBuilder: ModeInfo.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SignerInfo._() : super();
  factory SignerInfo({
    $2.Any? publicKey,
    ModeInfo? modeInfo,
    $fixnum.Int64? sequence,
  }) {
    final _result = create();
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (modeInfo != null) {
      _result.modeInfo = modeInfo;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    return _result;
  }
  factory SignerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignerInfo clone() => SignerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignerInfo copyWith(void Function(SignerInfo) updates) => super.copyWith((message) => updates(message as SignerInfo)) as SignerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignerInfo create() => SignerInfo._();
  SignerInfo createEmptyInstance() => create();
  static $pb.PbList<SignerInfo> createRepeated() => $pb.PbList<SignerInfo>();
  @$core.pragma('dart2js:noInline')
  static SignerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignerInfo>(create);
  static SignerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Any get publicKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicKey($2.Any v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);
  @$pb.TagNumber(1)
  $2.Any ensurePublicKey() => $_ensure(0);

  @$pb.TagNumber(2)
  ModeInfo get modeInfo => $_getN(1);
  @$pb.TagNumber(2)
  set modeInfo(ModeInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasModeInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearModeInfo() => clearField(2);
  @$pb.TagNumber(2)
  ModeInfo ensureModeInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sequence => $_getI64(2);
  @$pb.TagNumber(3)
  set sequence($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSequence() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequence() => clearField(3);
}

class ModeInfo_Single extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModeInfo.Single', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..e<$5.SignMode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: $5.SignMode.SIGN_MODE_UNSPECIFIED, valueOf: $5.SignMode.valueOf, enumValues: $5.SignMode.values)
    ..hasRequiredFields = false
  ;

  ModeInfo_Single._() : super();
  factory ModeInfo_Single({
    $5.SignMode? mode,
  }) {
    final _result = create();
    if (mode != null) {
      _result.mode = mode;
    }
    return _result;
  }
  factory ModeInfo_Single.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModeInfo_Single.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModeInfo_Single clone() => ModeInfo_Single()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModeInfo_Single copyWith(void Function(ModeInfo_Single) updates) => super.copyWith((message) => updates(message as ModeInfo_Single)) as ModeInfo_Single; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModeInfo_Single create() => ModeInfo_Single._();
  ModeInfo_Single createEmptyInstance() => create();
  static $pb.PbList<ModeInfo_Single> createRepeated() => $pb.PbList<ModeInfo_Single>();
  @$core.pragma('dart2js:noInline')
  static ModeInfo_Single getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModeInfo_Single>(create);
  static ModeInfo_Single? _defaultInstance;

  @$pb.TagNumber(1)
  $5.SignMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode($5.SignMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);
}

class ModeInfo_Multi extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModeInfo.Multi', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..aOM<$3.CompactBitArray>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bitarray', subBuilder: $3.CompactBitArray.create)
    ..pc<ModeInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modeInfos', $pb.PbFieldType.PM, subBuilder: ModeInfo.create)
    ..hasRequiredFields = false
  ;

  ModeInfo_Multi._() : super();
  factory ModeInfo_Multi({
    $3.CompactBitArray? bitarray,
    $core.Iterable<ModeInfo>? modeInfos,
  }) {
    final _result = create();
    if (bitarray != null) {
      _result.bitarray = bitarray;
    }
    if (modeInfos != null) {
      _result.modeInfos.addAll(modeInfos);
    }
    return _result;
  }
  factory ModeInfo_Multi.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModeInfo_Multi.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModeInfo_Multi clone() => ModeInfo_Multi()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModeInfo_Multi copyWith(void Function(ModeInfo_Multi) updates) => super.copyWith((message) => updates(message as ModeInfo_Multi)) as ModeInfo_Multi; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModeInfo_Multi create() => ModeInfo_Multi._();
  ModeInfo_Multi createEmptyInstance() => create();
  static $pb.PbList<ModeInfo_Multi> createRepeated() => $pb.PbList<ModeInfo_Multi>();
  @$core.pragma('dart2js:noInline')
  static ModeInfo_Multi getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModeInfo_Multi>(create);
  static ModeInfo_Multi? _defaultInstance;

  @$pb.TagNumber(1)
  $3.CompactBitArray get bitarray => $_getN(0);
  @$pb.TagNumber(1)
  set bitarray($3.CompactBitArray v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBitarray() => $_has(0);
  @$pb.TagNumber(1)
  void clearBitarray() => clearField(1);
  @$pb.TagNumber(1)
  $3.CompactBitArray ensureBitarray() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ModeInfo> get modeInfos => $_getList(1);
}

enum ModeInfo_Sum {
  single,
  multi,
  notSet
}

class ModeInfo extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ModeInfo_Sum> _ModeInfo_SumByTag = {
    1 : ModeInfo_Sum.single,
    2 : ModeInfo_Sum.multi,
    0 : ModeInfo_Sum.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ModeInfo_Single>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'single', subBuilder: ModeInfo_Single.create)
    ..aOM<ModeInfo_Multi>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multi', subBuilder: ModeInfo_Multi.create)
    ..hasRequiredFields = false
  ;

  ModeInfo._() : super();
  factory ModeInfo({
    ModeInfo_Single? single,
    ModeInfo_Multi? multi,
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
  factory ModeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModeInfo clone() => ModeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModeInfo copyWith(void Function(ModeInfo) updates) => super.copyWith((message) => updates(message as ModeInfo)) as ModeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModeInfo create() => ModeInfo._();
  ModeInfo createEmptyInstance() => create();
  static $pb.PbList<ModeInfo> createRepeated() => $pb.PbList<ModeInfo>();
  @$core.pragma('dart2js:noInline')
  static ModeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModeInfo>(create);
  static ModeInfo? _defaultInstance;

  ModeInfo_Sum whichSum() => _ModeInfo_SumByTag[$_whichOneof(0)]!;
  void clearSum() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ModeInfo_Single get single => $_getN(0);
  @$pb.TagNumber(1)
  set single(ModeInfo_Single v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSingle() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingle() => clearField(1);
  @$pb.TagNumber(1)
  ModeInfo_Single ensureSingle() => $_ensure(0);

  @$pb.TagNumber(2)
  ModeInfo_Multi get multi => $_getN(1);
  @$pb.TagNumber(2)
  set multi(ModeInfo_Multi v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMulti() => $_has(1);
  @$pb.TagNumber(2)
  void clearMulti() => clearField(2);
  @$pb.TagNumber(2)
  ModeInfo_Multi ensureMulti() => $_ensure(1);
}

class Fee extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Fee', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.tx.v1beta1'), createEmptyInstance: create)
    ..pc<$4.Coin>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.PM, subBuilder: $4.Coin.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gasLimit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payer')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'granter')
    ..hasRequiredFields = false
  ;

  Fee._() : super();
  factory Fee({
    $core.Iterable<$4.Coin>? amount,
    $fixnum.Int64? gasLimit,
    $core.String? payer,
    $core.String? granter,
  }) {
    final _result = create();
    if (amount != null) {
      _result.amount.addAll(amount);
    }
    if (gasLimit != null) {
      _result.gasLimit = gasLimit;
    }
    if (payer != null) {
      _result.payer = payer;
    }
    if (granter != null) {
      _result.granter = granter;
    }
    return _result;
  }
  factory Fee.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Fee.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Fee clone() => Fee()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Fee copyWith(void Function(Fee) updates) => super.copyWith((message) => updates(message as Fee)) as Fee; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Fee create() => Fee._();
  Fee createEmptyInstance() => create();
  static $pb.PbList<Fee> createRepeated() => $pb.PbList<Fee>();
  @$core.pragma('dart2js:noInline')
  static Fee getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fee>(create);
  static Fee? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.Coin> get amount => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get gasLimit => $_getI64(1);
  @$pb.TagNumber(2)
  set gasLimit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearGasLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get payer => $_getSZ(2);
  @$pb.TagNumber(3)
  set payer($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayer() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayer() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get granter => $_getSZ(3);
  @$pb.TagNumber(4)
  set granter($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGranter() => $_has(3);
  @$pb.TagNumber(4)
  void clearGranter() => clearField(4);
}

