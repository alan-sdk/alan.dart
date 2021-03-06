// Mocks generated by Mockito 5.0.3 from annotations
// in alan/test/x/auth/querier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;

import 'package:alan/proto/cosmos/auth/v1beta1/query.pb.dart' as _i5;
import 'package:alan/proto/cosmos/auth/v1beta1/query.pbgrpc.dart' as _i4;
import 'package:grpc/src/client/call.dart' as _i3;
import 'package:grpc/src/client/common.dart' as _i2;
import 'package:grpc/src/client/method.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeResponseFuture<R> extends _i1.Fake implements _i2.ResponseFuture<R> {
}

class _FakeClientCall<Q, R> extends _i1.Fake implements _i3.ClientCall<Q, R> {}

class _FakeResponseStream<R> extends _i1.Fake implements _i2.ResponseStream<R> {
}

/// A class which mocks [QueryClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockQueryClient extends _i1.Mock implements _i4.QueryClient {
  MockQueryClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.ResponseFuture<_i5.QueryAccountResponse> account(
          _i5.QueryAccountRequest? request,
          {_i3.CallOptions? options}) =>
      (super.noSuchMethod(
              Invocation.method(#account, [request], {#options: options}),
              returnValue: _FakeResponseFuture<_i5.QueryAccountResponse>())
          as _i2.ResponseFuture<_i5.QueryAccountResponse>);
  @override
  _i2.ResponseFuture<_i5.QueryParamsResponse> params(
          _i5.QueryParamsRequest? request,
          {_i3.CallOptions? options}) =>
      (super.noSuchMethod(
              Invocation.method(#params, [request], {#options: options}),
              returnValue: _FakeResponseFuture<_i5.QueryParamsResponse>())
          as _i2.ResponseFuture<_i5.QueryParamsResponse>);
  @override
  _i3.ClientCall<Q, R> $createCall<Q, R>(
          _i6.ClientMethod<Q, R>? method, _i7.Stream<Q>? requests,
          {_i3.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(
              #$createCall, [method, requests], {#options: options}),
          returnValue: _FakeClientCall<Q, R>()) as _i3.ClientCall<Q, R>);
  @override
  _i2.ResponseFuture<R> $createUnaryCall<Q, R>(
          _i6.ClientMethod<Q, R>? method, Q? request,
          {_i3.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(
              #$createUnaryCall, [method, request], {#options: options}),
          returnValue: _FakeResponseFuture<R>()) as _i2.ResponseFuture<R>);
  @override
  _i2.ResponseStream<R> $createStreamingCall<Q, R>(
          _i6.ClientMethod<Q, R>? method, _i7.Stream<Q>? requests,
          {_i3.CallOptions? options}) =>
      (super.noSuchMethod(
          Invocation.method(
              #$createStreamingCall, [method, requests], {#options: options}),
          returnValue: _FakeResponseStream<R>()) as _i2.ResponseStream<R>);
}
