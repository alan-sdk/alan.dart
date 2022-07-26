// Mocks generated by Mockito 5.2.0 from annotations
// in alan/test/x/node/querier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i6;

import 'package:alan/proto/cosmos/base/tendermint/v1beta1/query.pb.dart' as _i5;
import 'package:alan/proto/cosmos/base/tendermint/v1beta1/query.pbgrpc.dart'
    as _i4;
import 'package:grpc/service_api.dart' as _i2;
import 'package:grpc/src/client/call.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeResponseFuture_0<R> extends _i1.Fake
    implements _i2.ResponseFuture<R> {}

class _FakeClientCall_1<Q, R> extends _i1.Fake implements _i3.ClientCall<Q, R> {
}

class _FakeResponseStream_2<R> extends _i1.Fake
    implements _i2.ResponseStream<R> {}

/// A class which mocks [ServiceClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockServiceClient extends _i1.Mock implements _i4.ServiceClient {
  MockServiceClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ResponseFuture<_i5.GetNodeInfoResponse> getNodeInfo(
          _i5.GetNodeInfoRequest? request,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
              Invocation.method(#getNodeInfo, [request], {#options: options}),
              returnValue: _FakeResponseFuture_0<_i5.GetNodeInfoResponse>())
          as _i2.ResponseFuture<_i5.GetNodeInfoResponse>);
  @override
  _i2.ResponseFuture<_i5.GetSyncingResponse> getSyncing(
          _i5.GetSyncingRequest? request,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
              Invocation.method(#getSyncing, [request], {#options: options}),
              returnValue: _FakeResponseFuture_0<_i5.GetSyncingResponse>())
          as _i2.ResponseFuture<_i5.GetSyncingResponse>);
  @override
  _i2.ResponseFuture<_i5.GetLatestBlockResponse> getLatestBlock(
          _i5.GetLatestBlockRequest? request,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(#getLatestBlock, [request], {#options: options}),
          returnValue:
              _FakeResponseFuture_0<_i5.GetLatestBlockResponse>()) as _i2
          .ResponseFuture<_i5.GetLatestBlockResponse>);
  @override
  _i2.ResponseFuture<_i5.GetBlockByHeightResponse> getBlockByHeight(
          _i5.GetBlockByHeightRequest? request,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(#getBlockByHeight, [request], {#options: options}),
          returnValue:
              _FakeResponseFuture_0<_i5.GetBlockByHeightResponse>()) as _i2
          .ResponseFuture<_i5.GetBlockByHeightResponse>);
  @override
  _i2.ResponseFuture<_i5.GetLatestValidatorSetResponse> getLatestValidatorSet(
          _i5.GetLatestValidatorSetRequest? request,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #getLatestValidatorSet, [request], {#options: options}),
              returnValue:
                  _FakeResponseFuture_0<_i5.GetLatestValidatorSetResponse>())
          as _i2.ResponseFuture<_i5.GetLatestValidatorSetResponse>);
  @override
  _i2.ResponseFuture<_i5.GetValidatorSetByHeightResponse>
      getValidatorSetByHeight(_i5.GetValidatorSetByHeightRequest? request,
              {_i2.CallOptions? options}) =>
          (super.noSuchMethod(
                  Invocation.method(
                      #getValidatorSetByHeight, [request], {#options: options}),
                  returnValue: _FakeResponseFuture_0<
                      _i5.GetValidatorSetByHeightResponse>())
              as _i2.ResponseFuture<_i5.GetValidatorSetByHeightResponse>);
  @override
  _i3.ClientCall<Q, R> $createCall<Q, R>(
          _i2.ClientMethod<Q, R>? method, _i6.Stream<Q>? requests,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(
              #$createCall, [method, requests], {#options: options}),
          returnValue: _FakeClientCall_1<Q, R>()) as _i3.ClientCall<Q, R>);
  @override
  _i2.ResponseFuture<R> $createUnaryCall<Q, R>(
          _i2.ClientMethod<Q, R>? method, Q? request,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(
              #$createUnaryCall, [method, request], {#options: options}),
          returnValue: _FakeResponseFuture_0<R>()) as _i2.ResponseFuture<R>);
  @override
  _i2.ResponseStream<R> $createStreamingCall<Q, R>(
          _i2.ClientMethod<Q, R>? method, _i6.Stream<Q>? requests,
          {_i2.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(
              #$createStreamingCall, [method, requests], {#options: options}),
          returnValue: _FakeResponseStream_2<R>()) as _i2.ResponseStream<R>);
}
