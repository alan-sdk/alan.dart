///
//  Generated code. Do not modify.
//  source: cosmos/authz/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$grants =
      $grpc.ClientMethod<$0.QueryGrantsRequest, $0.QueryGrantsResponse>(
          '/cosmos.authz.v1beta1.Query/Grants',
          ($0.QueryGrantsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryGrantsResponse.fromBuffer(value));
  static final _$granterGrants = $grpc.ClientMethod<
          $0.QueryGranterGrantsRequest, $0.QueryGranterGrantsResponse>(
      '/cosmos.authz.v1beta1.Query/GranterGrants',
      ($0.QueryGranterGrantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryGranterGrantsResponse.fromBuffer(value));
  static final _$granteeGrants = $grpc.ClientMethod<
          $0.QueryGranteeGrantsRequest, $0.QueryGranteeGrantsResponse>(
      '/cosmos.authz.v1beta1.Query/GranteeGrants',
      ($0.QueryGranteeGrantsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryGranteeGrantsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryGrantsResponse> grants(
      $0.QueryGrantsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$grants, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGranterGrantsResponse> granterGrants(
      $0.QueryGranterGrantsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$granterGrants, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGranteeGrantsResponse> granteeGrants(
      $0.QueryGranteeGrantsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$granteeGrants, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.authz.v1beta1.Query';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.QueryGrantsRequest, $0.QueryGrantsResponse>(
            'Grants',
            grants_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryGrantsRequest.fromBuffer(value),
            ($0.QueryGrantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryGranterGrantsRequest,
            $0.QueryGranterGrantsResponse>(
        'GranterGrants',
        granterGrants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryGranterGrantsRequest.fromBuffer(value),
        ($0.QueryGranterGrantsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryGranteeGrantsRequest,
            $0.QueryGranteeGrantsResponse>(
        'GranteeGrants',
        granteeGrants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryGranteeGrantsRequest.fromBuffer(value),
        ($0.QueryGranteeGrantsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryGrantsResponse> grants_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryGrantsRequest> request) async {
    return grants(call, await request);
  }

  $async.Future<$0.QueryGranterGrantsResponse> granterGrants_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryGranterGrantsRequest> request) async {
    return granterGrants(call, await request);
  }

  $async.Future<$0.QueryGranteeGrantsResponse> granteeGrants_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryGranteeGrantsRequest> request) async {
    return granteeGrants(call, await request);
  }

  $async.Future<$0.QueryGrantsResponse> grants(
      $grpc.ServiceCall call, $0.QueryGrantsRequest request);
  $async.Future<$0.QueryGranterGrantsResponse> granterGrants(
      $grpc.ServiceCall call, $0.QueryGranterGrantsRequest request);
  $async.Future<$0.QueryGranteeGrantsResponse> granteeGrants(
      $grpc.ServiceCall call, $0.QueryGranteeGrantsRequest request);
}
