///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$contractInfo = $grpc.ClientMethod<$0.QueryContractInfoRequest,
          $0.QueryContractInfoResponse>(
      '/cosmwasm.wasm.v1.Query/ContractInfo',
      ($0.QueryContractInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryContractInfoResponse.fromBuffer(value));
  static final _$contractHistory = $grpc.ClientMethod<
          $0.QueryContractHistoryRequest, $0.QueryContractHistoryResponse>(
      '/cosmwasm.wasm.v1.Query/ContractHistory',
      ($0.QueryContractHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryContractHistoryResponse.fromBuffer(value));
  static final _$contractsByCode = $grpc.ClientMethod<
          $0.QueryContractsByCodeRequest, $0.QueryContractsByCodeResponse>(
      '/cosmwasm.wasm.v1.Query/ContractsByCode',
      ($0.QueryContractsByCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryContractsByCodeResponse.fromBuffer(value));
  static final _$allContractState = $grpc.ClientMethod<
          $0.QueryAllContractStateRequest, $0.QueryAllContractStateResponse>(
      '/cosmwasm.wasm.v1.Query/AllContractState',
      ($0.QueryAllContractStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryAllContractStateResponse.fromBuffer(value));
  static final _$rawContractState = $grpc.ClientMethod<
          $0.QueryRawContractStateRequest, $0.QueryRawContractStateResponse>(
      '/cosmwasm.wasm.v1.Query/RawContractState',
      ($0.QueryRawContractStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryRawContractStateResponse.fromBuffer(value));
  static final _$smartContractState = $grpc.ClientMethod<
          $0.QuerySmartContractStateRequest,
          $0.QuerySmartContractStateResponse>(
      '/cosmwasm.wasm.v1.Query/SmartContractState',
      ($0.QuerySmartContractStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QuerySmartContractStateResponse.fromBuffer(value));
  static final _$code =
      $grpc.ClientMethod<$0.QueryCodeRequest, $0.QueryCodeResponse>(
          '/cosmwasm.wasm.v1.Query/Code',
          ($0.QueryCodeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryCodeResponse.fromBuffer(value));
  static final _$codes =
      $grpc.ClientMethod<$0.QueryCodesRequest, $0.QueryCodesResponse>(
          '/cosmwasm.wasm.v1.Query/Codes',
          ($0.QueryCodesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryCodesResponse.fromBuffer(value));
  static final _$pinnedCodes = $grpc.ClientMethod<$0.QueryPinnedCodesRequest,
          $0.QueryPinnedCodesResponse>(
      '/cosmwasm.wasm.v1.Query/PinnedCodes',
      ($0.QueryPinnedCodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryPinnedCodesResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryContractInfoResponse> contractInfo(
      $0.QueryContractInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$contractInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryContractHistoryResponse> contractHistory(
      $0.QueryContractHistoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$contractHistory, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryContractsByCodeResponse> contractsByCode(
      $0.QueryContractsByCodeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$contractsByCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAllContractStateResponse> allContractState(
      $0.QueryAllContractStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$allContractState, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryRawContractStateResponse> rawContractState(
      $0.QueryRawContractStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rawContractState, request, options: options);
  }

  $grpc.ResponseFuture<$0.QuerySmartContractStateResponse> smartContractState(
      $0.QuerySmartContractStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$smartContractState, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryCodeResponse> code($0.QueryCodeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$code, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryCodesResponse> codes(
      $0.QueryCodesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$codes, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryPinnedCodesResponse> pinnedCodes(
      $0.QueryPinnedCodesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pinnedCodes, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmwasm.wasm.v1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QueryContractInfoRequest,
            $0.QueryContractInfoResponse>(
        'ContractInfo',
        contractInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryContractInfoRequest.fromBuffer(value),
        ($0.QueryContractInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryContractHistoryRequest,
            $0.QueryContractHistoryResponse>(
        'ContractHistory',
        contractHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryContractHistoryRequest.fromBuffer(value),
        ($0.QueryContractHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryContractsByCodeRequest,
            $0.QueryContractsByCodeResponse>(
        'ContractsByCode',
        contractsByCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryContractsByCodeRequest.fromBuffer(value),
        ($0.QueryContractsByCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryAllContractStateRequest,
            $0.QueryAllContractStateResponse>(
        'AllContractState',
        allContractState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryAllContractStateRequest.fromBuffer(value),
        ($0.QueryAllContractStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryRawContractStateRequest,
            $0.QueryRawContractStateResponse>(
        'RawContractState',
        rawContractState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryRawContractStateRequest.fromBuffer(value),
        ($0.QueryRawContractStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QuerySmartContractStateRequest,
            $0.QuerySmartContractStateResponse>(
        'SmartContractState',
        smartContractState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QuerySmartContractStateRequest.fromBuffer(value),
        ($0.QuerySmartContractStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryCodeRequest, $0.QueryCodeResponse>(
        'Code',
        code_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryCodeRequest.fromBuffer(value),
        ($0.QueryCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryCodesRequest, $0.QueryCodesResponse>(
        'Codes',
        codes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryCodesRequest.fromBuffer(value),
        ($0.QueryCodesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryPinnedCodesRequest,
            $0.QueryPinnedCodesResponse>(
        'PinnedCodes',
        pinnedCodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryPinnedCodesRequest.fromBuffer(value),
        ($0.QueryPinnedCodesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryContractInfoResponse> contractInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryContractInfoRequest> request) async {
    return contractInfo(call, await request);
  }

  $async.Future<$0.QueryContractHistoryResponse> contractHistory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryContractHistoryRequest> request) async {
    return contractHistory(call, await request);
  }

  $async.Future<$0.QueryContractsByCodeResponse> contractsByCode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryContractsByCodeRequest> request) async {
    return contractsByCode(call, await request);
  }

  $async.Future<$0.QueryAllContractStateResponse> allContractState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryAllContractStateRequest> request) async {
    return allContractState(call, await request);
  }

  $async.Future<$0.QueryRawContractStateResponse> rawContractState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryRawContractStateRequest> request) async {
    return rawContractState(call, await request);
  }

  $async.Future<$0.QuerySmartContractStateResponse> smartContractState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QuerySmartContractStateRequest> request) async {
    return smartContractState(call, await request);
  }

  $async.Future<$0.QueryCodeResponse> code_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryCodeRequest> request) async {
    return code(call, await request);
  }

  $async.Future<$0.QueryCodesResponse> codes_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryCodesRequest> request) async {
    return codes(call, await request);
  }

  $async.Future<$0.QueryPinnedCodesResponse> pinnedCodes_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryPinnedCodesRequest> request) async {
    return pinnedCodes(call, await request);
  }

  $async.Future<$0.QueryContractInfoResponse> contractInfo(
      $grpc.ServiceCall call, $0.QueryContractInfoRequest request);
  $async.Future<$0.QueryContractHistoryResponse> contractHistory(
      $grpc.ServiceCall call, $0.QueryContractHistoryRequest request);
  $async.Future<$0.QueryContractsByCodeResponse> contractsByCode(
      $grpc.ServiceCall call, $0.QueryContractsByCodeRequest request);
  $async.Future<$0.QueryAllContractStateResponse> allContractState(
      $grpc.ServiceCall call, $0.QueryAllContractStateRequest request);
  $async.Future<$0.QueryRawContractStateResponse> rawContractState(
      $grpc.ServiceCall call, $0.QueryRawContractStateRequest request);
  $async.Future<$0.QuerySmartContractStateResponse> smartContractState(
      $grpc.ServiceCall call, $0.QuerySmartContractStateRequest request);
  $async.Future<$0.QueryCodeResponse> code(
      $grpc.ServiceCall call, $0.QueryCodeRequest request);
  $async.Future<$0.QueryCodesResponse> codes(
      $grpc.ServiceCall call, $0.QueryCodesRequest request);
  $async.Future<$0.QueryPinnedCodesResponse> pinnedCodes(
      $grpc.ServiceCall call, $0.QueryPinnedCodesRequest request);
}
