///
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ListAllInterfacesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAllInterfacesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v1beta1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListAllInterfacesRequest._() : super();
  factory ListAllInterfacesRequest() => create();
  factory ListAllInterfacesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAllInterfacesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAllInterfacesRequest clone() => ListAllInterfacesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAllInterfacesRequest copyWith(void Function(ListAllInterfacesRequest) updates) => super.copyWith((message) => updates(message as ListAllInterfacesRequest)) as ListAllInterfacesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAllInterfacesRequest create() => ListAllInterfacesRequest._();
  ListAllInterfacesRequest createEmptyInstance() => create();
  static $pb.PbList<ListAllInterfacesRequest> createRepeated() => $pb.PbList<ListAllInterfacesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAllInterfacesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAllInterfacesRequest>(create);
  static ListAllInterfacesRequest? _defaultInstance;
}

class ListAllInterfacesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAllInterfacesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v1beta1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interfaceNames')
    ..hasRequiredFields = false
  ;

  ListAllInterfacesResponse._() : super();
  factory ListAllInterfacesResponse({
    $core.Iterable<$core.String>? interfaceNames,
  }) {
    final _result = create();
    if (interfaceNames != null) {
      _result.interfaceNames.addAll(interfaceNames);
    }
    return _result;
  }
  factory ListAllInterfacesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAllInterfacesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAllInterfacesResponse clone() => ListAllInterfacesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAllInterfacesResponse copyWith(void Function(ListAllInterfacesResponse) updates) => super.copyWith((message) => updates(message as ListAllInterfacesResponse)) as ListAllInterfacesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAllInterfacesResponse create() => ListAllInterfacesResponse._();
  ListAllInterfacesResponse createEmptyInstance() => create();
  static $pb.PbList<ListAllInterfacesResponse> createRepeated() => $pb.PbList<ListAllInterfacesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAllInterfacesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAllInterfacesResponse>(create);
  static ListAllInterfacesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get interfaceNames => $_getList(0);
}

class ListImplementationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListImplementationsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v1beta1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interfaceName')
    ..hasRequiredFields = false
  ;

  ListImplementationsRequest._() : super();
  factory ListImplementationsRequest({
    $core.String? interfaceName,
  }) {
    final _result = create();
    if (interfaceName != null) {
      _result.interfaceName = interfaceName;
    }
    return _result;
  }
  factory ListImplementationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListImplementationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListImplementationsRequest clone() => ListImplementationsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListImplementationsRequest copyWith(void Function(ListImplementationsRequest) updates) => super.copyWith((message) => updates(message as ListImplementationsRequest)) as ListImplementationsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListImplementationsRequest create() => ListImplementationsRequest._();
  ListImplementationsRequest createEmptyInstance() => create();
  static $pb.PbList<ListImplementationsRequest> createRepeated() => $pb.PbList<ListImplementationsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListImplementationsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListImplementationsRequest>(create);
  static ListImplementationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get interfaceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set interfaceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInterfaceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearInterfaceName() => clearField(1);
}

class ListImplementationsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListImplementationsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cosmos.base.reflection.v1beta1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'implementationMessageNames')
    ..hasRequiredFields = false
  ;

  ListImplementationsResponse._() : super();
  factory ListImplementationsResponse({
    $core.Iterable<$core.String>? implementationMessageNames,
  }) {
    final _result = create();
    if (implementationMessageNames != null) {
      _result.implementationMessageNames.addAll(implementationMessageNames);
    }
    return _result;
  }
  factory ListImplementationsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListImplementationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListImplementationsResponse clone() => ListImplementationsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListImplementationsResponse copyWith(void Function(ListImplementationsResponse) updates) => super.copyWith((message) => updates(message as ListImplementationsResponse)) as ListImplementationsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListImplementationsResponse create() => ListImplementationsResponse._();
  ListImplementationsResponse createEmptyInstance() => create();
  static $pb.PbList<ListImplementationsResponse> createRepeated() => $pb.PbList<ListImplementationsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListImplementationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListImplementationsResponse>(create);
  static ListImplementationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get implementationMessageNames => $_getList(0);
}

