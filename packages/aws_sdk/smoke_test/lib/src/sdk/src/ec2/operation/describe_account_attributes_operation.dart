// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.describe_account_attributes_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_account_attributes_result.dart'
    as _i3;

/// Describes attributes of your Amazon Web Services account. The following are the supported account attributes:
///
/// *   `supported-platforms`: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.
///
/// *   `default-vpc`: The ID of the default VPC for your account, or `none`.
///
/// *   `max-instances`: This attribute is no longer supported. The returned value does not reflect your actual vCPU limit for running On-Demand Instances. For more information, see [On-Demand Instance Limits](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// *   `vpc-max-security-groups-per-interface`: The maximum number of security groups that you can assign to a network interface.
///
/// *   `max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic.
///
/// *   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.
///
///
/// We are retiring EC2-Classic on August 15, 2022. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon EC2 User Guide_.
class DescribeAccountAttributesOperation extends _i1.HttpOperation<
    _i2.DescribeAccountAttributesRequest,
    _i2.DescribeAccountAttributesRequest,
    _i3.DescribeAccountAttributesResult,
    _i3.DescribeAccountAttributesResult> {
  /// Describes attributes of your Amazon Web Services account. The following are the supported account attributes:
  ///
  /// *   `supported-platforms`: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.
  ///
  /// *   `default-vpc`: The ID of the default VPC for your account, or `none`.
  ///
  /// *   `max-instances`: This attribute is no longer supported. The returned value does not reflect your actual vCPU limit for running On-Demand Instances. For more information, see [On-Demand Instance Limits](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// *   `vpc-max-security-groups-per-interface`: The maximum number of security groups that you can assign to a network interface.
  ///
  /// *   `max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic.
  ///
  /// *   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.
  ///
  ///
  /// We are retiring EC2-Classic on August 15, 2022. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon EC2 User Guide_.
  DescribeAccountAttributesOperation({
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
          _i2.DescribeAccountAttributesRequest,
          _i2.DescribeAccountAttributesRequest,
          _i3.DescribeAccountAttributesResult,
          _i3.DescribeAccountAttributesResult>> protocols = [
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
      action: 'DescribeAccountAttributes',
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
  _i1.HttpRequest buildRequest(_i2.DescribeAccountAttributesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeAccountAttributesResult? output]) => 200;
  @override
  _i3.DescribeAccountAttributesResult buildOutput(
    _i3.DescribeAccountAttributesResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeAccountAttributesResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeAccountAttributes';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeAccountAttributesResult> run(
    _i2.DescribeAccountAttributesRequest input, {
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
