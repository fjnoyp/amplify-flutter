// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.revoke_security_group_egress_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/revoke_security_group_egress_result.dart'
    as _i3;

/// \[VPC only\] Removes the specified outbound (egress) rules from a security group for EC2-VPC. This action does not apply to security groups for use in EC2-Classic.
///
/// You can specify rules using either rule IDs or security group rule properties. If you use rule properties, the values that you specify (for example, ports) must match the existing rule's values exactly. Each rule has a protocol, from and to ports, and destination (CIDR range, security group, or prefix list). For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not need to specify the description to revoke the rule.
///
/// \[Default VPC\] If the values you specify do not match the existing rule's values, no error is returned, and the output describes the security group rules that were not revoked.
///
/// Amazon Web Services recommends that you describe the security group to verify that the rules were removed.
///
/// Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
class RevokeSecurityGroupEgressOperation extends _i1.HttpOperation<
    _i2.RevokeSecurityGroupEgressRequest,
    _i2.RevokeSecurityGroupEgressRequest,
    _i3.RevokeSecurityGroupEgressResult,
    _i3.RevokeSecurityGroupEgressResult> {
  /// \[VPC only\] Removes the specified outbound (egress) rules from a security group for EC2-VPC. This action does not apply to security groups for use in EC2-Classic.
  ///
  /// You can specify rules using either rule IDs or security group rule properties. If you use rule properties, the values that you specify (for example, ports) must match the existing rule's values exactly. Each rule has a protocol, from and to ports, and destination (CIDR range, security group, or prefix list). For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not need to specify the description to revoke the rule.
  ///
  /// \[Default VPC\] If the values you specify do not match the existing rule's values, no error is returned, and the output describes the security group rules that were not revoked.
  ///
  /// Amazon Web Services recommends that you describe the security group to verify that the rules were removed.
  ///
  /// Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
  RevokeSecurityGroupEgressOperation({
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
          _i2.RevokeSecurityGroupEgressRequest,
          _i2.RevokeSecurityGroupEgressRequest,
          _i3.RevokeSecurityGroupEgressResult,
          _i3.RevokeSecurityGroupEgressResult>> protocols = [
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
      action: 'RevokeSecurityGroupEgress',
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
  _i1.HttpRequest buildRequest(_i2.RevokeSecurityGroupEgressRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.RevokeSecurityGroupEgressResult? output]) => 200;
  @override
  _i3.RevokeSecurityGroupEgressResult buildOutput(
    _i3.RevokeSecurityGroupEgressResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.RevokeSecurityGroupEgressResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'RevokeSecurityGroupEgress';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.RevokeSecurityGroupEgressResult> run(
    _i2.RevokeSecurityGroupEgressRequest input, {
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
