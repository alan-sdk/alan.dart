///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ParameterChangeProposal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParameterChangeProposal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.params.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..pc<ParamChange>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changes', $pb.PbFieldType.PM, subBuilder: ParamChange.create)
    ..hasRequiredFields = false
  ;

  ParameterChangeProposal._() : super();
  factory ParameterChangeProposal({
    $core.String? title,
    $core.String? description,
    $core.Iterable<ParamChange>? changes,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (changes != null) {
      _result.changes.addAll(changes);
    }
    return _result;
  }
  factory ParameterChangeProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParameterChangeProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParameterChangeProposal clone() => ParameterChangeProposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParameterChangeProposal copyWith(void Function(ParameterChangeProposal) updates) => super.copyWith((message) => updates(message as ParameterChangeProposal)) as ParameterChangeProposal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParameterChangeProposal create() => ParameterChangeProposal._();
  ParameterChangeProposal createEmptyInstance() => create();
  static $pb.PbList<ParameterChangeProposal> createRepeated() => $pb.PbList<ParameterChangeProposal>();
  @$core.pragma('dart2js:noInline')
  static ParameterChangeProposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParameterChangeProposal>(create);
  static ParameterChangeProposal? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ParamChange> get changes => $_getList(2);
}

class ParamChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParamChange', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.params.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subspace')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  ParamChange._() : super();
  factory ParamChange({
    $core.String? subspace,
    $core.String? key,
    $core.String? value,
  }) {
    final _result = create();
    if (subspace != null) {
      _result.subspace = subspace;
    }
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory ParamChange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParamChange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParamChange clone() => ParamChange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParamChange copyWith(void Function(ParamChange) updates) => super.copyWith((message) => updates(message as ParamChange)) as ParamChange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParamChange create() => ParamChange._();
  ParamChange createEmptyInstance() => create();
  static $pb.PbList<ParamChange> createRepeated() => $pb.PbList<ParamChange>();
  @$core.pragma('dart2js:noInline')
  static ParamChange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParamChange>(create);
  static ParamChange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subspace => $_getSZ(0);
  @$pb.TagNumber(1)
  set subspace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubspace() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubspace() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

