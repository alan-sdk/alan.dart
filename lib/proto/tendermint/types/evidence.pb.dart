///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $3;
import 'types.pb.dart' as $5;
import 'validator.pb.dart' as $4;

enum Evidence_Sum {
  duplicateVoteEvidence,
  lightClientAttackEvidence,
  notSet
}

class Evidence extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Evidence_Sum> _Evidence_SumByTag = {
    1 : Evidence_Sum.duplicateVoteEvidence,
    2 : Evidence_Sum.lightClientAttackEvidence,
    0 : Evidence_Sum.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Evidence', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.types'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DuplicateVoteEvidence>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duplicateVoteEvidence', subBuilder: DuplicateVoteEvidence.create)
    ..aOM<LightClientAttackEvidence>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lightClientAttackEvidence', subBuilder: LightClientAttackEvidence.create)
    ..hasRequiredFields = false
  ;

  Evidence._() : super();
  factory Evidence({
    DuplicateVoteEvidence? duplicateVoteEvidence,
    LightClientAttackEvidence? lightClientAttackEvidence,
  }) {
    final _result = create();
    if (duplicateVoteEvidence != null) {
      _result.duplicateVoteEvidence = duplicateVoteEvidence;
    }
    if (lightClientAttackEvidence != null) {
      _result.lightClientAttackEvidence = lightClientAttackEvidence;
    }
    return _result;
  }
  factory Evidence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Evidence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Evidence clone() => Evidence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Evidence copyWith(void Function(Evidence) updates) => super.copyWith((message) => updates(message as Evidence)) as Evidence; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Evidence create() => Evidence._();
  Evidence createEmptyInstance() => create();
  static $pb.PbList<Evidence> createRepeated() => $pb.PbList<Evidence>();
  @$core.pragma('dart2js:noInline')
  static Evidence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Evidence>(create);
  static Evidence? _defaultInstance;

  Evidence_Sum whichSum() => _Evidence_SumByTag[$_whichOneof(0)]!;
  void clearSum() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DuplicateVoteEvidence get duplicateVoteEvidence => $_getN(0);
  @$pb.TagNumber(1)
  set duplicateVoteEvidence(DuplicateVoteEvidence v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDuplicateVoteEvidence() => $_has(0);
  @$pb.TagNumber(1)
  void clearDuplicateVoteEvidence() => clearField(1);
  @$pb.TagNumber(1)
  DuplicateVoteEvidence ensureDuplicateVoteEvidence() => $_ensure(0);

  @$pb.TagNumber(2)
  LightClientAttackEvidence get lightClientAttackEvidence => $_getN(1);
  @$pb.TagNumber(2)
  set lightClientAttackEvidence(LightClientAttackEvidence v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLightClientAttackEvidence() => $_has(1);
  @$pb.TagNumber(2)
  void clearLightClientAttackEvidence() => clearField(2);
  @$pb.TagNumber(2)
  LightClientAttackEvidence ensureLightClientAttackEvidence() => $_ensure(1);
}

class DuplicateVoteEvidence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DuplicateVoteEvidence', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.types'), createEmptyInstance: create)
    ..aOM<$5.Vote>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'voteA', subBuilder: $5.Vote.create)
    ..aOM<$5.Vote>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'voteB', subBuilder: $5.Vote.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalVotingPower')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validatorPower')
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  DuplicateVoteEvidence._() : super();
  factory DuplicateVoteEvidence({
    $5.Vote? voteA,
    $5.Vote? voteB,
    $fixnum.Int64? totalVotingPower,
    $fixnum.Int64? validatorPower,
    $3.Timestamp? timestamp,
  }) {
    final _result = create();
    if (voteA != null) {
      _result.voteA = voteA;
    }
    if (voteB != null) {
      _result.voteB = voteB;
    }
    if (totalVotingPower != null) {
      _result.totalVotingPower = totalVotingPower;
    }
    if (validatorPower != null) {
      _result.validatorPower = validatorPower;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory DuplicateVoteEvidence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DuplicateVoteEvidence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DuplicateVoteEvidence clone() => DuplicateVoteEvidence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DuplicateVoteEvidence copyWith(void Function(DuplicateVoteEvidence) updates) => super.copyWith((message) => updates(message as DuplicateVoteEvidence)) as DuplicateVoteEvidence; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DuplicateVoteEvidence create() => DuplicateVoteEvidence._();
  DuplicateVoteEvidence createEmptyInstance() => create();
  static $pb.PbList<DuplicateVoteEvidence> createRepeated() => $pb.PbList<DuplicateVoteEvidence>();
  @$core.pragma('dart2js:noInline')
  static DuplicateVoteEvidence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DuplicateVoteEvidence>(create);
  static DuplicateVoteEvidence? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Vote get voteA => $_getN(0);
  @$pb.TagNumber(1)
  set voteA($5.Vote v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVoteA() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoteA() => clearField(1);
  @$pb.TagNumber(1)
  $5.Vote ensureVoteA() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.Vote get voteB => $_getN(1);
  @$pb.TagNumber(2)
  set voteB($5.Vote v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVoteB() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoteB() => clearField(2);
  @$pb.TagNumber(2)
  $5.Vote ensureVoteB() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalVotingPower => $_getI64(2);
  @$pb.TagNumber(3)
  set totalVotingPower($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalVotingPower() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalVotingPower() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get validatorPower => $_getI64(3);
  @$pb.TagNumber(4)
  set validatorPower($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidatorPower() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidatorPower() => clearField(4);

  @$pb.TagNumber(5)
  $3.Timestamp get timestamp => $_getN(4);
  @$pb.TagNumber(5)
  set timestamp($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureTimestamp() => $_ensure(4);
}

class LightClientAttackEvidence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LightClientAttackEvidence', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.types'), createEmptyInstance: create)
    ..aOM<$5.LightBlock>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conflictingBlock', subBuilder: $5.LightBlock.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commonHeight')
    ..pc<$4.Validator>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'byzantineValidators', $pb.PbFieldType.PM, subBuilder: $4.Validator.create)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalVotingPower')
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  LightClientAttackEvidence._() : super();
  factory LightClientAttackEvidence({
    $5.LightBlock? conflictingBlock,
    $fixnum.Int64? commonHeight,
    $core.Iterable<$4.Validator>? byzantineValidators,
    $fixnum.Int64? totalVotingPower,
    $3.Timestamp? timestamp,
  }) {
    final _result = create();
    if (conflictingBlock != null) {
      _result.conflictingBlock = conflictingBlock;
    }
    if (commonHeight != null) {
      _result.commonHeight = commonHeight;
    }
    if (byzantineValidators != null) {
      _result.byzantineValidators.addAll(byzantineValidators);
    }
    if (totalVotingPower != null) {
      _result.totalVotingPower = totalVotingPower;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory LightClientAttackEvidence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LightClientAttackEvidence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LightClientAttackEvidence clone() => LightClientAttackEvidence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LightClientAttackEvidence copyWith(void Function(LightClientAttackEvidence) updates) => super.copyWith((message) => updates(message as LightClientAttackEvidence)) as LightClientAttackEvidence; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightClientAttackEvidence create() => LightClientAttackEvidence._();
  LightClientAttackEvidence createEmptyInstance() => create();
  static $pb.PbList<LightClientAttackEvidence> createRepeated() => $pb.PbList<LightClientAttackEvidence>();
  @$core.pragma('dart2js:noInline')
  static LightClientAttackEvidence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LightClientAttackEvidence>(create);
  static LightClientAttackEvidence? _defaultInstance;

  @$pb.TagNumber(1)
  $5.LightBlock get conflictingBlock => $_getN(0);
  @$pb.TagNumber(1)
  set conflictingBlock($5.LightBlock v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConflictingBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearConflictingBlock() => clearField(1);
  @$pb.TagNumber(1)
  $5.LightBlock ensureConflictingBlock() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get commonHeight => $_getI64(1);
  @$pb.TagNumber(2)
  set commonHeight($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonHeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$4.Validator> get byzantineValidators => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get totalVotingPower => $_getI64(3);
  @$pb.TagNumber(4)
  set totalVotingPower($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalVotingPower() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalVotingPower() => clearField(4);

  @$pb.TagNumber(5)
  $3.Timestamp get timestamp => $_getN(4);
  @$pb.TagNumber(5)
  set timestamp($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureTimestamp() => $_ensure(4);
}

class EvidenceList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EvidenceList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tendermint.types'), createEmptyInstance: create)
    ..pc<Evidence>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'evidence', $pb.PbFieldType.PM, subBuilder: Evidence.create)
    ..hasRequiredFields = false
  ;

  EvidenceList._() : super();
  factory EvidenceList({
    $core.Iterable<Evidence>? evidence,
  }) {
    final _result = create();
    if (evidence != null) {
      _result.evidence.addAll(evidence);
    }
    return _result;
  }
  factory EvidenceList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EvidenceList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EvidenceList clone() => EvidenceList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EvidenceList copyWith(void Function(EvidenceList) updates) => super.copyWith((message) => updates(message as EvidenceList)) as EvidenceList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EvidenceList create() => EvidenceList._();
  EvidenceList createEmptyInstance() => create();
  static $pb.PbList<EvidenceList> createRepeated() => $pb.PbList<EvidenceList>();
  @$core.pragma('dart2js:noInline')
  static EvidenceList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EvidenceList>(create);
  static EvidenceList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Evidence> get evidence => $_getList(0);
}

