///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tx.pb.dart' as $0;
export 'tx.pb.dart';

class MsgClient extends $grpc.Client {
  static final _$storeCode =
      $grpc.ClientMethod<$0.MsgStoreCode, $0.MsgStoreCodeResponse>(
          '/cosmwasm.wasm.v1.Msg/StoreCode',
          ($0.MsgStoreCode value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgStoreCodeResponse.fromBuffer(value));
  static final _$instantiateContract = $grpc.ClientMethod<
          $0.MsgInstantiateContract, $0.MsgInstantiateContractResponse>(
      '/cosmwasm.wasm.v1.Msg/InstantiateContract',
      ($0.MsgInstantiateContract value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.MsgInstantiateContractResponse.fromBuffer(value));
  static final _$executeContract =
      $grpc.ClientMethod<$0.MsgExecuteContract, $0.MsgExecuteContractResponse>(
          '/cosmwasm.wasm.v1.Msg/ExecuteContract',
          ($0.MsgExecuteContract value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgExecuteContractResponse.fromBuffer(value));
  static final _$migrateContract =
      $grpc.ClientMethod<$0.MsgMigrateContract, $0.MsgMigrateContractResponse>(
          '/cosmwasm.wasm.v1.Msg/MigrateContract',
          ($0.MsgMigrateContract value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgMigrateContractResponse.fromBuffer(value));
  static final _$updateAdmin =
      $grpc.ClientMethod<$0.MsgUpdateAdmin, $0.MsgUpdateAdminResponse>(
          '/cosmwasm.wasm.v1.Msg/UpdateAdmin',
          ($0.MsgUpdateAdmin value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgUpdateAdminResponse.fromBuffer(value));
  static final _$clearAdmin =
      $grpc.ClientMethod<$0.MsgClearAdmin, $0.MsgClearAdminResponse>(
          '/cosmwasm.wasm.v1.Msg/ClearAdmin',
          ($0.MsgClearAdmin value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MsgClearAdminResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgStoreCodeResponse> storeCode(
      $0.MsgStoreCode request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$storeCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgInstantiateContractResponse> instantiateContract(
      $0.MsgInstantiateContract request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$instantiateContract, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgExecuteContractResponse> executeContract(
      $0.MsgExecuteContract request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$executeContract, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgMigrateContractResponse> migrateContract(
      $0.MsgMigrateContract request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$migrateContract, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgUpdateAdminResponse> updateAdmin(
      $0.MsgUpdateAdmin request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgClearAdminResponse> clearAdmin(
      $0.MsgClearAdmin request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$clearAdmin, request, options: options);
  }
}

abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmwasm.wasm.v1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgStoreCode, $0.MsgStoreCodeResponse>(
        'StoreCode',
        storeCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgStoreCode.fromBuffer(value),
        ($0.MsgStoreCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgInstantiateContract,
            $0.MsgInstantiateContractResponse>(
        'InstantiateContract',
        instantiateContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MsgInstantiateContract.fromBuffer(value),
        ($0.MsgInstantiateContractResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgExecuteContract,
            $0.MsgExecuteContractResponse>(
        'ExecuteContract',
        executeContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MsgExecuteContract.fromBuffer(value),
        ($0.MsgExecuteContractResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgMigrateContract,
            $0.MsgMigrateContractResponse>(
        'MigrateContract',
        migrateContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MsgMigrateContract.fromBuffer(value),
        ($0.MsgMigrateContractResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.MsgUpdateAdmin, $0.MsgUpdateAdminResponse>(
            'UpdateAdmin',
            updateAdmin_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.MsgUpdateAdmin.fromBuffer(value),
            ($0.MsgUpdateAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgClearAdmin, $0.MsgClearAdminResponse>(
        'ClearAdmin',
        clearAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgClearAdmin.fromBuffer(value),
        ($0.MsgClearAdminResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgStoreCodeResponse> storeCode_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MsgStoreCode> request) async {
    return storeCode(call, await request);
  }

  $async.Future<$0.MsgInstantiateContractResponse> instantiateContract_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MsgInstantiateContract> request) async {
    return instantiateContract(call, await request);
  }

  $async.Future<$0.MsgExecuteContractResponse> executeContract_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MsgExecuteContract> request) async {
    return executeContract(call, await request);
  }

  $async.Future<$0.MsgMigrateContractResponse> migrateContract_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MsgMigrateContract> request) async {
    return migrateContract(call, await request);
  }

  $async.Future<$0.MsgUpdateAdminResponse> updateAdmin_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MsgUpdateAdmin> request) async {
    return updateAdmin(call, await request);
  }

  $async.Future<$0.MsgClearAdminResponse> clearAdmin_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MsgClearAdmin> request) async {
    return clearAdmin(call, await request);
  }

  $async.Future<$0.MsgStoreCodeResponse> storeCode(
      $grpc.ServiceCall call, $0.MsgStoreCode request);
  $async.Future<$0.MsgInstantiateContractResponse> instantiateContract(
      $grpc.ServiceCall call, $0.MsgInstantiateContract request);
  $async.Future<$0.MsgExecuteContractResponse> executeContract(
      $grpc.ServiceCall call, $0.MsgExecuteContract request);
  $async.Future<$0.MsgMigrateContractResponse> migrateContract(
      $grpc.ServiceCall call, $0.MsgMigrateContract request);
  $async.Future<$0.MsgUpdateAdminResponse> updateAdmin(
      $grpc.ServiceCall call, $0.MsgUpdateAdmin request);
  $async.Future<$0.MsgClearAdminResponse> clearAdmin(
      $grpc.ServiceCall call, $0.MsgClearAdmin request);
}
