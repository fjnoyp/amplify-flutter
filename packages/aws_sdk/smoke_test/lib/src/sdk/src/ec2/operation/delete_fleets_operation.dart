// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.delete_fleets_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_fleets_result.dart'
    as _i3;

/// Deletes the specified EC2 Fleet.
///
/// After you delete an EC2 Fleet, it launches no new instances.
///
/// You must specify whether a deleted EC2 Fleet should also terminate its instances. If you choose to terminate the instances, the EC2 Fleet enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the instances continue to run until they are interrupted or you terminate them manually.
///
/// For `instant` fleets, EC2 Fleet must terminate the instances when the fleet is deleted. A deleted `instant` fleet with running instances is not supported.
///
/// **Restrictions**
///
/// *   You can delete up to 25 `instant` fleets in a single request. If you exceed this number, no `instant` fleets are deleted and an error is returned. There is no restriction on the number of fleets of type `maintain` or `request` that can be deleted in a single request.
///
/// *   Up to 1000 instances can be terminated in a single request to delete `instant` fleets.
///
///
/// For more information, see [Delete an EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet) in the _Amazon EC2 User Guide_.
class DeleteFleetsOperation extends _i1.HttpOperation<_i2.DeleteFleetsRequest,
    _i2.DeleteFleetsRequest, _i3.DeleteFleetsResult, _i3.DeleteFleetsResult> {
  /// Deletes the specified EC2 Fleet.
  ///
  /// After you delete an EC2 Fleet, it launches no new instances.
  ///
  /// You must specify whether a deleted EC2 Fleet should also terminate its instances. If you choose to terminate the instances, the EC2 Fleet enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the instances continue to run until they are interrupted or you terminate them manually.
  ///
  /// For `instant` fleets, EC2 Fleet must terminate the instances when the fleet is deleted. A deleted `instant` fleet with running instances is not supported.
  ///
  /// **Restrictions**
  ///
  /// *   You can delete up to 25 `instant` fleets in a single request. If you exceed this number, no `instant` fleets are deleted and an error is returned. There is no restriction on the number of fleets of type `maintain` or `request` that can be deleted in a single request.
  ///
  /// *   Up to 1000 instances can be terminated in a single request to delete `instant` fleets.
  ///
  ///
  /// For more information, see [Delete an EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet) in the _Amazon EC2 User Guide_.
  DeleteFleetsOperation({
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
      _i1.HttpProtocol<_i2.DeleteFleetsRequest, _i2.DeleteFleetsRequest,
          _i3.DeleteFleetsResult, _i3.DeleteFleetsResult>> protocols = [
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
      action: 'DeleteFleets',
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
  _i1.HttpRequest buildRequest(_i2.DeleteFleetsRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DeleteFleetsResult? output]) => 200;
  @override
  _i3.DeleteFleetsResult buildOutput(
    _i3.DeleteFleetsResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.DeleteFleetsResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DeleteFleets';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DeleteFleetsResult> run(
    _i2.DeleteFleetsRequest input, {
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
