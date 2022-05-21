///
//  Generated code. Do not modify.
//  source: cosmos/mint/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$params =
      $grpc.ClientMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
          '/cosmos.mint.v1beta1.Query/Params',
          ($0.QueryParamsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryParamsResponse.fromBuffer(value));
  static final _$inflation =
      $grpc.ClientMethod<$0.QueryInflationRequest, $0.QueryInflationResponse>(
          '/cosmos.mint.v1beta1.Query/Inflation',
          ($0.QueryInflationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryInflationResponse.fromBuffer(value));
  static final _$annualProvisions = $grpc.ClientMethod<
          $0.QueryAnnualProvisionsRequest, $0.QueryAnnualProvisionsResponse>(
      '/cosmos.mint.v1beta1.Query/AnnualProvisions',
      ($0.QueryAnnualProvisionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryAnnualProvisionsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryParamsResponse> params(
      $0.QueryParamsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryInflationResponse> inflation(
      $0.QueryInflationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inflation, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAnnualProvisionsResponse> annualProvisions(
      $0.QueryAnnualProvisionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$annualProvisions, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.mint.v1beta1.Query';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
            'Params',
            params_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryParamsRequest.fromBuffer(value),
            ($0.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryInflationRequest,
            $0.QueryInflationResponse>(
        'Inflation',
        inflation_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryInflationRequest.fromBuffer(value),
        ($0.QueryInflationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryAnnualProvisionsRequest,
            $0.QueryAnnualProvisionsResponse>(
        'AnnualProvisions',
        annualProvisions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryAnnualProvisionsRequest.fromBuffer(value),
        ($0.QueryAnnualProvisionsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryParamsResponse> params_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$0.QueryInflationResponse> inflation_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryInflationRequest> request) async {
    return inflation(call, await request);
  }

  $async.Future<$0.QueryAnnualProvisionsResponse> annualProvisions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryAnnualProvisionsRequest> request) async {
    return annualProvisions(call, await request);
  }

  $async.Future<$0.QueryParamsResponse> params(
      $grpc.ServiceCall call, $0.QueryParamsRequest request);
  $async.Future<$0.QueryInflationResponse> inflation(
      $grpc.ServiceCall call, $0.QueryInflationRequest request);
  $async.Future<$0.QueryAnnualProvisionsResponse> annualProvisions(
      $grpc.ServiceCall call, $0.QueryAnnualProvisionsRequest request);
}
