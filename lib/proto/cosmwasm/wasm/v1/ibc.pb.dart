///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/ibc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class MsgIBCSend extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgIBCSend', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeoutHeight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeoutTimestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MsgIBCSend._() : super();
  factory MsgIBCSend({
    $core.String? channel,
    $fixnum.Int64? timeoutHeight,
    $fixnum.Int64? timeoutTimestamp,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (timeoutHeight != null) {
      _result.timeoutHeight = timeoutHeight;
    }
    if (timeoutTimestamp != null) {
      _result.timeoutTimestamp = timeoutTimestamp;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory MsgIBCSend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgIBCSend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgIBCSend clone() => MsgIBCSend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgIBCSend copyWith(void Function(MsgIBCSend) updates) => super.copyWith((message) => updates(message as MsgIBCSend)) as MsgIBCSend; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgIBCSend create() => MsgIBCSend._();
  MsgIBCSend createEmptyInstance() => create();
  static $pb.PbList<MsgIBCSend> createRepeated() => $pb.PbList<MsgIBCSend>();
  @$core.pragma('dart2js:noInline')
  static MsgIBCSend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgIBCSend>(create);
  static MsgIBCSend? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get channel => $_getSZ(0);
  @$pb.TagNumber(2)
  set channel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(2)
  void clearChannel() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get timeoutHeight => $_getI64(1);
  @$pb.TagNumber(4)
  set timeoutHeight($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimeoutHeight() => $_has(1);
  @$pb.TagNumber(4)
  void clearTimeoutHeight() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timeoutTimestamp => $_getI64(2);
  @$pb.TagNumber(5)
  set timeoutTimestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeoutTimestamp() => $_has(2);
  @$pb.TagNumber(5)
  void clearTimeoutTimestamp() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get data => $_getN(3);
  @$pb.TagNumber(6)
  set data($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasData() => $_has(3);
  @$pb.TagNumber(6)
  void clearData() => clearField(6);
}

class MsgIBCCloseChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgIBCCloseChannel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel')
    ..hasRequiredFields = false
  ;

  MsgIBCCloseChannel._() : super();
  factory MsgIBCCloseChannel({
    $core.String? channel,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    return _result;
  }
  factory MsgIBCCloseChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgIBCCloseChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgIBCCloseChannel clone() => MsgIBCCloseChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgIBCCloseChannel copyWith(void Function(MsgIBCCloseChannel) updates) => super.copyWith((message) => updates(message as MsgIBCCloseChannel)) as MsgIBCCloseChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgIBCCloseChannel create() => MsgIBCCloseChannel._();
  MsgIBCCloseChannel createEmptyInstance() => create();
  static $pb.PbList<MsgIBCCloseChannel> createRepeated() => $pb.PbList<MsgIBCCloseChannel>();
  @$core.pragma('dart2js:noInline')
  static MsgIBCCloseChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgIBCCloseChannel>(create);
  static MsgIBCCloseChannel? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get channel => $_getSZ(0);
  @$pb.TagNumber(2)
  set channel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(2)
  void clearChannel() => clearField(2);
}

