///
//  Generated code. Do not modify.
//  source: cosmos/base/reflection/v2alpha1/reflection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AppDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOM<AuthnDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authn', subBuilder: AuthnDescriptor.create)
    ..aOM<ChainDescriptor>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chain', subBuilder: ChainDescriptor.create)
    ..aOM<CodecDescriptor>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codec', subBuilder: CodecDescriptor.create)
    ..aOM<ConfigurationDescriptor>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configuration', subBuilder: ConfigurationDescriptor.create)
    ..aOM<QueryServicesDescriptor>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queryServices', subBuilder: QueryServicesDescriptor.create)
    ..aOM<TxDescriptor>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxDescriptor.create)
    ..hasRequiredFields = false
  ;

  AppDescriptor._() : super();
  factory AppDescriptor({
    AuthnDescriptor? authn,
    ChainDescriptor? chain,
    CodecDescriptor? codec,
    ConfigurationDescriptor? configuration,
    QueryServicesDescriptor? queryServices,
    TxDescriptor? tx,
  }) {
    final _result = create();
    if (authn != null) {
      _result.authn = authn;
    }
    if (chain != null) {
      _result.chain = chain;
    }
    if (codec != null) {
      _result.codec = codec;
    }
    if (configuration != null) {
      _result.configuration = configuration;
    }
    if (queryServices != null) {
      _result.queryServices = queryServices;
    }
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory AppDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppDescriptor clone() => AppDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppDescriptor copyWith(void Function(AppDescriptor) updates) => super.copyWith((message) => updates(message as AppDescriptor)) as AppDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppDescriptor create() => AppDescriptor._();
  AppDescriptor createEmptyInstance() => create();
  static $pb.PbList<AppDescriptor> createRepeated() => $pb.PbList<AppDescriptor>();
  @$core.pragma('dart2js:noInline')
  static AppDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppDescriptor>(create);
  static AppDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  AuthnDescriptor get authn => $_getN(0);
  @$pb.TagNumber(1)
  set authn(AuthnDescriptor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthn() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthn() => clearField(1);
  @$pb.TagNumber(1)
  AuthnDescriptor ensureAuthn() => $_ensure(0);

  @$pb.TagNumber(2)
  ChainDescriptor get chain => $_getN(1);
  @$pb.TagNumber(2)
  set chain(ChainDescriptor v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChain() => $_has(1);
  @$pb.TagNumber(2)
  void clearChain() => clearField(2);
  @$pb.TagNumber(2)
  ChainDescriptor ensureChain() => $_ensure(1);

  @$pb.TagNumber(3)
  CodecDescriptor get codec => $_getN(2);
  @$pb.TagNumber(3)
  set codec(CodecDescriptor v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCodec() => $_has(2);
  @$pb.TagNumber(3)
  void clearCodec() => clearField(3);
  @$pb.TagNumber(3)
  CodecDescriptor ensureCodec() => $_ensure(2);

  @$pb.TagNumber(4)
  ConfigurationDescriptor get configuration => $_getN(3);
  @$pb.TagNumber(4)
  set configuration(ConfigurationDescriptor v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasConfiguration() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfiguration() => clearField(4);
  @$pb.TagNumber(4)
  ConfigurationDescriptor ensureConfiguration() => $_ensure(3);

  @$pb.TagNumber(5)
  QueryServicesDescriptor get queryServices => $_getN(4);
  @$pb.TagNumber(5)
  set queryServices(QueryServicesDescriptor v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasQueryServices() => $_has(4);
  @$pb.TagNumber(5)
  void clearQueryServices() => clearField(5);
  @$pb.TagNumber(5)
  QueryServicesDescriptor ensureQueryServices() => $_ensure(4);

  @$pb.TagNumber(6)
  TxDescriptor get tx => $_getN(5);
  @$pb.TagNumber(6)
  set tx(TxDescriptor v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTx() => $_has(5);
  @$pb.TagNumber(6)
  void clearTx() => clearField(6);
  @$pb.TagNumber(6)
  TxDescriptor ensureTx() => $_ensure(5);
}

class TxDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullname')
    ..pc<MsgDescriptor>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgs', $pb.PbFieldType.PM, subBuilder: MsgDescriptor.create)
    ..hasRequiredFields = false
  ;

  TxDescriptor._() : super();
  factory TxDescriptor({
    $core.String? fullname,
    $core.Iterable<MsgDescriptor>? msgs,
  }) {
    final _result = create();
    if (fullname != null) {
      _result.fullname = fullname;
    }
    if (msgs != null) {
      _result.msgs.addAll(msgs);
    }
    return _result;
  }
  factory TxDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxDescriptor clone() => TxDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxDescriptor copyWith(void Function(TxDescriptor) updates) => super.copyWith((message) => updates(message as TxDescriptor)) as TxDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxDescriptor create() => TxDescriptor._();
  TxDescriptor createEmptyInstance() => create();
  static $pb.PbList<TxDescriptor> createRepeated() => $pb.PbList<TxDescriptor>();
  @$core.pragma('dart2js:noInline')
  static TxDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxDescriptor>(create);
  static TxDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullname => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullname() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullname() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<MsgDescriptor> get msgs => $_getList(1);
}

class AuthnDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthnDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..pc<SigningModeDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signModes', $pb.PbFieldType.PM, subBuilder: SigningModeDescriptor.create)
    ..hasRequiredFields = false
  ;

  AuthnDescriptor._() : super();
  factory AuthnDescriptor({
    $core.Iterable<SigningModeDescriptor>? signModes,
  }) {
    final _result = create();
    if (signModes != null) {
      _result.signModes.addAll(signModes);
    }
    return _result;
  }
  factory AuthnDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthnDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthnDescriptor clone() => AuthnDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthnDescriptor copyWith(void Function(AuthnDescriptor) updates) => super.copyWith((message) => updates(message as AuthnDescriptor)) as AuthnDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthnDescriptor create() => AuthnDescriptor._();
  AuthnDescriptor createEmptyInstance() => create();
  static $pb.PbList<AuthnDescriptor> createRepeated() => $pb.PbList<AuthnDescriptor>();
  @$core.pragma('dart2js:noInline')
  static AuthnDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthnDescriptor>(create);
  static AuthnDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SigningModeDescriptor> get signModes => $_getList(0);
}

class SigningModeDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SigningModeDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authnInfoProviderMethodFullname')
    ..hasRequiredFields = false
  ;

  SigningModeDescriptor._() : super();
  factory SigningModeDescriptor({
    $core.String? name,
    $core.int? number,
    $core.String? authnInfoProviderMethodFullname,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (number != null) {
      _result.number = number;
    }
    if (authnInfoProviderMethodFullname != null) {
      _result.authnInfoProviderMethodFullname = authnInfoProviderMethodFullname;
    }
    return _result;
  }
  factory SigningModeDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SigningModeDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SigningModeDescriptor clone() => SigningModeDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SigningModeDescriptor copyWith(void Function(SigningModeDescriptor) updates) => super.copyWith((message) => updates(message as SigningModeDescriptor)) as SigningModeDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SigningModeDescriptor create() => SigningModeDescriptor._();
  SigningModeDescriptor createEmptyInstance() => create();
  static $pb.PbList<SigningModeDescriptor> createRepeated() => $pb.PbList<SigningModeDescriptor>();
  @$core.pragma('dart2js:noInline')
  static SigningModeDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SigningModeDescriptor>(create);
  static SigningModeDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get authnInfoProviderMethodFullname => $_getSZ(2);
  @$pb.TagNumber(3)
  set authnInfoProviderMethodFullname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthnInfoProviderMethodFullname() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthnInfoProviderMethodFullname() => clearField(3);
}

class ChainDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChainDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  ChainDescriptor._() : super();
  factory ChainDescriptor({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ChainDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChainDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChainDescriptor clone() => ChainDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChainDescriptor copyWith(void Function(ChainDescriptor) updates) => super.copyWith((message) => updates(message as ChainDescriptor)) as ChainDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChainDescriptor create() => ChainDescriptor._();
  ChainDescriptor createEmptyInstance() => create();
  static $pb.PbList<ChainDescriptor> createRepeated() => $pb.PbList<ChainDescriptor>();
  @$core.pragma('dart2js:noInline')
  static ChainDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChainDescriptor>(create);
  static ChainDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CodecDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CodecDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..pc<InterfaceDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interfaces', $pb.PbFieldType.PM, subBuilder: InterfaceDescriptor.create)
    ..hasRequiredFields = false
  ;

  CodecDescriptor._() : super();
  factory CodecDescriptor({
    $core.Iterable<InterfaceDescriptor>? interfaces,
  }) {
    final _result = create();
    if (interfaces != null) {
      _result.interfaces.addAll(interfaces);
    }
    return _result;
  }
  factory CodecDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CodecDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CodecDescriptor clone() => CodecDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CodecDescriptor copyWith(void Function(CodecDescriptor) updates) => super.copyWith((message) => updates(message as CodecDescriptor)) as CodecDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CodecDescriptor create() => CodecDescriptor._();
  CodecDescriptor createEmptyInstance() => create();
  static $pb.PbList<CodecDescriptor> createRepeated() => $pb.PbList<CodecDescriptor>();
  @$core.pragma('dart2js:noInline')
  static CodecDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CodecDescriptor>(create);
  static CodecDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<InterfaceDescriptor> get interfaces => $_getList(0);
}

class InterfaceDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InterfaceDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullname')
    ..pc<InterfaceAcceptingMessageDescriptor>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interfaceAcceptingMessages', $pb.PbFieldType.PM, subBuilder: InterfaceAcceptingMessageDescriptor.create)
    ..pc<InterfaceImplementerDescriptor>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interfaceImplementers', $pb.PbFieldType.PM, subBuilder: InterfaceImplementerDescriptor.create)
    ..hasRequiredFields = false
  ;

  InterfaceDescriptor._() : super();
  factory InterfaceDescriptor({
    $core.String? fullname,
    $core.Iterable<InterfaceAcceptingMessageDescriptor>? interfaceAcceptingMessages,
    $core.Iterable<InterfaceImplementerDescriptor>? interfaceImplementers,
  }) {
    final _result = create();
    if (fullname != null) {
      _result.fullname = fullname;
    }
    if (interfaceAcceptingMessages != null) {
      _result.interfaceAcceptingMessages.addAll(interfaceAcceptingMessages);
    }
    if (interfaceImplementers != null) {
      _result.interfaceImplementers.addAll(interfaceImplementers);
    }
    return _result;
  }
  factory InterfaceDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InterfaceDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InterfaceDescriptor clone() => InterfaceDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InterfaceDescriptor copyWith(void Function(InterfaceDescriptor) updates) => super.copyWith((message) => updates(message as InterfaceDescriptor)) as InterfaceDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InterfaceDescriptor create() => InterfaceDescriptor._();
  InterfaceDescriptor createEmptyInstance() => create();
  static $pb.PbList<InterfaceDescriptor> createRepeated() => $pb.PbList<InterfaceDescriptor>();
  @$core.pragma('dart2js:noInline')
  static InterfaceDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InterfaceDescriptor>(create);
  static InterfaceDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullname => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullname() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullname() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<InterfaceAcceptingMessageDescriptor> get interfaceAcceptingMessages => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<InterfaceImplementerDescriptor> get interfaceImplementers => $_getList(2);
}

class InterfaceImplementerDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InterfaceImplementerDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullname')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typeUrl')
    ..hasRequiredFields = false
  ;

  InterfaceImplementerDescriptor._() : super();
  factory InterfaceImplementerDescriptor({
    $core.String? fullname,
    $core.String? typeUrl,
  }) {
    final _result = create();
    if (fullname != null) {
      _result.fullname = fullname;
    }
    if (typeUrl != null) {
      _result.typeUrl = typeUrl;
    }
    return _result;
  }
  factory InterfaceImplementerDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InterfaceImplementerDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InterfaceImplementerDescriptor clone() => InterfaceImplementerDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InterfaceImplementerDescriptor copyWith(void Function(InterfaceImplementerDescriptor) updates) => super.copyWith((message) => updates(message as InterfaceImplementerDescriptor)) as InterfaceImplementerDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InterfaceImplementerDescriptor create() => InterfaceImplementerDescriptor._();
  InterfaceImplementerDescriptor createEmptyInstance() => create();
  static $pb.PbList<InterfaceImplementerDescriptor> createRepeated() => $pb.PbList<InterfaceImplementerDescriptor>();
  @$core.pragma('dart2js:noInline')
  static InterfaceImplementerDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InterfaceImplementerDescriptor>(create);
  static InterfaceImplementerDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullname => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullname() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get typeUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set typeUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTypeUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeUrl() => clearField(2);
}

class InterfaceAcceptingMessageDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InterfaceAcceptingMessageDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullname')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fieldDescriptorNames')
    ..hasRequiredFields = false
  ;

  InterfaceAcceptingMessageDescriptor._() : super();
  factory InterfaceAcceptingMessageDescriptor({
    $core.String? fullname,
    $core.Iterable<$core.String>? fieldDescriptorNames,
  }) {
    final _result = create();
    if (fullname != null) {
      _result.fullname = fullname;
    }
    if (fieldDescriptorNames != null) {
      _result.fieldDescriptorNames.addAll(fieldDescriptorNames);
    }
    return _result;
  }
  factory InterfaceAcceptingMessageDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InterfaceAcceptingMessageDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InterfaceAcceptingMessageDescriptor clone() => InterfaceAcceptingMessageDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InterfaceAcceptingMessageDescriptor copyWith(void Function(InterfaceAcceptingMessageDescriptor) updates) => super.copyWith((message) => updates(message as InterfaceAcceptingMessageDescriptor)) as InterfaceAcceptingMessageDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InterfaceAcceptingMessageDescriptor create() => InterfaceAcceptingMessageDescriptor._();
  InterfaceAcceptingMessageDescriptor createEmptyInstance() => create();
  static $pb.PbList<InterfaceAcceptingMessageDescriptor> createRepeated() => $pb.PbList<InterfaceAcceptingMessageDescriptor>();
  @$core.pragma('dart2js:noInline')
  static InterfaceAcceptingMessageDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InterfaceAcceptingMessageDescriptor>(create);
  static InterfaceAcceptingMessageDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullname => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullname() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullname() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get fieldDescriptorNames => $_getList(1);
}

class ConfigurationDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfigurationDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bech32AccountAddressPrefix')
    ..hasRequiredFields = false
  ;

  ConfigurationDescriptor._() : super();
  factory ConfigurationDescriptor({
    $core.String? bech32AccountAddressPrefix,
  }) {
    final _result = create();
    if (bech32AccountAddressPrefix != null) {
      _result.bech32AccountAddressPrefix = bech32AccountAddressPrefix;
    }
    return _result;
  }
  factory ConfigurationDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfigurationDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfigurationDescriptor clone() => ConfigurationDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfigurationDescriptor copyWith(void Function(ConfigurationDescriptor) updates) => super.copyWith((message) => updates(message as ConfigurationDescriptor)) as ConfigurationDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfigurationDescriptor create() => ConfigurationDescriptor._();
  ConfigurationDescriptor createEmptyInstance() => create();
  static $pb.PbList<ConfigurationDescriptor> createRepeated() => $pb.PbList<ConfigurationDescriptor>();
  @$core.pragma('dart2js:noInline')
  static ConfigurationDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfigurationDescriptor>(create);
  static ConfigurationDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bech32AccountAddressPrefix => $_getSZ(0);
  @$pb.TagNumber(1)
  set bech32AccountAddressPrefix($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBech32AccountAddressPrefix() => $_has(0);
  @$pb.TagNumber(1)
  void clearBech32AccountAddressPrefix() => clearField(1);
}

class MsgDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msgTypeUrl')
    ..hasRequiredFields = false
  ;

  MsgDescriptor._() : super();
  factory MsgDescriptor({
    $core.String? msgTypeUrl,
  }) {
    final _result = create();
    if (msgTypeUrl != null) {
      _result.msgTypeUrl = msgTypeUrl;
    }
    return _result;
  }
  factory MsgDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDescriptor clone() => MsgDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDescriptor copyWith(void Function(MsgDescriptor) updates) => super.copyWith((message) => updates(message as MsgDescriptor)) as MsgDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDescriptor create() => MsgDescriptor._();
  MsgDescriptor createEmptyInstance() => create();
  static $pb.PbList<MsgDescriptor> createRepeated() => $pb.PbList<MsgDescriptor>();
  @$core.pragma('dart2js:noInline')
  static MsgDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDescriptor>(create);
  static MsgDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msgTypeUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set msgTypeUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsgTypeUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsgTypeUrl() => clearField(1);
}

class GetAuthnDescriptorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAuthnDescriptorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAuthnDescriptorRequest._() : super();
  factory GetAuthnDescriptorRequest() => create();
  factory GetAuthnDescriptorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAuthnDescriptorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAuthnDescriptorRequest clone() => GetAuthnDescriptorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAuthnDescriptorRequest copyWith(void Function(GetAuthnDescriptorRequest) updates) => super.copyWith((message) => updates(message as GetAuthnDescriptorRequest)) as GetAuthnDescriptorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAuthnDescriptorRequest create() => GetAuthnDescriptorRequest._();
  GetAuthnDescriptorRequest createEmptyInstance() => create();
  static $pb.PbList<GetAuthnDescriptorRequest> createRepeated() => $pb.PbList<GetAuthnDescriptorRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAuthnDescriptorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAuthnDescriptorRequest>(create);
  static GetAuthnDescriptorRequest? _defaultInstance;
}

class GetAuthnDescriptorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAuthnDescriptorResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOM<AuthnDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authn', subBuilder: AuthnDescriptor.create)
    ..hasRequiredFields = false
  ;

  GetAuthnDescriptorResponse._() : super();
  factory GetAuthnDescriptorResponse({
    AuthnDescriptor? authn,
  }) {
    final _result = create();
    if (authn != null) {
      _result.authn = authn;
    }
    return _result;
  }
  factory GetAuthnDescriptorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAuthnDescriptorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAuthnDescriptorResponse clone() => GetAuthnDescriptorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAuthnDescriptorResponse copyWith(void Function(GetAuthnDescriptorResponse) updates) => super.copyWith((message) => updates(message as GetAuthnDescriptorResponse)) as GetAuthnDescriptorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAuthnDescriptorResponse create() => GetAuthnDescriptorResponse._();
  GetAuthnDescriptorResponse createEmptyInstance() => create();
  static $pb.PbList<GetAuthnDescriptorResponse> createRepeated() => $pb.PbList<GetAuthnDescriptorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAuthnDescriptorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAuthnDescriptorResponse>(create);
  static GetAuthnDescriptorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AuthnDescriptor get authn => $_getN(0);
  @$pb.TagNumber(1)
  set authn(AuthnDescriptor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthn() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthn() => clearField(1);
  @$pb.TagNumber(1)
  AuthnDescriptor ensureAuthn() => $_ensure(0);
}

class GetChainDescriptorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetChainDescriptorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetChainDescriptorRequest._() : super();
  factory GetChainDescriptorRequest() => create();
  factory GetChainDescriptorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChainDescriptorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChainDescriptorRequest clone() => GetChainDescriptorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChainDescriptorRequest copyWith(void Function(GetChainDescriptorRequest) updates) => super.copyWith((message) => updates(message as GetChainDescriptorRequest)) as GetChainDescriptorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChainDescriptorRequest create() => GetChainDescriptorRequest._();
  GetChainDescriptorRequest createEmptyInstance() => create();
  static $pb.PbList<GetChainDescriptorRequest> createRepeated() => $pb.PbList<GetChainDescriptorRequest>();
  @$core.pragma('dart2js:noInline')
  static GetChainDescriptorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChainDescriptorRequest>(create);
  static GetChainDescriptorRequest? _defaultInstance;
}

class GetChainDescriptorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetChainDescriptorResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOM<ChainDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chain', subBuilder: ChainDescriptor.create)
    ..hasRequiredFields = false
  ;

  GetChainDescriptorResponse._() : super();
  factory GetChainDescriptorResponse({
    ChainDescriptor? chain,
  }) {
    final _result = create();
    if (chain != null) {
      _result.chain = chain;
    }
    return _result;
  }
  factory GetChainDescriptorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetChainDescriptorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetChainDescriptorResponse clone() => GetChainDescriptorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetChainDescriptorResponse copyWith(void Function(GetChainDescriptorResponse) updates) => super.copyWith((message) => updates(message as GetChainDescriptorResponse)) as GetChainDescriptorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetChainDescriptorResponse create() => GetChainDescriptorResponse._();
  GetChainDescriptorResponse createEmptyInstance() => create();
  static $pb.PbList<GetChainDescriptorResponse> createRepeated() => $pb.PbList<GetChainDescriptorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetChainDescriptorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetChainDescriptorResponse>(create);
  static GetChainDescriptorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ChainDescriptor get chain => $_getN(0);
  @$pb.TagNumber(1)
  set chain(ChainDescriptor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChain() => $_has(0);
  @$pb.TagNumber(1)
  void clearChain() => clearField(1);
  @$pb.TagNumber(1)
  ChainDescriptor ensureChain() => $_ensure(0);
}

class GetCodecDescriptorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCodecDescriptorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetCodecDescriptorRequest._() : super();
  factory GetCodecDescriptorRequest() => create();
  factory GetCodecDescriptorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCodecDescriptorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCodecDescriptorRequest clone() => GetCodecDescriptorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCodecDescriptorRequest copyWith(void Function(GetCodecDescriptorRequest) updates) => super.copyWith((message) => updates(message as GetCodecDescriptorRequest)) as GetCodecDescriptorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCodecDescriptorRequest create() => GetCodecDescriptorRequest._();
  GetCodecDescriptorRequest createEmptyInstance() => create();
  static $pb.PbList<GetCodecDescriptorRequest> createRepeated() => $pb.PbList<GetCodecDescriptorRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCodecDescriptorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCodecDescriptorRequest>(create);
  static GetCodecDescriptorRequest? _defaultInstance;
}

class GetCodecDescriptorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCodecDescriptorResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOM<CodecDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codec', subBuilder: CodecDescriptor.create)
    ..hasRequiredFields = false
  ;

  GetCodecDescriptorResponse._() : super();
  factory GetCodecDescriptorResponse({
    CodecDescriptor? codec,
  }) {
    final _result = create();
    if (codec != null) {
      _result.codec = codec;
    }
    return _result;
  }
  factory GetCodecDescriptorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCodecDescriptorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCodecDescriptorResponse clone() => GetCodecDescriptorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCodecDescriptorResponse copyWith(void Function(GetCodecDescriptorResponse) updates) => super.copyWith((message) => updates(message as GetCodecDescriptorResponse)) as GetCodecDescriptorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCodecDescriptorResponse create() => GetCodecDescriptorResponse._();
  GetCodecDescriptorResponse createEmptyInstance() => create();
  static $pb.PbList<GetCodecDescriptorResponse> createRepeated() => $pb.PbList<GetCodecDescriptorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCodecDescriptorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCodecDescriptorResponse>(create);
  static GetCodecDescriptorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CodecDescriptor get codec => $_getN(0);
  @$pb.TagNumber(1)
  set codec(CodecDescriptor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodec() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodec() => clearField(1);
  @$pb.TagNumber(1)
  CodecDescriptor ensureCodec() => $_ensure(0);
}

class GetConfigurationDescriptorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConfigurationDescriptorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetConfigurationDescriptorRequest._() : super();
  factory GetConfigurationDescriptorRequest() => create();
  factory GetConfigurationDescriptorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConfigurationDescriptorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConfigurationDescriptorRequest clone() => GetConfigurationDescriptorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConfigurationDescriptorRequest copyWith(void Function(GetConfigurationDescriptorRequest) updates) => super.copyWith((message) => updates(message as GetConfigurationDescriptorRequest)) as GetConfigurationDescriptorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConfigurationDescriptorRequest create() => GetConfigurationDescriptorRequest._();
  GetConfigurationDescriptorRequest createEmptyInstance() => create();
  static $pb.PbList<GetConfigurationDescriptorRequest> createRepeated() => $pb.PbList<GetConfigurationDescriptorRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConfigurationDescriptorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConfigurationDescriptorRequest>(create);
  static GetConfigurationDescriptorRequest? _defaultInstance;
}

class GetConfigurationDescriptorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConfigurationDescriptorResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOM<ConfigurationDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'config', subBuilder: ConfigurationDescriptor.create)
    ..hasRequiredFields = false
  ;

  GetConfigurationDescriptorResponse._() : super();
  factory GetConfigurationDescriptorResponse({
    ConfigurationDescriptor? config,
  }) {
    final _result = create();
    if (config != null) {
      _result.config = config;
    }
    return _result;
  }
  factory GetConfigurationDescriptorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConfigurationDescriptorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConfigurationDescriptorResponse clone() => GetConfigurationDescriptorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConfigurationDescriptorResponse copyWith(void Function(GetConfigurationDescriptorResponse) updates) => super.copyWith((message) => updates(message as GetConfigurationDescriptorResponse)) as GetConfigurationDescriptorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConfigurationDescriptorResponse create() => GetConfigurationDescriptorResponse._();
  GetConfigurationDescriptorResponse createEmptyInstance() => create();
  static $pb.PbList<GetConfigurationDescriptorResponse> createRepeated() => $pb.PbList<GetConfigurationDescriptorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConfigurationDescriptorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConfigurationDescriptorResponse>(create);
  static GetConfigurationDescriptorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ConfigurationDescriptor get config => $_getN(0);
  @$pb.TagNumber(1)
  set config(ConfigurationDescriptor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  ConfigurationDescriptor ensureConfig() => $_ensure(0);
}

class GetQueryServicesDescriptorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetQueryServicesDescriptorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetQueryServicesDescriptorRequest._() : super();
  factory GetQueryServicesDescriptorRequest() => create();
  factory GetQueryServicesDescriptorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetQueryServicesDescriptorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetQueryServicesDescriptorRequest clone() => GetQueryServicesDescriptorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetQueryServicesDescriptorRequest copyWith(void Function(GetQueryServicesDescriptorRequest) updates) => super.copyWith((message) => updates(message as GetQueryServicesDescriptorRequest)) as GetQueryServicesDescriptorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetQueryServicesDescriptorRequest create() => GetQueryServicesDescriptorRequest._();
  GetQueryServicesDescriptorRequest createEmptyInstance() => create();
  static $pb.PbList<GetQueryServicesDescriptorRequest> createRepeated() => $pb.PbList<GetQueryServicesDescriptorRequest>();
  @$core.pragma('dart2js:noInline')
  static GetQueryServicesDescriptorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetQueryServicesDescriptorRequest>(create);
  static GetQueryServicesDescriptorRequest? _defaultInstance;
}

class GetQueryServicesDescriptorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetQueryServicesDescriptorResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOM<QueryServicesDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queries', subBuilder: QueryServicesDescriptor.create)
    ..hasRequiredFields = false
  ;

  GetQueryServicesDescriptorResponse._() : super();
  factory GetQueryServicesDescriptorResponse({
    QueryServicesDescriptor? queries,
  }) {
    final _result = create();
    if (queries != null) {
      _result.queries = queries;
    }
    return _result;
  }
  factory GetQueryServicesDescriptorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetQueryServicesDescriptorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetQueryServicesDescriptorResponse clone() => GetQueryServicesDescriptorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetQueryServicesDescriptorResponse copyWith(void Function(GetQueryServicesDescriptorResponse) updates) => super.copyWith((message) => updates(message as GetQueryServicesDescriptorResponse)) as GetQueryServicesDescriptorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetQueryServicesDescriptorResponse create() => GetQueryServicesDescriptorResponse._();
  GetQueryServicesDescriptorResponse createEmptyInstance() => create();
  static $pb.PbList<GetQueryServicesDescriptorResponse> createRepeated() => $pb.PbList<GetQueryServicesDescriptorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetQueryServicesDescriptorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetQueryServicesDescriptorResponse>(create);
  static GetQueryServicesDescriptorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  QueryServicesDescriptor get queries => $_getN(0);
  @$pb.TagNumber(1)
  set queries(QueryServicesDescriptor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQueries() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueries() => clearField(1);
  @$pb.TagNumber(1)
  QueryServicesDescriptor ensureQueries() => $_ensure(0);
}

class GetTxDescriptorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTxDescriptorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetTxDescriptorRequest._() : super();
  factory GetTxDescriptorRequest() => create();
  factory GetTxDescriptorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTxDescriptorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTxDescriptorRequest clone() => GetTxDescriptorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTxDescriptorRequest copyWith(void Function(GetTxDescriptorRequest) updates) => super.copyWith((message) => updates(message as GetTxDescriptorRequest)) as GetTxDescriptorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTxDescriptorRequest create() => GetTxDescriptorRequest._();
  GetTxDescriptorRequest createEmptyInstance() => create();
  static $pb.PbList<GetTxDescriptorRequest> createRepeated() => $pb.PbList<GetTxDescriptorRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTxDescriptorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTxDescriptorRequest>(create);
  static GetTxDescriptorRequest? _defaultInstance;
}

class GetTxDescriptorResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTxDescriptorResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOM<TxDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tx', subBuilder: TxDescriptor.create)
    ..hasRequiredFields = false
  ;

  GetTxDescriptorResponse._() : super();
  factory GetTxDescriptorResponse({
    TxDescriptor? tx,
  }) {
    final _result = create();
    if (tx != null) {
      _result.tx = tx;
    }
    return _result;
  }
  factory GetTxDescriptorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTxDescriptorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTxDescriptorResponse clone() => GetTxDescriptorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTxDescriptorResponse copyWith(void Function(GetTxDescriptorResponse) updates) => super.copyWith((message) => updates(message as GetTxDescriptorResponse)) as GetTxDescriptorResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTxDescriptorResponse create() => GetTxDescriptorResponse._();
  GetTxDescriptorResponse createEmptyInstance() => create();
  static $pb.PbList<GetTxDescriptorResponse> createRepeated() => $pb.PbList<GetTxDescriptorResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTxDescriptorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTxDescriptorResponse>(create);
  static GetTxDescriptorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TxDescriptor get tx => $_getN(0);
  @$pb.TagNumber(1)
  set tx(TxDescriptor v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearTx() => clearField(1);
  @$pb.TagNumber(1)
  TxDescriptor ensureTx() => $_ensure(0);
}

class QueryServicesDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryServicesDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..pc<QueryServiceDescriptor>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queryServices', $pb.PbFieldType.PM, subBuilder: QueryServiceDescriptor.create)
    ..hasRequiredFields = false
  ;

  QueryServicesDescriptor._() : super();
  factory QueryServicesDescriptor({
    $core.Iterable<QueryServiceDescriptor>? queryServices,
  }) {
    final _result = create();
    if (queryServices != null) {
      _result.queryServices.addAll(queryServices);
    }
    return _result;
  }
  factory QueryServicesDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryServicesDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryServicesDescriptor clone() => QueryServicesDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryServicesDescriptor copyWith(void Function(QueryServicesDescriptor) updates) => super.copyWith((message) => updates(message as QueryServicesDescriptor)) as QueryServicesDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryServicesDescriptor create() => QueryServicesDescriptor._();
  QueryServicesDescriptor createEmptyInstance() => create();
  static $pb.PbList<QueryServicesDescriptor> createRepeated() => $pb.PbList<QueryServicesDescriptor>();
  @$core.pragma('dart2js:noInline')
  static QueryServicesDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryServicesDescriptor>(create);
  static QueryServicesDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QueryServiceDescriptor> get queryServices => $_getList(0);
}

class QueryServiceDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryServiceDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullname')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isModule')
    ..pc<QueryMethodDescriptor>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'methods', $pb.PbFieldType.PM, subBuilder: QueryMethodDescriptor.create)
    ..hasRequiredFields = false
  ;

  QueryServiceDescriptor._() : super();
  factory QueryServiceDescriptor({
    $core.String? fullname,
    $core.bool? isModule,
    $core.Iterable<QueryMethodDescriptor>? methods,
  }) {
    final _result = create();
    if (fullname != null) {
      _result.fullname = fullname;
    }
    if (isModule != null) {
      _result.isModule = isModule;
    }
    if (methods != null) {
      _result.methods.addAll(methods);
    }
    return _result;
  }
  factory QueryServiceDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryServiceDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryServiceDescriptor clone() => QueryServiceDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryServiceDescriptor copyWith(void Function(QueryServiceDescriptor) updates) => super.copyWith((message) => updates(message as QueryServiceDescriptor)) as QueryServiceDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryServiceDescriptor create() => QueryServiceDescriptor._();
  QueryServiceDescriptor createEmptyInstance() => create();
  static $pb.PbList<QueryServiceDescriptor> createRepeated() => $pb.PbList<QueryServiceDescriptor>();
  @$core.pragma('dart2js:noInline')
  static QueryServiceDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryServiceDescriptor>(create);
  static QueryServiceDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullname => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFullname() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullname() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isModule => $_getBF(1);
  @$pb.TagNumber(2)
  set isModule($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsModule() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsModule() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<QueryMethodDescriptor> get methods => $_getList(2);
}

class QueryMethodDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryMethodDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v2alpha1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fullQueryPath')
    ..hasRequiredFields = false
  ;

  QueryMethodDescriptor._() : super();
  factory QueryMethodDescriptor({
    $core.String? name,
    $core.String? fullQueryPath,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (fullQueryPath != null) {
      _result.fullQueryPath = fullQueryPath;
    }
    return _result;
  }
  factory QueryMethodDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMethodDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMethodDescriptor clone() => QueryMethodDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMethodDescriptor copyWith(void Function(QueryMethodDescriptor) updates) => super.copyWith((message) => updates(message as QueryMethodDescriptor)) as QueryMethodDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMethodDescriptor create() => QueryMethodDescriptor._();
  QueryMethodDescriptor createEmptyInstance() => create();
  static $pb.PbList<QueryMethodDescriptor> createRepeated() => $pb.PbList<QueryMethodDescriptor>();
  @$core.pragma('dart2js:noInline')
  static QueryMethodDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMethodDescriptor>(create);
  static QueryMethodDescriptor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fullQueryPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullQueryPath($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullQueryPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullQueryPath() => clearField(2);
}

