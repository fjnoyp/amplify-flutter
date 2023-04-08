// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.get_instance_types_from_instance_requirements_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_types_from_instance_requirements_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/get_instance_types_from_instance_requirements_result.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_info_from_instance_requirements.dart'
    as _i5;

/// Returns a list of instance types with the specified instance attributes. You can use the response to preview the instance types without launching instances. Note that the response does not consider capacity.
///
/// When you specify multiple parameters, you get instance types that satisfy all of the specified parameters. If you specify multiple values for a parameter, you get instance types that satisfy any of the specified values.
///
/// For more information, see [Preview instance types with specified attributes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html#spotfleet-get-instance-types-from-instance-requirements), [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html), [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html), and [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the _Amazon EC2 User Guide_, and [Creating an Auto Scaling group using attribute-based instance type selection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html) in the _Amazon EC2 Auto Scaling User Guide_.
class GetInstanceTypesFromInstanceRequirementsOperation
    extends _i1.PaginatedHttpOperation<
        _i2.GetInstanceTypesFromInstanceRequirementsRequest,
        _i2.GetInstanceTypesFromInstanceRequirementsRequest,
        _i3.GetInstanceTypesFromInstanceRequirementsResult,
        _i3.GetInstanceTypesFromInstanceRequirementsResult,
        String,
        int,
        _i4.BuiltList<_i5.InstanceTypeInfoFromInstanceRequirements>> {
  /// Returns a list of instance types with the specified instance attributes. You can use the response to preview the instance types without launching instances. Note that the response does not consider capacity.
  ///
  /// When you specify multiple parameters, you get instance types that satisfy all of the specified parameters. If you specify multiple values for a parameter, you get instance types that satisfy any of the specified values.
  ///
  /// For more information, see [Preview instance types with specified attributes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html#spotfleet-get-instance-types-from-instance-requirements), [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html), [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html), and [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the _Amazon EC2 User Guide_, and [Creating an Auto Scaling group using attribute-based instance type selection](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html) in the _Amazon EC2 Auto Scaling User Guide_.
  GetInstanceTypesFromInstanceRequirementsOperation({
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
          _i2.GetInstanceTypesFromInstanceRequirementsRequest,
          _i2.GetInstanceTypesFromInstanceRequirementsRequest,
          _i3.GetInstanceTypesFromInstanceRequirementsResult,
          _i3.GetInstanceTypesFromInstanceRequirementsResult>> protocols = [
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
      action: 'GetInstanceTypesFromInstanceRequirements',
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
          _i2.GetInstanceTypesFromInstanceRequirementsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode(
          [_i3.GetInstanceTypesFromInstanceRequirementsResult? output]) =>
      200;
  @override
  _i3.GetInstanceTypesFromInstanceRequirementsResult buildOutput(
    _i3.GetInstanceTypesFromInstanceRequirementsResult payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.GetInstanceTypesFromInstanceRequirementsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetInstanceTypesFromInstanceRequirements';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetInstanceTypesFromInstanceRequirementsResult> run(
    _i2.GetInstanceTypesFromInstanceRequirementsRequest input, {
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
  String? getToken(_i3.GetInstanceTypesFromInstanceRequirementsResult output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.InstanceTypeInfoFromInstanceRequirements> getItems(
          _i3.GetInstanceTypesFromInstanceRequirementsResult output) =>
      output.instanceTypes ?? _i4.BuiltList();
  @override
  _i2.GetInstanceTypesFromInstanceRequirementsRequest rebuildInput(
    _i2.GetInstanceTypesFromInstanceRequirementsRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
