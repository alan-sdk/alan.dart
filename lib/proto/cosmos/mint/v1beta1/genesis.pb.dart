///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'mint.pb.dart' as $1;

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.mint.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.Minter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minter', subBuilder: $1.Minter.create)
    ..aOM<$1.Params>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $1.Params.create)
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState({
    $1.Minter? minter,
    $1.Params? params,
  }) {
    final _result = create();
    if (minter != null) {
      _result.minter = minter;
    }
    if (params != null) {
      _result.params = params;
    }
    return _result;
  }
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
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)) as GenesisState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Minter get minter => $_getN(0);
  @$pb.TagNumber(1)
  set minter($1.Minter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinter() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinter() => clearField(1);
  @$pb.TagNumber(1)
  $1.Minter ensureMinter() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Params get params => $_getN(1);
  @$pb.TagNumber(2)
  set params($1.Params v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);
  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
  @$pb.TagNumber(2)
  $1.Params ensureParams() => $_ensure(1);
}

