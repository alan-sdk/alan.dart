import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:mockito/mockito.dart';

class MockResponseFuture<T> extends Mock implements ResponseFuture<T> {
  final Future<T> future;

  MockResponseFuture.value(T value) : future = Future.value(value);

  MockResponseFuture.error(Object error) : future = Future.error(error);

  MockResponseFuture.future(this.future);

  @override
  Future<S> then<S>(FutureOr<S> Function(T value) onValue,
          {Function? onError}) =>
      future.then(onValue, onError: onError);
}
