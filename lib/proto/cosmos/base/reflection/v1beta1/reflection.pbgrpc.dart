///
import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;

import 'reflection.pb.dart' as $0;

export 'reflection.pb.dart';

class ReflectionServiceClient extends $grpc.Client {
  static final _$listAllInterfaces = $grpc.ClientMethod<
          $0.ListAllInterfacesRequest, $0.ListAllInterfacesResponse>(
      '/cosmos.base.reflection.v1beta1.ReflectionService/ListAllInterfaces',
      ($0.ListAllInterfacesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListAllInterfacesResponse.fromBuffer(value));
  static final _$listImplementations = $grpc.ClientMethod<
          $0.ListImplementationsRequest, $0.ListImplementationsResponse>(
      '/cosmos.base.reflection.v1beta1.ReflectionService/ListImplementations',
      ($0.ListImplementationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListImplementationsResponse.fromBuffer(value));

  ReflectionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListAllInterfacesResponse> listAllInterfaces(
      $0.ListAllInterfacesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAllInterfaces, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListImplementationsResponse> listImplementations(
      $0.ListImplementationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listImplementations, request, options: options);
  }
}

abstract class ReflectionServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.base.reflection.v1beta1.ReflectionService';

  ReflectionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListAllInterfacesRequest,
            $0.ListAllInterfacesResponse>(
        'ListAllInterfaces',
        listAllInterfaces_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListAllInterfacesRequest.fromBuffer(value),
        ($0.ListAllInterfacesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListImplementationsRequest,
            $0.ListImplementationsResponse>(
        'ListImplementations',
        listImplementations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListImplementationsRequest.fromBuffer(value),
        ($0.ListImplementationsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListAllInterfacesResponse> listAllInterfaces_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListAllInterfacesRequest> request) async {
    return listAllInterfaces(call, await request);
  }

  $async.Future<$0.ListImplementationsResponse> listImplementations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListImplementationsRequest> request) async {
    return listImplementations(call, await request);
  }

  $async.Future<$0.ListAllInterfacesResponse> listAllInterfaces(
      $grpc.ServiceCall call, $0.ListAllInterfacesRequest request);
  $async.Future<$0.ListImplementationsResponse> listImplementations(
      $grpc.ServiceCall call, $0.ListImplementationsRequest request);
}
