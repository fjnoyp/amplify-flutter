// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.delete_ipam_pool_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_pool_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_ipam_pool_result.dart'
    as _i3;

/// Delete an IPAM pool.
///
/// You cannot delete an IPAM pool if there are allocations in it or CIDRs provisioned to it. To release allocations, see [ReleaseIpamPoolAllocation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html). To deprovision pool CIDRs, see [DeprovisionIpamPoolCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeprovisionIpamPoolCidr.html).
///
/// For more information, see [Delete a pool](https://docs.aws.amazon.com/vpc/latest/ipam/delete-pool-ipam.html) in the _Amazon VPC IPAM User Guide_.
class DeleteIpamPoolOperation extends _i1.HttpOperation<
    _i2.DeleteIpamPoolRequest,
    _i2.DeleteIpamPoolRequest,
    _i3.DeleteIpamPoolResult,
    _i3.DeleteIpamPoolResult> {
  /// Delete an IPAM pool.
  ///
  /// You cannot delete an IPAM pool if there are allocations in it or CIDRs provisioned to it. To release allocations, see [ReleaseIpamPoolAllocation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html). To deprovision pool CIDRs, see [DeprovisionIpamPoolCidr](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeprovisionIpamPoolCidr.html).
  ///
  /// For more information, see [Delete a pool](https://docs.aws.amazon.com/vpc/latest/ipam/delete-pool-ipam.html) in the _Amazon VPC IPAM User Guide_.
  DeleteIpamPoolOperation({
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
      _i1.HttpProtocol<_i2.DeleteIpamPoolRequest, _i2.DeleteIpamPoolRequest,
          _i3.DeleteIpamPoolResult, _i3.DeleteIpamPoolResult>> protocols = [
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
      action: 'DeleteIpamPool',
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
  _i1.HttpRequest buildRequest(_i2.DeleteIpamPoolRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DeleteIpamPoolResult? output]) => 200;
  @override
  _i3.DeleteIpamPoolResult buildOutput(
    _i3.DeleteIpamPoolResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DeleteIpamPoolResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DeleteIpamPool';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DeleteIpamPoolResult> run(
    _i2.DeleteIpamPoolRequest input, {
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
