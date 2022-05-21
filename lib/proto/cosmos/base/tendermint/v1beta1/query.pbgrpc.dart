///
//  Generated code. Do not modify.
//  source: cosmos/base/tendermint/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class ServiceClient extends $grpc.Client {
  static final _$getNodeInfo =
      $grpc.ClientMethod<$0.GetNodeInfoRequest, $0.GetNodeInfoResponse>(
          '/cosmos.base.tendermint.v1beta1.Service/GetNodeInfo',
          ($0.GetNodeInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetNodeInfoResponse.fromBuffer(value));
  static final _$getSyncing =
      $grpc.ClientMethod<$0.GetSyncingRequest, $0.GetSyncingResponse>(
          '/cosmos.base.tendermint.v1beta1.Service/GetSyncing',
          ($0.GetSyncingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetSyncingResponse.fromBuffer(value));
  static final _$getLatestBlock =
      $grpc.ClientMethod<$0.GetLatestBlockRequest, $0.GetLatestBlockResponse>(
          '/cosmos.base.tendermint.v1beta1.Service/GetLatestBlock',
          ($0.GetLatestBlockRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetLatestBlockResponse.fromBuffer(value));
  static final _$getBlockByHeight = $grpc.ClientMethod<
          $0.GetBlockByHeightRequest, $0.GetBlockByHeightResponse>(
      '/cosmos.base.tendermint.v1beta1.Service/GetBlockByHeight',
      ($0.GetBlockByHeightRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetBlockByHeightResponse.fromBuffer(value));
  static final _$getLatestValidatorSet = $grpc.ClientMethod<
          $0.GetLatestValidatorSetRequest, $0.GetLatestValidatorSetResponse>(
      '/cosmos.base.tendermint.v1beta1.Service/GetLatestValidatorSet',
      ($0.GetLatestValidatorSetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetLatestValidatorSetResponse.fromBuffer(value));
  static final _$getValidatorSetByHeight = $grpc.ClientMethod<
          $0.GetValidatorSetByHeightRequest,
          $0.GetValidatorSetByHeightResponse>(
      '/cosmos.base.tendermint.v1beta1.Service/GetValidatorSetByHeight',
      ($0.GetValidatorSetByHeightRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetValidatorSetByHeightResponse.fromBuffer(value));

  ServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetNodeInfoResponse> getNodeInfo(
      $0.GetNodeInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNodeInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSyncingResponse> getSyncing(
      $0.GetSyncingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSyncing, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetLatestBlockResponse> getLatestBlock(
      $0.GetLatestBlockRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLatestBlock, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBlockByHeightResponse> getBlockByHeight(
      $0.GetBlockByHeightRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBlockByHeight, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetLatestValidatorSetResponse> getLatestValidatorSet(
      $0.GetLatestValidatorSetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLatestValidatorSet, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetValidatorSetByHeightResponse>
      getValidatorSetByHeight($0.GetValidatorSetByHeightRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getValidatorSetByHeight, request,
        options: options);
  }
}

abstract class ServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.base.tendermint.v1beta1.Service';

  ServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetNodeInfoRequest, $0.GetNodeInfoResponse>(
            'GetNodeInfo',
            getNodeInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetNodeInfoRequest.fromBuffer(value),
            ($0.GetNodeInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSyncingRequest, $0.GetSyncingResponse>(
        'GetSyncing',
        getSyncing_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSyncingRequest.fromBuffer(value),
        ($0.GetSyncingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetLatestBlockRequest,
            $0.GetLatestBlockResponse>(
        'GetLatestBlock',
        getLatestBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetLatestBlockRequest.fromBuffer(value),
        ($0.GetLatestBlockResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBlockByHeightRequest,
            $0.GetBlockByHeightResponse>(
        'GetBlockByHeight',
        getBlockByHeight_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetBlockByHeightRequest.fromBuffer(value),
        ($0.GetBlockByHeightResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetLatestValidatorSetRequest,
            $0.GetLatestValidatorSetResponse>(
        'GetLatestValidatorSet',
        getLatestValidatorSet_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetLatestValidatorSetRequest.fromBuffer(value),
        ($0.GetLatestValidatorSetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetValidatorSetByHeightRequest,
            $0.GetValidatorSetByHeightResponse>(
        'GetValidatorSetByHeight',
        getValidatorSetByHeight_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetValidatorSetByHeightRequest.fromBuffer(value),
        ($0.GetValidatorSetByHeightResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetNodeInfoResponse> getNodeInfo_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetNodeInfoRequest> request) async {
    return getNodeInfo(call, await request);
  }

  $async.Future<$0.GetSyncingResponse> getSyncing_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetSyncingRequest> request) async {
    return getSyncing(call, await request);
  }

  $async.Future<$0.GetLatestBlockResponse> getLatestBlock_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetLatestBlockRequest> request) async {
    return getLatestBlock(call, await request);
  }

  $async.Future<$0.GetBlockByHeightResponse> getBlockByHeight_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetBlockByHeightRequest> request) async {
    return getBlockByHeight(call, await request);
  }

  $async.Future<$0.GetLatestValidatorSetResponse> getLatestValidatorSet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetLatestValidatorSetRequest> request) async {
    return getLatestValidatorSet(call, await request);
  }

  $async.Future<$0.GetValidatorSetByHeightResponse> getValidatorSetByHeight_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetValidatorSetByHeightRequest> request) async {
    return getValidatorSetByHeight(call, await request);
  }

  $async.Future<$0.GetNodeInfoResponse> getNodeInfo(
      $grpc.ServiceCall call, $0.GetNodeInfoRequest request);
  $async.Future<$0.GetSyncingResponse> getSyncing(
      $grpc.ServiceCall call, $0.GetSyncingRequest request);
  $async.Future<$0.GetLatestBlockResponse> getLatestBlock(
      $grpc.ServiceCall call, $0.GetLatestBlockRequest request);
  $async.Future<$0.GetBlockByHeightResponse> getBlockByHeight(
      $grpc.ServiceCall call, $0.GetBlockByHeightRequest request);
  $async.Future<$0.GetLatestValidatorSetResponse> getLatestValidatorSet(
      $grpc.ServiceCall call, $0.GetLatestValidatorSetRequest request);
  $async.Future<$0.GetValidatorSetByHeightResponse> getValidatorSetByHeight(
      $grpc.ServiceCall call, $0.GetValidatorSetByHeightRequest request);
}
