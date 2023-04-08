// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.terminate_instances_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/terminate_instances_result.dart'
    as _i3;

/// Shuts down the specified instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds.
///
/// If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.
///
/// If you terminate multiple instances across multiple Availability Zones, and one or more of the specified instances are enabled for termination protection, the request fails with the following results:
///
/// *   The specified instances that are in the same Availability Zone as the protected instance are not terminated.
///
/// *   The specified instances that are in different Availability Zones, where no other specified instances are protected, are successfully terminated.
///
///
/// For example, say you have the following instances:
///
/// *   Instance A: `us-east-1a`; Not protected
///
/// *   Instance B: `us-east-1a`; Not protected
///
/// *   Instance C: `us-east-1b`; Protected
///
/// *   Instance D: `us-east-1b`; not protected
///
///
/// If you attempt to terminate all of these instances in the same request, the request reports failure with the following results:
///
/// *   Instance A and Instance B are successfully terminated because none of the specified instances in `us-east-1a` are enabled for termination protection.
///
/// *   Instance C and Instance D fail to terminate because at least one of the specified instances in `us-east-1b` (Instance C) is enabled for termination protection.
///
///
/// Terminated instances remain visible after termination (for approximately one hour).
///
/// By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.
///
/// You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the `DeleteOnTermination` block device mapping parameter set to `true` are automatically deleted. For more information about the differences between stopping and terminating instances, see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the _Amazon EC2 User Guide_.
///
/// For more information about troubleshooting, see [Troubleshooting terminating your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html) in the _Amazon EC2 User Guide_.
class TerminateInstancesOperation extends _i1.HttpOperation<
    _i2.TerminateInstancesRequest,
    _i2.TerminateInstancesRequest,
    _i3.TerminateInstancesResult,
    _i3.TerminateInstancesResult> {
  /// Shuts down the specified instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds.
  ///
  /// If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.
  ///
  /// If you terminate multiple instances across multiple Availability Zones, and one or more of the specified instances are enabled for termination protection, the request fails with the following results:
  ///
  /// *   The specified instances that are in the same Availability Zone as the protected instance are not terminated.
  ///
  /// *   The specified instances that are in different Availability Zones, where no other specified instances are protected, are successfully terminated.
  ///
  ///
  /// For example, say you have the following instances:
  ///
  /// *   Instance A: `us-east-1a`; Not protected
  ///
  /// *   Instance B: `us-east-1a`; Not protected
  ///
  /// *   Instance C: `us-east-1b`; Protected
  ///
  /// *   Instance D: `us-east-1b`; not protected
  ///
  ///
  /// If you attempt to terminate all of these instances in the same request, the request reports failure with the following results:
  ///
  /// *   Instance A and Instance B are successfully terminated because none of the specified instances in `us-east-1a` are enabled for termination protection.
  ///
  /// *   Instance C and Instance D fail to terminate because at least one of the specified instances in `us-east-1b` (Instance C) is enabled for termination protection.
  ///
  ///
  /// Terminated instances remain visible after termination (for approximately one hour).
  ///
  /// By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.
  ///
  /// You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the `DeleteOnTermination` block device mapping parameter set to `true` are automatically deleted. For more information about the differences between stopping and terminating instances, see [Instance lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the _Amazon EC2 User Guide_.
  ///
  /// For more information about troubleshooting, see [Troubleshooting terminating your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html) in the _Amazon EC2 User Guide_.
  TerminateInstancesOperation({
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
          _i2.TerminateInstancesRequest,
          _i2.TerminateInstancesRequest,
          _i3.TerminateInstancesResult,
          _i3.TerminateInstancesResult>> protocols = [
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
      action: 'TerminateInstances',
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
  _i1.HttpRequest buildRequest(_i2.TerminateInstancesRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.TerminateInstancesResult? output]) => 200;
  @override
  _i3.TerminateInstancesResult buildOutput(
    _i3.TerminateInstancesResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.TerminateInstancesResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'TerminateInstances';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.TerminateInstancesResult> run(
    _i2.TerminateInstancesRequest input, {
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
