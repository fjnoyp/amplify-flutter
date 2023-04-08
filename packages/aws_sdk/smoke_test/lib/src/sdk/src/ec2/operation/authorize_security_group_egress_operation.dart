// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.authorize_security_group_egress_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/authorize_security_group_egress_result.dart'
    as _i3;

/// \[VPC only\] Adds the specified outbound (egress) rules to a security group for use with a VPC.
///
/// An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 CIDR address ranges, or to the instances that are associated with the specified source security groups. When specifying an outbound rule for your security group in a VPC, the `IpPermissions` must include a destination for the traffic.
///
/// You specify a protocol for each rule (for example, TCP). For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes.
///
/// Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.
///
/// For information about VPC security group quotas, see [Amazon VPC quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).
class AuthorizeSecurityGroupEgressOperation extends _i1.HttpOperation<
    _i2.AuthorizeSecurityGroupEgressRequest,
    _i2.AuthorizeSecurityGroupEgressRequest,
    _i3.AuthorizeSecurityGroupEgressResult,
    _i3.AuthorizeSecurityGroupEgressResult> {
  /// \[VPC only\] Adds the specified outbound (egress) rules to a security group for use with a VPC.
  ///
  /// An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 CIDR address ranges, or to the instances that are associated with the specified source security groups. When specifying an outbound rule for your security group in a VPC, the `IpPermissions` must include a destination for the traffic.
  ///
  /// You specify a protocol for each rule (for example, TCP). For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes.
  ///
  /// Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.
  ///
  /// For information about VPC security group quotas, see [Amazon VPC quotas](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).
  AuthorizeSecurityGroupEgressOperation({
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
          _i2.AuthorizeSecurityGroupEgressRequest,
          _i2.AuthorizeSecurityGroupEgressRequest,
          _i3.AuthorizeSecurityGroupEgressResult,
          _i3.AuthorizeSecurityGroupEgressResult>> protocols = [
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
      action: 'AuthorizeSecurityGroupEgress',
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
  _i1.HttpRequest buildRequest(_i2.AuthorizeSecurityGroupEgressRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.AuthorizeSecurityGroupEgressResult? output]) => 200;
  @override
  _i3.AuthorizeSecurityGroupEgressResult buildOutput(
    _i3.AuthorizeSecurityGroupEgressResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.AuthorizeSecurityGroupEgressResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'AuthorizeSecurityGroupEgress';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.AuthorizeSecurityGroupEgressResult> run(
    _i2.AuthorizeSecurityGroupEgressRequest input, {
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
