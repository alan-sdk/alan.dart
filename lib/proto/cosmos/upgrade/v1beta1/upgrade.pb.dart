///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $2;
import '../../../google/protobuf/timestamp.pb.dart' as $1;

class Plan extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Plan', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.upgrade.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$1.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', subBuilder: $1.Timestamp.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info')
    ..aOM<$2.Any>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upgradedClientState', subBuilder: $2.Any.create)
    ..hasRequiredFields = false
  ;

  Plan._() : super();
  factory Plan({
    $core.String? name,
    $1.Timestamp? time,
    $fixnum.Int64? height,
    $core.String? info,
    $2.Any? upgradedClientState,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (time != null) {
      _result.time = time;
    }
    if (height != null) {
      _result.height = height;
    }
    if (info != null) {
      _result.info = info;
    }
    if (upgradedClientState != null) {
      _result.upgradedClientState = upgradedClientState;
    }
    return _result;
  }
  factory Plan.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Plan.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Plan clone() => Plan()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Plan copyWith(void Function(Plan) updates) => super.copyWith((message) => updates(message as Plan)) as Plan; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Plan create() => Plan._();
  Plan createEmptyInstance() => create();
  static $pb.PbList<Plan> createRepeated() => $pb.PbList<Plan>();
  @$core.pragma('dart2js:noInline')
  static Plan getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Plan>(create);
  static Plan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $1.Timestamp get time => $_getN(1);
  @$pb.TagNumber(2)
  set time($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get info => $_getSZ(3);
  @$pb.TagNumber(4)
  set info($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);

  @$pb.TagNumber(5)
  $2.Any get upgradedClientState => $_getN(4);
  @$pb.TagNumber(5)
  set upgradedClientState($2.Any v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpgradedClientState() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpgradedClientState() => clearField(5);
  @$pb.TagNumber(5)
  $2.Any ensureUpgradedClientState() => $_ensure(4);
}

class SoftwareUpgradeProposal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SoftwareUpgradeProposal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.upgrade.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<Plan>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'plan', subBuilder: Plan.create)
    ..hasRequiredFields = false
  ;

  SoftwareUpgradeProposal._() : super();
  factory SoftwareUpgradeProposal({
    $core.String? title,
    $core.String? description,
    Plan? plan,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (plan != null) {
      _result.plan = plan;
    }
    return _result;
  }
  factory SoftwareUpgradeProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SoftwareUpgradeProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SoftwareUpgradeProposal clone() => SoftwareUpgradeProposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SoftwareUpgradeProposal copyWith(void Function(SoftwareUpgradeProposal) updates) => super.copyWith((message) => updates(message as SoftwareUpgradeProposal)) as SoftwareUpgradeProposal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SoftwareUpgradeProposal create() => SoftwareUpgradeProposal._();
  SoftwareUpgradeProposal createEmptyInstance() => create();
  static $pb.PbList<SoftwareUpgradeProposal> createRepeated() => $pb.PbList<SoftwareUpgradeProposal>();
  @$core.pragma('dart2js:noInline')
  static SoftwareUpgradeProposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SoftwareUpgradeProposal>(create);
  static SoftwareUpgradeProposal? _defaultInstance;

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
  Plan get plan => $_getN(2);
  @$pb.TagNumber(3)
  set plan(Plan v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlan() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlan() => clearField(3);
  @$pb.TagNumber(3)
  Plan ensurePlan() => $_ensure(2);
}

class CancelSoftwareUpgradeProposal extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelSoftwareUpgradeProposal', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.upgrade.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  CancelSoftwareUpgradeProposal._() : super();
  factory CancelSoftwareUpgradeProposal({
    $core.String? title,
    $core.String? description,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory CancelSoftwareUpgradeProposal.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelSoftwareUpgradeProposal.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelSoftwareUpgradeProposal clone() => CancelSoftwareUpgradeProposal()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelSoftwareUpgradeProposal copyWith(void Function(CancelSoftwareUpgradeProposal) updates) => super.copyWith((message) => updates(message as CancelSoftwareUpgradeProposal)) as CancelSoftwareUpgradeProposal; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelSoftwareUpgradeProposal create() => CancelSoftwareUpgradeProposal._();
  CancelSoftwareUpgradeProposal createEmptyInstance() => create();
  static $pb.PbList<CancelSoftwareUpgradeProposal> createRepeated() => $pb.PbList<CancelSoftwareUpgradeProposal>();
  @$core.pragma('dart2js:noInline')
  static CancelSoftwareUpgradeProposal getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelSoftwareUpgradeProposal>(create);
  static CancelSoftwareUpgradeProposal? _defaultInstance;

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
}

