///
//  Generated code. Do not modify.
//  source: ibc/core/client/v1/genesis.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'client.pb.dart' as $3;

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ibc.core.client.v1'), createEmptyInstance: create)
    ..pc<$3.IdentifiedClientState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clients', $pb.PbFieldType.PM, subBuilder: $3.IdentifiedClientState.create)
    ..pc<$3.ClientConsensusStates>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientsConsensus', $pb.PbFieldType.PM, subBuilder: $3.ClientConsensusStates.create)
    ..aOM<$3.Params>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $3.Params.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createLocalhost')
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState() => create();
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState clone() => GenesisState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.IdentifiedClientState> get clients => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$3.ClientConsensusStates> get clientsConsensus => $_getList(1);

  @$pb.TagNumber(3)
  $3.Params get params => $_getN(2);
  @$pb.TagNumber(3)
  set params($3.Params v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasParams() => $_has(2);
  @$pb.TagNumber(3)
  void clearParams() => clearField(3);
  @$pb.TagNumber(3)
  $3.Params ensureParams() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get createLocalhost => $_getBF(3);
  @$pb.TagNumber(4)
  set createLocalhost($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreateLocalhost() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateLocalhost() => clearField(4);
}

