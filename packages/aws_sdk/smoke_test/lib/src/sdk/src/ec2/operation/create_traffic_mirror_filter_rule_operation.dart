// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.create_traffic_mirror_filter_rule_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_rule_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/create_traffic_mirror_filter_rule_result.dart'
    as _i3;

/// Creates a Traffic Mirror filter rule.
///
/// A Traffic Mirror rule defines the Traffic Mirror source traffic to mirror.
///
/// You need the Traffic Mirror filter ID when you create the rule.
class CreateTrafficMirrorFilterRuleOperation extends _i1.HttpOperation<
    _i2.CreateTrafficMirrorFilterRuleRequest,
    _i2.CreateTrafficMirrorFilterRuleRequest,
    _i3.CreateTrafficMirrorFilterRuleResult,
    _i3.CreateTrafficMirrorFilterRuleResult> {
  /// Creates a Traffic Mirror filter rule.
  ///
  /// A Traffic Mirror rule defines the Traffic Mirror source traffic to mirror.
  ///
  /// You need the Traffic Mirror filter ID when you create the rule.
  CreateTrafficMirrorFilterRuleOperation({
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
          _i2.CreateTrafficMirrorFilterRuleRequest,
          _i2.CreateTrafficMirrorFilterRuleRequest,
          _i3.CreateTrafficMirrorFilterRuleResult,
          _i3.CreateTrafficMirrorFilterRuleResult>> protocols = [
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
      action: 'CreateTrafficMirrorFilterRule',
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
  _i1.HttpRequest buildRequest(
          _i2.CreateTrafficMirrorFilterRuleRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.CreateTrafficMirrorFilterRuleResult? output]) => 200;
  @override
  _i3.CreateTrafficMirrorFilterRuleResult buildOutput(
    _i3.CreateTrafficMirrorFilterRuleResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.CreateTrafficMirrorFilterRuleResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateTrafficMirrorFilterRule';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.CreateTrafficMirrorFilterRuleResult> run(
    _i2.CreateTrafficMirrorFilterRuleRequest input, {
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
