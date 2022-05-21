///
//  Generated code. Do not modify.
//  source: cosmos/base/reflection/v2alpha1/reflection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reflection.pb.dart' as $0;
export 'reflection.pb.dart';

class ReflectionServiceClient extends $grpc.Client {
  static final _$getAuthnDescriptor = $grpc.ClientMethod<
          $0.GetAuthnDescriptorRequest, $0.GetAuthnDescriptorResponse>(
      '/cosmos.base.reflection.v2alpha1.ReflectionService/GetAuthnDescriptor',
      ($0.GetAuthnDescriptorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetAuthnDescriptorResponse.fromBuffer(value));
  static final _$getChainDescriptor = $grpc.ClientMethod<
          $0.GetChainDescriptorRequest, $0.GetChainDescriptorResponse>(
      '/cosmos.base.reflection.v2alpha1.ReflectionService/GetChainDescriptor',
      ($0.GetChainDescriptorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetChainDescriptorResponse.fromBuffer(value));
  static final _$getCodecDescriptor = $grpc.ClientMethod<
          $0.GetCodecDescriptorRequest, $0.GetCodecDescriptorResponse>(
      '/cosmos.base.reflection.v2alpha1.ReflectionService/GetCodecDescriptor',
      ($0.GetCodecDescriptorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetCodecDescriptorResponse.fromBuffer(value));
  static final _$getConfigurationDescriptor = $grpc.ClientMethod<
          $0.GetConfigurationDescriptorRequest,
          $0.GetConfigurationDescriptorResponse>(
      '/cosmos.base.reflection.v2alpha1.ReflectionService/GetConfigurationDescriptor',
      ($0.GetConfigurationDescriptorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetConfigurationDescriptorResponse.fromBuffer(value));
  static final _$getQueryServicesDescriptor = $grpc.ClientMethod<
          $0.GetQueryServicesDescriptorRequest,
          $0.GetQueryServicesDescriptorResponse>(
      '/cosmos.base.reflection.v2alpha1.ReflectionService/GetQueryServicesDescriptor',
      ($0.GetQueryServicesDescriptorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetQueryServicesDescriptorResponse.fromBuffer(value));
  static final _$getTxDescriptor =
      $grpc.ClientMethod<$0.GetTxDescriptorRequest, $0.GetTxDescriptorResponse>(
          '/cosmos.base.reflection.v2alpha1.ReflectionService/GetTxDescriptor',
          ($0.GetTxDescriptorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetTxDescriptorResponse.fromBuffer(value));

  ReflectionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetAuthnDescriptorResponse> getAuthnDescriptor(
      $0.GetAuthnDescriptorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAuthnDescriptor, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetChainDescriptorResponse> getChainDescriptor(
      $0.GetChainDescriptorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getChainDescriptor, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCodecDescriptorResponse> getCodecDescriptor(
      $0.GetCodecDescriptorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCodecDescriptor, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetConfigurationDescriptorResponse>
      getConfigurationDescriptor($0.GetConfigurationDescriptorRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConfigurationDescriptor, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.GetQueryServicesDescriptorResponse>
      getQueryServicesDescriptor($0.GetQueryServicesDescriptorRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQueryServicesDescriptor, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.GetTxDescriptorResponse> getTxDescriptor(
      $0.GetTxDescriptorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTxDescriptor, request, options: options);
  }
}

abstract class ReflectionServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.base.reflection.v2alpha1.ReflectionService';

  ReflectionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAuthnDescriptorRequest,
            $0.GetAuthnDescriptorResponse>(
        'GetAuthnDescriptor',
        getAuthnDescriptor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAuthnDescriptorRequest.fromBuffer(value),
        ($0.GetAuthnDescriptorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetChainDescriptorRequest,
            $0.GetChainDescriptorResponse>(
        'GetChainDescriptor',
        getChainDescriptor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetChainDescriptorRequest.fromBuffer(value),
        ($0.GetChainDescriptorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCodecDescriptorRequest,
            $0.GetCodecDescriptorResponse>(
        'GetCodecDescriptor',
        getCodecDescriptor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetCodecDescriptorRequest.fromBuffer(value),
        ($0.GetCodecDescriptorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetConfigurationDescriptorRequest,
            $0.GetConfigurationDescriptorResponse>(
        'GetConfigurationDescriptor',
        getConfigurationDescriptor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetConfigurationDescriptorRequest.fromBuffer(value),
        ($0.GetConfigurationDescriptorResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetQueryServicesDescriptorRequest,
            $0.GetQueryServicesDescriptorResponse>(
        'GetQueryServicesDescriptor',
        getQueryServicesDescriptor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetQueryServicesDescriptorRequest.fromBuffer(value),
        ($0.GetQueryServicesDescriptorResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTxDescriptorRequest,
            $0.GetTxDescriptorResponse>(
        'GetTxDescriptor',
        getTxDescriptor_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTxDescriptorRequest.fromBuffer(value),
        ($0.GetTxDescriptorResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetAuthnDescriptorResponse> getAuthnDescriptor_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAuthnDescriptorRequest> request) async {
    return getAuthnDescriptor(call, await request);
  }

  $async.Future<$0.GetChainDescriptorResponse> getChainDescriptor_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetChainDescriptorRequest> request) async {
    return getChainDescriptor(call, await request);
  }

  $async.Future<$0.GetCodecDescriptorResponse> getCodecDescriptor_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetCodecDescriptorRequest> request) async {
    return getCodecDescriptor(call, await request);
  }

  $async.Future<$0.GetConfigurationDescriptorResponse>
      getConfigurationDescriptor_Pre($grpc.ServiceCall call,
          $async.Future<$0.GetConfigurationDescriptorRequest> request) async {
    return getConfigurationDescriptor(call, await request);
  }

  $async.Future<$0.GetQueryServicesDescriptorResponse>
      getQueryServicesDescriptor_Pre($grpc.ServiceCall call,
          $async.Future<$0.GetQueryServicesDescriptorRequest> request) async {
    return getQueryServicesDescriptor(call, await request);
  }

  $async.Future<$0.GetTxDescriptorResponse> getTxDescriptor_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetTxDescriptorRequest> request) async {
    return getTxDescriptor(call, await request);
  }

  $async.Future<$0.GetAuthnDescriptorResponse> getAuthnDescriptor(
      $grpc.ServiceCall call, $0.GetAuthnDescriptorRequest request);
  $async.Future<$0.GetChainDescriptorResponse> getChainDescriptor(
      $grpc.ServiceCall call, $0.GetChainDescriptorRequest request);
  $async.Future<$0.GetCodecDescriptorResponse> getCodecDescriptor(
      $grpc.ServiceCall call, $0.GetCodecDescriptorRequest request);
  $async.Future<$0.GetConfigurationDescriptorResponse>
      getConfigurationDescriptor(
          $grpc.ServiceCall call, $0.GetConfigurationDescriptorRequest request);
  $async.Future<$0.GetQueryServicesDescriptorResponse>
      getQueryServicesDescriptor(
          $grpc.ServiceCall call, $0.GetQueryServicesDescriptorRequest request);
  $async.Future<$0.GetTxDescriptorResponse> getTxDescriptor(
      $grpc.ServiceCall call, $0.GetTxDescriptorRequest request);
}
