///
//  Generated code. Do not modify.
//  source: cosmos/upgrade/v1beta1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$currentPlan = $grpc.ClientMethod<$0.QueryCurrentPlanRequest,
          $0.QueryCurrentPlanResponse>(
      '/cosmos.upgrade.v1beta1.Query/CurrentPlan',
      ($0.QueryCurrentPlanRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryCurrentPlanResponse.fromBuffer(value));
  static final _$appliedPlan = $grpc.ClientMethod<$0.QueryAppliedPlanRequest,
          $0.QueryAppliedPlanResponse>(
      '/cosmos.upgrade.v1beta1.Query/AppliedPlan',
      ($0.QueryAppliedPlanRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryAppliedPlanResponse.fromBuffer(value));
  static final _$upgradedConsensusState = $grpc.ClientMethod<
          $0.QueryUpgradedConsensusStateRequest,
          $0.QueryUpgradedConsensusStateResponse>(
      '/cosmos.upgrade.v1beta1.Query/UpgradedConsensusState',
      ($0.QueryUpgradedConsensusStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryUpgradedConsensusStateResponse.fromBuffer(value));
  static final _$moduleVersions = $grpc.ClientMethod<
          $0.QueryModuleVersionsRequest, $0.QueryModuleVersionsResponse>(
      '/cosmos.upgrade.v1beta1.Query/ModuleVersions',
      ($0.QueryModuleVersionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryModuleVersionsResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryCurrentPlanResponse> currentPlan(
      $0.QueryCurrentPlanRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$currentPlan, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAppliedPlanResponse> appliedPlan(
      $0.QueryAppliedPlanRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$appliedPlan, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryUpgradedConsensusStateResponse>
      upgradedConsensusState($0.QueryUpgradedConsensusStateRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradedConsensusState, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.QueryModuleVersionsResponse> moduleVersions(
      $0.QueryModuleVersionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moduleVersions, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmos.upgrade.v1beta1.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QueryCurrentPlanRequest,
            $0.QueryCurrentPlanResponse>(
        'CurrentPlan',
        currentPlan_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryCurrentPlanRequest.fromBuffer(value),
        ($0.QueryCurrentPlanResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryAppliedPlanRequest,
            $0.QueryAppliedPlanResponse>(
        'AppliedPlan',
        appliedPlan_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryAppliedPlanRequest.fromBuffer(value),
        ($0.QueryAppliedPlanResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryUpgradedConsensusStateRequest,
            $0.QueryUpgradedConsensusStateResponse>(
        'UpgradedConsensusState',
        upgradedConsensusState_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryUpgradedConsensusStateRequest.fromBuffer(value),
        ($0.QueryUpgradedConsensusStateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryModuleVersionsRequest,
            $0.QueryModuleVersionsResponse>(
        'ModuleVersions',
        moduleVersions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryModuleVersionsRequest.fromBuffer(value),
        ($0.QueryModuleVersionsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryCurrentPlanResponse> currentPlan_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryCurrentPlanRequest> request) async {
    return currentPlan(call, await request);
  }

  $async.Future<$0.QueryAppliedPlanResponse> appliedPlan_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryAppliedPlanRequest> request) async {
    return appliedPlan(call, await request);
  }

  $async.Future<$0.QueryUpgradedConsensusStateResponse>
      upgradedConsensusState_Pre($grpc.ServiceCall call,
          $async.Future<$0.QueryUpgradedConsensusStateRequest> request) async {
    return upgradedConsensusState(call, await request);
  }

  $async.Future<$0.QueryModuleVersionsResponse> moduleVersions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryModuleVersionsRequest> request) async {
    return moduleVersions(call, await request);
  }

  $async.Future<$0.QueryCurrentPlanResponse> currentPlan(
      $grpc.ServiceCall call, $0.QueryCurrentPlanRequest request);
  $async.Future<$0.QueryAppliedPlanResponse> appliedPlan(
      $grpc.ServiceCall call, $0.QueryAppliedPlanRequest request);
  $async.Future<$0.QueryUpgradedConsensusStateResponse> upgradedConsensusState(
      $grpc.ServiceCall call, $0.QueryUpgradedConsensusStateRequest request);
  $async.Future<$0.QueryModuleVersionsResponse> moduleVersions(
      $grpc.ServiceCall call, $0.QueryModuleVersionsRequest request);
}
