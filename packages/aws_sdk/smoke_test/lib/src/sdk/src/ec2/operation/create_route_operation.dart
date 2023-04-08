// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.create_route_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/create_route_result.dart'
    as _i3;

/// Creates a route in a route table within a VPC.
///
/// You must specify either a destination CIDR block or a prefix list ID. You must also specify exactly one of the resources from the parameter list.
///
/// When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address `192.0.2.3`, and the route table includes the following two IPv4 routes:
///
/// *   `192.0.2.0/24` (goes to some target A)
///
/// *   `192.0.2.0/28` (goes to some target B)
///
///
/// Both routes apply to the traffic destined for `192.0.2.3`. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.
///
/// For more information about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon Virtual Private Cloud User Guide_.
class CreateRouteOperation extends _i1.HttpOperation<_i2.CreateRouteRequest,
    _i2.CreateRouteRequest, _i3.CreateRouteResult, _i3.CreateRouteResult> {
  /// Creates a route in a route table within a VPC.
  ///
  /// You must specify either a destination CIDR block or a prefix list ID. You must also specify exactly one of the resources from the parameter list.
  ///
  /// When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address `192.0.2.3`, and the route table includes the following two IPv4 routes:
  ///
  /// *   `192.0.2.0/24` (goes to some target A)
  ///
  /// *   `192.0.2.0/28` (goes to some target B)
  ///
  ///
  /// Both routes apply to the traffic destined for `192.0.2.3`. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.
  ///
  /// For more information about route tables, see [Route tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) in the _Amazon Virtual Private Cloud User Guide_.
  CreateRouteOperation({
    required String region,
    Uri? baseUri,
    _i4.AWSCredentialsProvider credentialsProvider =
        const _i4.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.CreateRouteRequest, _i2.CreateRouteRequest,
          _i3.CreateRouteResult, _i3.CreateRouteResult>> protocols = [
    _i5.Ec2QueryProtocol(
      serializers: _i6.serializers,
      builderFactories: _i6.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i5.WithSigV4(
              region: _region,
              service: _i7.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i5.WithSdkInvocationId(),
            const _i5.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'CreateRoute',
      version: '2016-11-15',
    )
  ];

  late final _i5.AWSEndpoint _awsEndpoint = _i8.endpointResolver.resolve(
    _i8.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i4.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.CreateRouteRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.CreateRouteResult? output]) => 200;
  @override
  _i3.CreateRouteResult buildOutput(
    _i3.CreateRouteResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateRouteResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateRoute';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.CreateRouteResult> run(
    _i2.CreateRouteRequest input, {
    _i7.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i7.AWSHeaders.sdkInvocationId: _i7.uuid(secure: true)}
      },
    );
  }
}
