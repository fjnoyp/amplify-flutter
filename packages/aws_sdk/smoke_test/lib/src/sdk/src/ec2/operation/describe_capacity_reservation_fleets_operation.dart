// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.describe_capacity_reservation_fleets_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservation_fleets_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_capacity_reservation_fleets_result.dart'
    as _i3;

/// Describes one or more Capacity Reservation Fleets.
class DescribeCapacityReservationFleetsOperation
    extends _i1.PaginatedHttpOperation<
        _i2.DescribeCapacityReservationFleetsRequest,
        _i2.DescribeCapacityReservationFleetsRequest,
        _i3.DescribeCapacityReservationFleetsResult,
        _i3.DescribeCapacityReservationFleetsResult,
        String,
        int,
        _i4.BuiltList<_i5.CapacityReservationFleet>> {
  /// Describes one or more Capacity Reservation Fleets.
  DescribeCapacityReservationFleetsOperation({
    required String region,
    Uri? baseUri,
    _i6.AWSCredentialsProvider credentialsProvider =
        const _i6.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<
          _i2.DescribeCapacityReservationFleetsRequest,
          _i2.DescribeCapacityReservationFleetsRequest,
          _i3.DescribeCapacityReservationFleetsResult,
          _i3.DescribeCapacityReservationFleetsResult>> protocols = [
    _i7.Ec2QueryProtocol(
      serializers: _i8.serializers,
      builderFactories: _i8.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i7.WithSigV4(
              region: _region,
              service: _i9.AWSService.ec2,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i7.WithSdkInvocationId(),
            const _i7.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'DescribeCapacityReservationFleets',
      version: '2016-11-15',
    )
  ];

  late final _i7.AWSEndpoint _awsEndpoint = _i10.endpointResolver.resolve(
    _i10.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i6.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(
          _i2.DescribeCapacityReservationFleetsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeCapacityReservationFleetsResult? output]) => 200;
  @override
  _i3.DescribeCapacityReservationFleetsResult buildOutput(
    _i3.DescribeCapacityReservationFleetsResult payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeCapacityReservationFleetsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeCapacityReservationFleets';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeCapacityReservationFleetsResult> run(
    _i2.DescribeCapacityReservationFleetsRequest input, {
    _i9.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i11.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i9.AWSHeaders.sdkInvocationId: _i9.uuid(secure: true)}
      },
    );
  }

  @override
  String? getToken(_i3.DescribeCapacityReservationFleetsResult output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.CapacityReservationFleet> getItems(
          _i3.DescribeCapacityReservationFleetsResult output) =>
      output.capacityReservationFleets ?? _i4.BuiltList();
  @override
  _i2.DescribeCapacityReservationFleetsRequest rebuildInput(
    _i2.DescribeCapacityReservationFleetsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
