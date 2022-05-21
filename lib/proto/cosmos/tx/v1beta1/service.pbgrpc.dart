///
//  Generated code. Do not modify.
//  source: cosmos/tx/v1beta1/service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart' as $1;
export 'service.pb.dart';

class ServiceClient extends $grpc.Client {
  static final _$simulate =
      $grpc.ClientMethod<$1.SimulateRequest, $1.SimulateResponse>(
          '/cosmos.tx.v1beta1.Service/Simulate',
          ($1.SimulateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SimulateResponse.fromBuffer(value));
  static final _$getTx = $grpc.ClientMethod<$1.GetTxRequest, $1.GetTxResponse>(
      '/cosmos.tx.v1beta1.Service/GetTx',
      ($1.GetTxRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetTxResponse.fromBuffer(value));
  static final _$broadcastTx =
      $grpc.ClientMethod<$1.BroadcastTxRequest, $1.BroadcastTxResponse>(
          '/cosmos.tx.v1beta1.Service/BroadcastTx',
          ($1.BroadcastTxRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BroadcastTxResponse.fromBuffer(value));
  static final _$getTxsEvent =
      $grpc.ClientMethod<$1.GetTxsEventRequest, $1.GetTxsEventResponse>(
          '/cosmos.tx.v1beta1.Service/GetTxsEvent',
          ($1.GetTxsEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetTxsEventResponse.fromBuffer(value));
  static final _$getBlockWithTxs =
      $grpc.ClientMethod<$1.GetBlockWithTxsRequest, $1.GetBlockWithTxsResponse>(
          '/cosmos.tx.v1beta1.Service/GetBlockWithTxs',
          ($1.GetBlockWithTxsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetBlockWithTxsResponse.fromBuffer(value));

  ServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.SimulateResponse> simulate($1.SimulateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$simulate, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetTxResponse> getTx($1.GetTxRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTx, request, options: options);
  }

  $grpc.ResponseFuture<$1.BroadcastTxResponse> broadcastTx(
      $1.BroadcastTxRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$broadcastTx, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetTxsEventResponse> getTxsEvent(
      $1.GetTxsEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTxsEvent, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetBlockWithTxsResponse> getBlockWithTxs(
      $1.GetBlockWithTxsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBlockWithTxs, request, options: options);
  }
}

abstract class ServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.tx.v1beta1.Service';

  ServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.SimulateRequest, $1.SimulateResponse>(
        'Simulate',
        simulate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SimulateRequest.fromBuffer(value),
        ($1.SimulateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetTxRequest, $1.GetTxResponse>(
        'GetTx',
        getTx_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetTxRequest.fromBuffer(value),
        ($1.GetTxResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.BroadcastTxRequest, $1.BroadcastTxResponse>(
            'BroadcastTx',
            broadcastTx_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.BroadcastTxRequest.fromBuffer(value),
            ($1.BroadcastTxResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.GetTxsEventRequest, $1.GetTxsEventResponse>(
            'GetTxsEvent',
            getTxsEvent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.GetTxsEventRequest.fromBuffer(value),
            ($1.GetTxsEventResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetBlockWithTxsRequest,
            $1.GetBlockWithTxsResponse>(
        'GetBlockWithTxs',
        getBlockWithTxs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetBlockWithTxsRequest.fromBuffer(value),
        ($1.GetBlockWithTxsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.SimulateResponse> simulate_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SimulateRequest> request) async {
    return simulate(call, await request);
  }

  $async.Future<$1.GetTxResponse> getTx_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetTxRequest> request) async {
    return getTx(call, await request);
  }

  $async.Future<$1.BroadcastTxResponse> broadcastTx_Pre($grpc.ServiceCall call,
      $async.Future<$1.BroadcastTxRequest> request) async {
    return broadcastTx(call, await request);
  }

  $async.Future<$1.GetTxsEventResponse> getTxsEvent_Pre($grpc.ServiceCall call,
      $async.Future<$1.GetTxsEventRequest> request) async {
    return getTxsEvent(call, await request);
  }

  $async.Future<$1.GetBlockWithTxsResponse> getBlockWithTxs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetBlockWithTxsRequest> request) async {
    return getBlockWithTxs(call, await request);
  }

  $async.Future<$1.SimulateResponse> simulate(
      $grpc.ServiceCall call, $1.SimulateRequest request);
  $async.Future<$1.GetTxResponse> getTx(
      $grpc.ServiceCall call, $1.GetTxRequest request);
  $async.Future<$1.BroadcastTxResponse> broadcastTx(
      $grpc.ServiceCall call, $1.BroadcastTxRequest request);
  $async.Future<$1.GetTxsEventResponse> getTxsEvent(
      $grpc.ServiceCall call, $1.GetTxsEventRequest request);
  $async.Future<$1.GetBlockWithTxsResponse> getBlockWithTxs(
      $grpc.ServiceCall call, $1.GetBlockWithTxsRequest request);
}
