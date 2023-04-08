// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.import_instance_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_result.dart'
    as _i3;

/// Creates an import instance task using metadata from the specified disk image.
///
/// This API action supports only single-volume VMs. To import multi-volume VMs, use ImportImage instead.
///
/// This API action is not supported by the Command Line Interface (CLI). For information about using the Amazon EC2 CLI, which is deprecated, see [Importing a VM to Amazon EC2](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#UsingVirtualMachinesinAmazonEC2) in the _Amazon EC2 CLI Reference_ PDF file.
///
/// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
class ImportInstanceOperation extends _i1.HttpOperation<
    _i2.ImportInstanceRequest,
    _i2.ImportInstanceRequest,
    _i3.ImportInstanceResult,
    _i3.ImportInstanceResult> {
  /// Creates an import instance task using metadata from the specified disk image.
  ///
  /// This API action supports only single-volume VMs. To import multi-volume VMs, use ImportImage instead.
  ///
  /// This API action is not supported by the Command Line Interface (CLI). For information about using the Amazon EC2 CLI, which is deprecated, see [Importing a VM to Amazon EC2](https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#UsingVirtualMachinesinAmazonEC2) in the _Amazon EC2 CLI Reference_ PDF file.
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  ImportInstanceOperation({
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
      _i1.HttpProtocol<_i2.ImportInstanceRequest, _i2.ImportInstanceRequest,
          _i3.ImportInstanceResult, _i3.ImportInstanceResult>> protocols = [
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
      action: 'ImportInstance',
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
  _i1.HttpRequest buildRequest(_i2.ImportInstanceRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ImportInstanceResult? output]) => 200;
  @override
  _i3.ImportInstanceResult buildOutput(
    _i3.ImportInstanceResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ImportInstanceResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ImportInstance';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ImportInstanceResult> run(
    _i2.ImportInstanceRequest input, {
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
