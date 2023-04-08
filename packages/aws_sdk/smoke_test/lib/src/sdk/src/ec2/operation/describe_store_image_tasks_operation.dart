// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.describe_store_image_tasks_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i11;

import 'package:aws_common/aws_common.dart' as _i9;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i6;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_store_image_tasks_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_store_image_tasks_result.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/store_image_task_result.dart'
    as _i5;

/// Describes the progress of the AMI store tasks. You can describe the store tasks for specified AMIs. If you don't specify the AMIs, you get a paginated list of store tasks from the last 31 days.
///
/// For each AMI task, the response indicates if the task is `InProgress`, `Completed`, or `Failed`. For tasks `InProgress`, the response shows the estimated progress as a percentage.
///
/// Tasks are listed in reverse chronological order. Currently, only tasks from the past 31 days can be viewed.
///
/// To use this API, you must have the required permissions. For more information, see [Permissions for storing and restoring AMIs using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// For more information, see [Store and restore an AMI using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html) in the _Amazon Elastic Compute Cloud User Guide_.
class DescribeStoreImageTasksOperation extends _i1.PaginatedHttpOperation<
    _i2.DescribeStoreImageTasksRequest,
    _i2.DescribeStoreImageTasksRequest,
    _i3.DescribeStoreImageTasksResult,
    _i3.DescribeStoreImageTasksResult,
    String,
    int,
    _i4.BuiltList<_i5.StoreImageTaskResult>> {
  /// Describes the progress of the AMI store tasks. You can describe the store tasks for specified AMIs. If you don't specify the AMIs, you get a paginated list of store tasks from the last 31 days.
  ///
  /// For each AMI task, the response indicates if the task is `InProgress`, `Completed`, or `Failed`. For tasks `InProgress`, the response shows the estimated progress as a percentage.
  ///
  /// Tasks are listed in reverse chronological order. Currently, only tasks from the past 31 days can be viewed.
  ///
  /// To use this API, you must have the required permissions. For more information, see [Permissions for storing and restoring AMIs using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// For more information, see [Store and restore an AMI using Amazon S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html) in the _Amazon Elastic Compute Cloud User Guide_.
  DescribeStoreImageTasksOperation({
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
          _i2.DescribeStoreImageTasksRequest,
          _i2.DescribeStoreImageTasksRequest,
          _i3.DescribeStoreImageTasksResult,
          _i3.DescribeStoreImageTasksResult>> protocols = [
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
      action: 'DescribeStoreImageTasks',
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
  _i1.HttpRequest buildRequest(_i2.DescribeStoreImageTasksRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.DescribeStoreImageTasksResult? output]) => 200;
  @override
  _i3.DescribeStoreImageTasksResult buildOutput(
    _i3.DescribeStoreImageTasksResult payload,
    _i9.AWSBaseHttpResponse response,
  ) =>
      _i3.DescribeStoreImageTasksResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'DescribeStoreImageTasks';
  @override
  _i7.AWSRetryer get retryer => _i7.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.DescribeStoreImageTasksResult> run(
    _i2.DescribeStoreImageTasksRequest input, {
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
  String? getToken(_i3.DescribeStoreImageTasksResult output) =>
      output.nextToken;
  @override
  _i4.BuiltList<_i5.StoreImageTaskResult> getItems(
          _i3.DescribeStoreImageTasksResult output) =>
      output.storeImageTaskResults ?? _i4.BuiltList();
  @override
  _i2.DescribeStoreImageTasksRequest rebuildInput(
    _i2.DescribeStoreImageTasksRequest input,
    String token,
    int? pageSize,
  ) =>
      input.rebuild((b) {
        b.nextToken = token;
        b.maxResults = pageSize;
      });
}
