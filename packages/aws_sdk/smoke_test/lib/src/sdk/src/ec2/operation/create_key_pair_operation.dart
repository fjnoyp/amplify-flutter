// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.create_key_pair_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/create_key_pair_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/key_pair.dart' as _i3;

/// Creates an ED25519 or 2048-bit RSA key pair with the specified name and in the specified PEM or PPK format. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key or an unencrypted PPK formatted private key for use with PuTTY. If a key with the specified name already exists, Amazon EC2 returns an error.
///
/// The key pair returned to you is available only in the Amazon Web Services Region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any Region using ImportKeyPair.
///
/// You can have up to 5,000 key pairs per Amazon Web Services Region.
///
/// For more information, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the _Amazon Elastic Compute Cloud User Guide_.
class CreateKeyPairOperation extends _i1.HttpOperation<_i2.CreateKeyPairRequest,
    _i2.CreateKeyPairRequest, _i3.KeyPair, _i3.KeyPair> {
  /// Creates an ED25519 or 2048-bit RSA key pair with the specified name and in the specified PEM or PPK format. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key or an unencrypted PPK formatted private key for use with PuTTY. If a key with the specified name already exists, Amazon EC2 returns an error.
  ///
  /// The key pair returned to you is available only in the Amazon Web Services Region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any Region using ImportKeyPair.
  ///
  /// You can have up to 5,000 key pairs per Amazon Web Services Region.
  ///
  /// For more information, see [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the _Amazon Elastic Compute Cloud User Guide_.
  CreateKeyPairOperation({
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
      _i1.HttpProtocol<_i2.CreateKeyPairRequest, _i2.CreateKeyPairRequest,
          _i3.KeyPair, _i3.KeyPair>> protocols = [
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
      action: 'CreateKeyPair',
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
  _i1.HttpRequest buildRequest(_i2.CreateKeyPairRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.KeyPair? output]) => 200;
  @override
  _i3.KeyPair buildOutput(
    _i3.KeyPair payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.KeyPair.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'CreateKeyPair';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.KeyPair> run(
    _i2.CreateKeyPairRequest input, {
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
