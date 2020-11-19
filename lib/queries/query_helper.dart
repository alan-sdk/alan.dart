import 'package:equatable/equatable.dart';

/// Contains the data returned when performing a chain query.
class RequestResult<T> extends Equatable {
  final T value;
  final String error;

  bool get isSuccessful => error == null;

  RequestResult({this.value, this.error});

  @override
  List<Object> get props => [value, error];
}
