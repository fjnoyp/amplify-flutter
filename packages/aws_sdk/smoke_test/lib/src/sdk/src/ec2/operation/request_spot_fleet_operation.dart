// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.request_spot_fleet_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/request_spot_fleet_response.dart'
    as _i3;

/// Creates a Spot Fleet request.
///
/// The Spot Fleet request specifies the total target capacity and the On-Demand target capacity. Amazon EC2 calculates the difference between the total capacity and On-Demand capacity, and launches the difference as Spot capacity.
///
/// You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.
///
/// By default, the Spot Fleet requests Spot Instances in the Spot Instance pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.
///
/// Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet.
///
/// You can specify tags for the Spot Fleet request and instances launched by the fleet. You cannot tag other resource types in a Spot Fleet request because only the `spot-fleet-request` and `instance` resource types are supported.
///
/// For more information, see [Spot Fleet requests](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html) in the _Amazon EC2 User Guide for Linux Instances_.
///
/// We strongly discourage using the RequestSpotFleet API because it is a legacy API with no planned investment. For options for requesting Spot Instances, see [Which is the best Spot request method to use?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use) in the _Amazon EC2 User Guide for Linux Instances_.
class RequestSpotFleetOperation extends _i1.HttpOperation<
    _i2.RequestSpotFleetRequest,
    _i2.RequestSpotFleetRequest,
    _i3.RequestSpotFleetResponse,
    _i3.RequestSpotFleetResponse> {
  /// Creates a Spot Fleet request.
  ///
  /// The Spot Fleet request specifies the total target capacity and the On-Demand target capacity. Amazon EC2 calculates the difference between the total capacity and On-Demand capacity, and launches the difference as Spot capacity.
  ///
  /// You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.
  ///
  /// By default, the Spot Fleet requests Spot Instances in the Spot Instance pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.
  ///
  /// Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet.
  ///
  /// You can specify tags for the Spot Fleet request and instances launched by the fleet. You cannot tag other resource types in a Spot Fleet request because only the `spot-fleet-request` and `instance` resource types are supported.
  ///
  /// For more information, see [Spot Fleet requests](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html) in the _Amazon EC2 User Guide for Linux Instances_.
  ///
  /// We strongly discourage using the RequestSpotFleet API because it is a legacy API with no planned investment. For options for requesting Spot Instances, see [Which is the best Spot request method to use?](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use) in the _Amazon EC2 User Guide for Linux Instances_.
  RequestSpotFleetOperation({
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
      _i1.HttpProtocol<
          _i2.RequestSpotFleetRequest,
          _i2.RequestSpotFleetRequest,
          _i3.RequestSpotFleetResponse,
          _i3.RequestSpotFleetResponse>> protocols = [
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
      action: 'RequestSpotFleet',
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
  _i1.HttpRequest buildRequest(_i2.RequestSpotFleetRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.RequestSpotFleetResponse? output]) => 200;
  @override
  _i3.RequestSpotFleetResponse buildOutput(
    _i3.RequestSpotFleetResponse payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.RequestSpotFleetResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'RequestSpotFleet';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.RequestSpotFleetResponse> run(
    _i2.RequestSpotFleetRequest input, {
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
