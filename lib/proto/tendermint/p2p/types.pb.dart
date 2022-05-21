///
//  Generated code. Do not modify.
//  source: tendermint/p2p/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class NetAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NetAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.p2p'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'port', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  NetAddress._() : super();
  factory NetAddress({
    $core.String? id,
    $core.String? ip,
    $core.int? port,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    if (port != null) {
      _result.port = port;
    }
    return _result;
  }
  factory NetAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetAddress clone() => NetAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetAddress copyWith(void Function(NetAddress) updates) => super.copyWith((message) => updates(message as NetAddress)) as NetAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetAddress create() => NetAddress._();
  NetAddress createEmptyInstance() => create();
  static $pb.PbList<NetAddress> createRepeated() => $pb.PbList<NetAddress>();
  @$core.pragma('dart2js:noInline')
  static NetAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetAddress>(create);
  static NetAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ip => $_getSZ(1);
  @$pb.TagNumber(2)
  set ip($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIp() => $_has(1);
  @$pb.TagNumber(2)
  void clearIp() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get port => $_getIZ(2);
  @$pb.TagNumber(3)
  set port($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearPort() => clearField(3);
}

class ProtocolVersion extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ProtocolVersion', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.p2p'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'p2p', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'block', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'app', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ProtocolVersion._() : super();
  factory ProtocolVersion({
    $fixnum.Int64? p2p,
    $fixnum.Int64? block,
    $fixnum.Int64? app,
  }) {
    final _result = create();
    if (p2p != null) {
      _result.p2p = p2p;
    }
    if (block != null) {
      _result.block = block;
    }
    if (app != null) {
      _result.app = app;
    }
    return _result;
  }
  factory ProtocolVersion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtocolVersion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProtocolVersion clone() => ProtocolVersion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProtocolVersion copyWith(void Function(ProtocolVersion) updates) => super.copyWith((message) => updates(message as ProtocolVersion)) as ProtocolVersion; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProtocolVersion create() => ProtocolVersion._();
  ProtocolVersion createEmptyInstance() => create();
  static $pb.PbList<ProtocolVersion> createRepeated() => $pb.PbList<ProtocolVersion>();
  @$core.pragma('dart2js:noInline')
  static ProtocolVersion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtocolVersion>(create);
  static ProtocolVersion? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get p2p => $_getI64(0);
  @$pb.TagNumber(1)
  set p2p($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasP2p() => $_has(0);
  @$pb.TagNumber(1)
  void clearP2p() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get block => $_getI64(1);
  @$pb.TagNumber(2)
  set block($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlock() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlock() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get app => $_getI64(2);
  @$pb.TagNumber(3)
  set app($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApp() => $_has(2);
  @$pb.TagNumber(3)
  void clearApp() => clearField(3);
}

class DefaultNodeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DefaultNodeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.p2p'), createEmptyInstance: create)
    ..aOM<ProtocolVersion>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'protocolVersion', subBuilder: ProtocolVersion.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'defaultNodeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'listenAddr')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'network')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.OY)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moniker')
    ..aOM<DefaultNodeInfoOther>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'other', subBuilder: DefaultNodeInfoOther.create)
    ..hasRequiredFields = false
  ;

  DefaultNodeInfo._() : super();
  factory DefaultNodeInfo({
    ProtocolVersion? protocolVersion,
    $core.String? defaultNodeId,
    $core.String? listenAddr,
    $core.String? network,
    $core.String? version,
    $core.List<$core.int>? channels,
    $core.String? moniker,
    DefaultNodeInfoOther? other,
  }) {
    final _result = create();
    if (protocolVersion != null) {
      _result.protocolVersion = protocolVersion;
    }
    if (defaultNodeId != null) {
      _result.defaultNodeId = defaultNodeId;
    }
    if (listenAddr != null) {
      _result.listenAddr = listenAddr;
    }
    if (network != null) {
      _result.network = network;
    }
    if (version != null) {
      _result.version = version;
    }
    if (channels != null) {
      _result.channels = channels;
    }
    if (moniker != null) {
      _result.moniker = moniker;
    }
    if (other != null) {
      _result.other = other;
    }
    return _result;
  }
  factory DefaultNodeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefaultNodeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefaultNodeInfo clone() => DefaultNodeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefaultNodeInfo copyWith(void Function(DefaultNodeInfo) updates) => super.copyWith((message) => updates(message as DefaultNodeInfo)) as DefaultNodeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DefaultNodeInfo create() => DefaultNodeInfo._();
  DefaultNodeInfo createEmptyInstance() => create();
  static $pb.PbList<DefaultNodeInfo> createRepeated() => $pb.PbList<DefaultNodeInfo>();
  @$core.pragma('dart2js:noInline')
  static DefaultNodeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefaultNodeInfo>(create);
  static DefaultNodeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  ProtocolVersion get protocolVersion => $_getN(0);
  @$pb.TagNumber(1)
  set protocolVersion(ProtocolVersion v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProtocolVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocolVersion() => clearField(1);
  @$pb.TagNumber(1)
  ProtocolVersion ensureProtocolVersion() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get defaultNodeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set defaultNodeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDefaultNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefaultNodeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get listenAddr => $_getSZ(2);
  @$pb.TagNumber(3)
  set listenAddr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasListenAddr() => $_has(2);
  @$pb.TagNumber(3)
  void clearListenAddr() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get network => $_getSZ(3);
  @$pb.TagNumber(4)
  set network($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNetwork() => $_has(3);
  @$pb.TagNumber(4)
  void clearNetwork() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get channels => $_getN(5);
  @$pb.TagNumber(6)
  set channels($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChannels() => $_has(5);
  @$pb.TagNumber(6)
  void clearChannels() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get moniker => $_getSZ(6);
  @$pb.TagNumber(7)
  set moniker($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMoniker() => $_has(6);
  @$pb.TagNumber(7)
  void clearMoniker() => clearField(7);

  @$pb.TagNumber(8)
  DefaultNodeInfoOther get other => $_getN(7);
  @$pb.TagNumber(8)
  set other(DefaultNodeInfoOther v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasOther() => $_has(7);
  @$pb.TagNumber(8)
  void clearOther() => clearField(8);
  @$pb.TagNumber(8)
  DefaultNodeInfoOther ensureOther() => $_ensure(7);
}

class DefaultNodeInfoOther extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DefaultNodeInfoOther', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.p2p'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txIndex')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rpcAddress')
    ..hasRequiredFields = false
  ;

  DefaultNodeInfoOther._() : super();
  factory DefaultNodeInfoOther({
    $core.String? txIndex,
    $core.String? rpcAddress,
  }) {
    final _result = create();
    if (txIndex != null) {
      _result.txIndex = txIndex;
    }
    if (rpcAddress != null) {
      _result.rpcAddress = rpcAddress;
    }
    return _result;
  }
  factory DefaultNodeInfoOther.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefaultNodeInfoOther.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefaultNodeInfoOther clone() => DefaultNodeInfoOther()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefaultNodeInfoOther copyWith(void Function(DefaultNodeInfoOther) updates) => super.copyWith((message) => updates(message as DefaultNodeInfoOther)) as DefaultNodeInfoOther; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DefaultNodeInfoOther create() => DefaultNodeInfoOther._();
  DefaultNodeInfoOther createEmptyInstance() => create();
  static $pb.PbList<DefaultNodeInfoOther> createRepeated() => $pb.PbList<DefaultNodeInfoOther>();
  @$core.pragma('dart2js:noInline')
  static DefaultNodeInfoOther getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefaultNodeInfoOther>(create);
  static DefaultNodeInfoOther? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txIndex => $_getSZ(0);
  @$pb.TagNumber(1)
  set txIndex($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get rpcAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set rpcAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRpcAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearRpcAddress() => clearField(2);
}

