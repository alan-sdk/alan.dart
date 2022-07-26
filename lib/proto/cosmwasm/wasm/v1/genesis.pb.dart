///
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'tx.pb.dart' as $0;
import 'types.pb.dart' as $3;

enum GenesisState_GenMsgs_Sum {
  storeCode,
  instantiateContract,
  executeContract,
  notSet
}

class GenesisState_GenMsgs extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GenesisState_GenMsgs_Sum> _GenesisState_GenMsgs_SumByTag = {
    1 : GenesisState_GenMsgs_Sum.storeCode,
    2 : GenesisState_GenMsgs_Sum.instantiateContract,
    3 : GenesisState_GenMsgs_Sum.executeContract,
    0 : GenesisState_GenMsgs_Sum.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState.GenMsgs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$0.MsgStoreCode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeCode', subBuilder: $0.MsgStoreCode.create)
    ..aOM<$0.MsgInstantiateContract>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instantiateContract', subBuilder: $0.MsgInstantiateContract.create)
    ..aOM<$0.MsgExecuteContract>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'executeContract', subBuilder: $0.MsgExecuteContract.create)
    ..hasRequiredFields = false
  ;

  GenesisState_GenMsgs._() : super();
  factory GenesisState_GenMsgs({
    $0.MsgStoreCode? storeCode,
    $0.MsgInstantiateContract? instantiateContract,
    $0.MsgExecuteContract? executeContract,
  }) {
    final _result = create();
    if (storeCode != null) {
      _result.storeCode = storeCode;
    }
    if (instantiateContract != null) {
      _result.instantiateContract = instantiateContract;
    }
    if (executeContract != null) {
      _result.executeContract = executeContract;
    }
    return _result;
  }
  factory GenesisState_GenMsgs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState_GenMsgs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState_GenMsgs clone() => GenesisState_GenMsgs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState_GenMsgs copyWith(void Function(GenesisState_GenMsgs) updates) => super.copyWith((message) => updates(message as GenesisState_GenMsgs)) as GenesisState_GenMsgs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState_GenMsgs create() => GenesisState_GenMsgs._();
  GenesisState_GenMsgs createEmptyInstance() => create();
  static $pb.PbList<GenesisState_GenMsgs> createRepeated() => $pb.PbList<GenesisState_GenMsgs>();
  @$core.pragma('dart2js:noInline')
  static GenesisState_GenMsgs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState_GenMsgs>(create);
  static GenesisState_GenMsgs? _defaultInstance;

  GenesisState_GenMsgs_Sum whichSum() => _GenesisState_GenMsgs_SumByTag[$_whichOneof(0)]!;
  void clearSum() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.MsgStoreCode get storeCode => $_getN(0);
  @$pb.TagNumber(1)
  set storeCode($0.MsgStoreCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreCode() => clearField(1);
  @$pb.TagNumber(1)
  $0.MsgStoreCode ensureStoreCode() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.MsgInstantiateContract get instantiateContract => $_getN(1);
  @$pb.TagNumber(2)
  set instantiateContract($0.MsgInstantiateContract v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInstantiateContract() => $_has(1);
  @$pb.TagNumber(2)
  void clearInstantiateContract() => clearField(2);
  @$pb.TagNumber(2)
  $0.MsgInstantiateContract ensureInstantiateContract() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.MsgExecuteContract get executeContract => $_getN(2);
  @$pb.TagNumber(3)
  set executeContract($0.MsgExecuteContract v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExecuteContract() => $_has(2);
  @$pb.TagNumber(3)
  void clearExecuteContract() => clearField(3);
  @$pb.TagNumber(3)
  $0.MsgExecuteContract ensureExecuteContract() => $_ensure(2);
}

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOM<$3.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $3.Params.create)
    ..pc<Code>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codes', $pb.PbFieldType.PM, subBuilder: Code.create)
    ..pc<Contract>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contracts', $pb.PbFieldType.PM, subBuilder: Contract.create)
    ..pc<Sequence>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequences', $pb.PbFieldType.PM, subBuilder: Sequence.create)
    ..pc<GenesisState_GenMsgs>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genMsgs', $pb.PbFieldType.PM, subBuilder: GenesisState_GenMsgs.create)
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState({
    $3.Params? params,
    $core.Iterable<Code>? codes,
    $core.Iterable<Contract>? contracts,
    $core.Iterable<Sequence>? sequences,
    $core.Iterable<GenesisState_GenMsgs>? genMsgs,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    if (codes != null) {
      _result.codes.addAll(codes);
    }
    if (contracts != null) {
      _result.contracts.addAll(contracts);
    }
    if (sequences != null) {
      _result.sequences.addAll(sequences);
    }
    if (genMsgs != null) {
      _result.genMsgs.addAll(genMsgs);
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
  $3.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($3.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $3.Params ensureParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Code> get codes => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Contract> get contracts => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Sequence> get sequences => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<GenesisState_GenMsgs> get genMsgs => $_getList(4);
}

class Code extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Code', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$3.CodeInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeInfo', subBuilder: $3.CodeInfo.create)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeBytes', $pb.PbFieldType.OY)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pinned')
    ..hasRequiredFields = false
  ;

  Code._() : super();
  factory Code({
    $fixnum.Int64? codeId,
    $3.CodeInfo? codeInfo,
    $core.List<$core.int>? codeBytes,
    $core.bool? pinned,
  }) {
    final _result = create();
    if (codeId != null) {
      _result.codeId = codeId;
    }
    if (codeInfo != null) {
      _result.codeInfo = codeInfo;
    }
    if (codeBytes != null) {
      _result.codeBytes = codeBytes;
    }
    if (pinned != null) {
      _result.pinned = pinned;
    }
    return _result;
  }
  factory Code.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Code.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Code clone() => Code()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Code copyWith(void Function(Code) updates) => super.copyWith((message) => updates(message as Code)) as Code; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Code create() => Code._();
  Code createEmptyInstance() => create();
  static $pb.PbList<Code> createRepeated() => $pb.PbList<Code>();
  @$core.pragma('dart2js:noInline')
  static Code getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Code>(create);
  static Code? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get codeId => $_getI64(0);
  @$pb.TagNumber(1)
  set codeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCodeId() => clearField(1);

  @$pb.TagNumber(2)
  $3.CodeInfo get codeInfo => $_getN(1);
  @$pb.TagNumber(2)
  set codeInfo($3.CodeInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCodeInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodeInfo() => clearField(2);
  @$pb.TagNumber(2)
  $3.CodeInfo ensureCodeInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get codeBytes => $_getN(2);
  @$pb.TagNumber(3)
  set codeBytes($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCodeBytes() => $_has(2);
  @$pb.TagNumber(3)
  void clearCodeBytes() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get pinned => $_getBF(3);
  @$pb.TagNumber(4)
  set pinned($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPinned() => $_has(3);
  @$pb.TagNumber(4)
  void clearPinned() => clearField(4);
}

class Contract extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Contract', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractAddress')
    ..aOM<$3.ContractInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractInfo', subBuilder: $3.ContractInfo.create)
    ..pc<$3.Model>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contractState', $pb.PbFieldType.PM, subBuilder: $3.Model.create)
    ..hasRequiredFields = false
  ;

  Contract._() : super();
  factory Contract({
    $core.String? contractAddress,
    $3.ContractInfo? contractInfo,
    $core.Iterable<$3.Model>? contractState,
  }) {
    final _result = create();
    if (contractAddress != null) {
      _result.contractAddress = contractAddress;
    }
    if (contractInfo != null) {
      _result.contractInfo = contractInfo;
    }
    if (contractState != null) {
      _result.contractState.addAll(contractState);
    }
    return _result;
  }
  factory Contract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Contract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Contract clone() => Contract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Contract copyWith(void Function(Contract) updates) => super.copyWith((message) => updates(message as Contract)) as Contract; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Contract create() => Contract._();
  Contract createEmptyInstance() => create();
  static $pb.PbList<Contract> createRepeated() => $pb.PbList<Contract>();
  @$core.pragma('dart2js:noInline')
  static Contract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contract>(create);
  static Contract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contractAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set contractAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContractAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearContractAddress() => clearField(1);

  @$pb.TagNumber(2)
  $3.ContractInfo get contractInfo => $_getN(1);
  @$pb.TagNumber(2)
  set contractInfo($3.ContractInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContractInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearContractInfo() => clearField(2);
  @$pb.TagNumber(2)
  $3.ContractInfo ensureContractInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$3.Model> get contractState => $_getList(2);
}

class Sequence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Sequence', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmwasm.wasm.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'idKey', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Sequence._() : super();
  factory Sequence({
    $core.List<$core.int>? idKey,
    $fixnum.Int64? value,
  }) {
    final _result = create();
    if (idKey != null) {
      _result.idKey = idKey;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Sequence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sequence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sequence clone() => Sequence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sequence copyWith(void Function(Sequence) updates) => super.copyWith((message) => updates(message as Sequence)) as Sequence; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sequence create() => Sequence._();
  Sequence createEmptyInstance() => create();
  static $pb.PbList<Sequence> createRepeated() => $pb.PbList<Sequence>();
  @$core.pragma('dart2js:noInline')
  static Sequence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sequence>(create);
  static Sequence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get idKey => $_getN(0);
  @$pb.TagNumber(1)
  set idKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$pb.TagNumber(2)
  set value($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

