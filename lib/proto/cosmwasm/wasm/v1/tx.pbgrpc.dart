///
//  Generated code. Do not modify.
//  source: cosmwasm/wasm/v1/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tx.pb.dart' as $1;
export 'tx.pb.dart';

class MsgClient extends $grpc.Client {
  static final _$storeCode =
      $grpc.ClientMethod<$1.MsgStoreCode, $1.MsgStoreCodeResponse>(
          '/cosmwasm.wasm.v1.Msg/StoreCode',
          ($1.MsgStoreCode value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgStoreCodeResponse.fromBuffer(value));
  static final _$instantiateContract = $grpc.ClientMethod<
          $1.MsgInstantiateContract, $1.MsgInstantiateContractResponse>(
      '/cosmwasm.wasm.v1.Msg/InstantiateContract',
      ($1.MsgInstantiateContract value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.MsgInstantiateContractResponse.fromBuffer(value));
  static final _$executeContract =
      $grpc.ClientMethod<$1.MsgExecuteContract, $1.MsgExecuteContractResponse>(
          '/cosmwasm.wasm.v1.Msg/ExecuteContract',
          ($1.MsgExecuteContract value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgExecuteContractResponse.fromBuffer(value));
  static final _$migrateContract =
      $grpc.ClientMethod<$1.MsgMigrateContract, $1.MsgMigrateContractResponse>(
          '/cosmwasm.wasm.v1.Msg/MigrateContract',
          ($1.MsgMigrateContract value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgMigrateContractResponse.fromBuffer(value));
  static final _$updateAdmin =
      $grpc.ClientMethod<$1.MsgUpdateAdmin, $1.MsgUpdateAdminResponse>(
          '/cosmwasm.wasm.v1.Msg/UpdateAdmin',
          ($1.MsgUpdateAdmin value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgUpdateAdminResponse.fromBuffer(value));
  static final _$clearAdmin =
      $grpc.ClientMethod<$1.MsgClearAdmin, $1.MsgClearAdminResponse>(
          '/cosmwasm.wasm.v1.Msg/ClearAdmin',
          ($1.MsgClearAdmin value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgClearAdminResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.MsgStoreCodeResponse> storeCode(
      $1.MsgStoreCode request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$storeCode, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgInstantiateContractResponse> instantiateContract(
      $1.MsgInstantiateContract request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$instantiateContract, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgExecuteContractResponse> executeContract(
      $1.MsgExecuteContract request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$executeContract, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgMigrateContractResponse> migrateContract(
      $1.MsgMigrateContract request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$migrateContract, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgUpdateAdminResponse> updateAdmin(
      $1.MsgUpdateAdmin request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgClearAdminResponse> clearAdmin(
      $1.MsgClearAdmin request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$clearAdmin, request, options: options);
  }
}

abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'cosmwasm.wasm.v1.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.MsgStoreCode, $1.MsgStoreCodeResponse>(
        'StoreCode',
        storeCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgStoreCode.fromBuffer(value),
        ($1.MsgStoreCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgInstantiateContract,
            $1.MsgInstantiateContractResponse>(
        'InstantiateContract',
        instantiateContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.MsgInstantiateContract.fromBuffer(value),
        ($1.MsgInstantiateContractResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgExecuteContract,
            $1.MsgExecuteContractResponse>(
        'ExecuteContract',
        executeContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.MsgExecuteContract.fromBuffer(value),
        ($1.MsgExecuteContractResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgMigrateContract,
            $1.MsgMigrateContractResponse>(
        'MigrateContract',
        migrateContract_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.MsgMigrateContract.fromBuffer(value),
        ($1.MsgMigrateContractResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.MsgUpdateAdmin, $1.MsgUpdateAdminResponse>(
            'UpdateAdmin',
            updateAdmin_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.MsgUpdateAdmin.fromBuffer(value),
            ($1.MsgUpdateAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgClearAdmin, $1.MsgClearAdminResponse>(
        'ClearAdmin',
        clearAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgClearAdmin.fromBuffer(value),
        ($1.MsgClearAdminResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.MsgStoreCodeResponse> storeCode_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgStoreCode> request) async {
    return storeCode(call, await request);
  }

  $async.Future<$1.MsgInstantiateContractResponse> instantiateContract_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.MsgInstantiateContract> request) async {
    return instantiateContract(call, await request);
  }

  $async.Future<$1.MsgExecuteContractResponse> executeContract_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.MsgExecuteContract> request) async {
    return executeContract(call, await request);
  }

  $async.Future<$1.MsgMigrateContractResponse> migrateContract_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.MsgMigrateContract> request) async {
    return migrateContract(call, await request);
  }

  $async.Future<$1.MsgUpdateAdminResponse> updateAdmin_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgUpdateAdmin> request) async {
    return updateAdmin(call, await request);
  }

  $async.Future<$1.MsgClearAdminResponse> clearAdmin_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgClearAdmin> request) async {
    return clearAdmin(call, await request);
  }

  $async.Future<$1.MsgStoreCodeResponse> storeCode(
      $grpc.ServiceCall call, $1.MsgStoreCode request);
  $async.Future<$1.MsgInstantiateContractResponse> instantiateContract(
      $grpc.ServiceCall call, $1.MsgInstantiateContract request);
  $async.Future<$1.MsgExecuteContractResponse> executeContract(
      $grpc.ServiceCall call, $1.MsgExecuteContract request);
  $async.Future<$1.MsgMigrateContractResponse> migrateContract(
      $grpc.ServiceCall call, $1.MsgMigrateContract request);
  $async.Future<$1.MsgUpdateAdminResponse> updateAdmin(
      $grpc.ServiceCall call, $1.MsgUpdateAdmin request);
  $async.Future<$1.MsgClearAdminResponse> clearAdmin(
      $grpc.ServiceCall call, $1.MsgClearAdmin request);
}
