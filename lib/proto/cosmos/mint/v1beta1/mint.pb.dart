///
//  Generated code. Do not modify.
//  source: cosmos/mint/v1beta1/mint.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Minter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Minter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.mint.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inflation')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'annualProvisions')
    ..hasRequiredFields = false
  ;

  Minter._() : super();
  factory Minter({
    $core.String? inflation,
    $core.String? annualProvisions,
  }) {
    final _result = create();
    if (inflation != null) {
      _result.inflation = inflation;
    }
    if (annualProvisions != null) {
      _result.annualProvisions = annualProvisions;
    }
    return _result;
  }
  factory Minter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Minter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Minter clone() => Minter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Minter copyWith(void Function(Minter) updates) => super.copyWith((message) => updates(message as Minter)) as Minter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Minter create() => Minter._();
  Minter createEmptyInstance() => create();
  static $pb.PbList<Minter> createRepeated() => $pb.PbList<Minter>();
  @$core.pragma('dart2js:noInline')
  static Minter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Minter>(create);
  static Minter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inflation => $_getSZ(0);
  @$pb.TagNumber(1)
  set inflation($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInflation() => $_has(0);
  @$pb.TagNumber(1)
  void clearInflation() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get annualProvisions => $_getSZ(1);
  @$pb.TagNumber(2)
  set annualProvisions($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnnualProvisions() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnnualProvisions() => clearField(2);
}

class Params extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Params', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.mint.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mintDenom')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inflationRateChange')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inflationMax')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inflationMin')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'goalBonded')
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blocksPerYear', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Params._() : super();
  factory Params({
    $core.String? mintDenom,
    $core.String? inflationRateChange,
    $core.String? inflationMax,
    $core.String? inflationMin,
    $core.String? goalBonded,
    $fixnum.Int64? blocksPerYear,
  }) {
    final _result = create();
    if (mintDenom != null) {
      _result.mintDenom = mintDenom;
    }
    if (inflationRateChange != null) {
      _result.inflationRateChange = inflationRateChange;
    }
    if (inflationMax != null) {
      _result.inflationMax = inflationMax;
    }
    if (inflationMin != null) {
      _result.inflationMin = inflationMin;
    }
    if (goalBonded != null) {
      _result.goalBonded = goalBonded;
    }
    if (blocksPerYear != null) {
      _result.blocksPerYear = blocksPerYear;
    }
    return _result;
  }
  factory Params.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Params.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Params clone() => Params()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Params copyWith(void Function(Params) updates) => super.copyWith((message) => updates(message as Params)) as Params; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Params create() => Params._();
  Params createEmptyInstance() => create();
  static $pb.PbList<Params> createRepeated() => $pb.PbList<Params>();
  @$core.pragma('dart2js:noInline')
  static Params getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Params>(create);
  static Params? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mintDenom => $_getSZ(0);
  @$pb.TagNumber(1)
  set mintDenom($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMintDenom() => $_has(0);
  @$pb.TagNumber(1)
  void clearMintDenom() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get inflationRateChange => $_getSZ(1);
  @$pb.TagNumber(2)
  set inflationRateChange($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInflationRateChange() => $_has(1);
  @$pb.TagNumber(2)
  void clearInflationRateChange() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get inflationMax => $_getSZ(2);
  @$pb.TagNumber(3)
  set inflationMax($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInflationMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearInflationMax() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get inflationMin => $_getSZ(3);
  @$pb.TagNumber(4)
  set inflationMin($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInflationMin() => $_has(3);
  @$pb.TagNumber(4)
  void clearInflationMin() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get goalBonded => $_getSZ(4);
  @$pb.TagNumber(5)
  set goalBonded($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGoalBonded() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoalBonded() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get blocksPerYear => $_getI64(5);
  @$pb.TagNumber(6)
  set blocksPerYear($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlocksPerYear() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlocksPerYear() => clearField(6);
}

