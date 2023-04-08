// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.get_password_data_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/get_password_data_result.dart'
    as _i3;

/// Retrieves the encrypted administrator password for a running Windows instance.
///
/// The Windows password is generated at boot by the `EC2Config` service or `EC2Launch` scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see [EC2Config](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html) and [EC2Launch](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html) in the _Amazon EC2 User Guide_.
///
/// For the `EC2Config` service, the password is not generated for rebundled AMIs unless `Ec2SetPassword` is enabled before bundling.
///
/// The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.
///
/// When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it's available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.
class GetPasswordDataOperation extends _i1.HttpOperation<
    _i2.GetPasswordDataRequest,
    _i2.GetPasswordDataRequest,
    _i3.GetPasswordDataResult,
    _i3.GetPasswordDataResult> {
  /// Retrieves the encrypted administrator password for a running Windows instance.
  ///
  /// The Windows password is generated at boot by the `EC2Config` service or `EC2Launch` scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see [EC2Config](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html) and [EC2Launch](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html) in the _Amazon EC2 User Guide_.
  ///
  /// For the `EC2Config` service, the password is not generated for rebundled AMIs unless `Ec2SetPassword` is enabled before bundling.
  ///
  /// The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.
  ///
  /// When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it's available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.
  GetPasswordDataOperation({
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
      _i1.HttpProtocol<_i2.GetPasswordDataRequest, _i2.GetPasswordDataRequest,
          _i3.GetPasswordDataResult, _i3.GetPasswordDataResult>> protocols = [
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
      action: 'GetPasswordData',
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
  _i1.HttpRequest buildRequest(_i2.GetPasswordDataRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.GetPasswordDataResult? output]) => 200;
  @override
  _i3.GetPasswordDataResult buildOutput(
    _i3.GetPasswordDataResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.GetPasswordDataResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'GetPasswordData';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.GetPasswordDataResult> run(
    _i2.GetPasswordDataRequest input, {
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
