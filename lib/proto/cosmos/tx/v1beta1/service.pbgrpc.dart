///
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

  $async.Future<$1.SimulateResponse> simulate(
      $grpc.ServiceCall call, $1.SimulateRequest request);
  $async.Future<$1.GetTxResponse> getTx(
      $grpc.ServiceCall call, $1.GetTxRequest request);
  $async.Future<$1.BroadcastTxResponse> broadcastTx(
      $grpc.ServiceCall call, $1.BroadcastTxRequest request);
  $async.Future<$1.GetTxsEventResponse> getTxsEvent(
      $grpc.ServiceCall call, $1.GetTxsEventRequest request);
}
