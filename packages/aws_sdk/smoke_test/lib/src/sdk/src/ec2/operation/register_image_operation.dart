// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.register_image_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/register_image_result.dart'
    as _i3;

/// Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see [Creating your own AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// For Amazon EBS-backed instances, CreateImage creates and registers the AMI in a single request, so you don't have to register the AMI yourself. We recommend that you always use CreateImage unless you have a specific reason to use RegisterImage.
///
/// If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.
///
/// **Register a snapshot of a root device volume**
///
/// You can use `RegisterImage` to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using a block device mapping. You can't set the encryption state of the volume using the block device mapping. If the snapshot is encrypted, or encryption by default is enabled, the root volume of an instance launched from the AMI is encrypted.
///
/// For more information, see [Create a Linux AMI from a snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot) and [Use encryption with Amazon EBS-backed AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// **Amazon Web Services Marketplace product codes**
///
/// If any snapshots have Amazon Web Services Marketplace product codes, they are copied to the new AMI.
///
/// Windows and some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the Amazon EC2 billing product code associated with an AMI to verify the subscription status for package updates. To create a new AMI for operating systems that require a billing product code, instead of registering the AMI, do the following to preserve the billing product code association:
///
/// 1.  Launch an instance from an existing AMI with that billing product code.
///
/// 2.  Customize the instance.
///
/// 3.  Create an AMI from the instance using CreateImage.
///
///
/// If you purchase a Reserved Instance to apply to an On-Demand Instance that was launched from an AMI with a billing product code, make sure that the Reserved Instance has the matching billing product code. If you purchase a Reserved Instance without the matching billing product code, the Reserved Instance will not be applied to the On-Demand Instance. For information about how to obtain the platform details and billing information of an AMI, see [Understanding AMI billing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html) in the _Amazon Elastic Compute Cloud User Guide_.
class RegisterImageOperation extends _i1.HttpOperation<
    _i2.RegisterImageRequest,
    _i2.RegisterImageRequest,
    _i3.RegisterImageResult,
    _i3.RegisterImageResult> {
  /// Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see [Creating your own AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// For Amazon EBS-backed instances, CreateImage creates and registers the AMI in a single request, so you don't have to register the AMI yourself. We recommend that you always use CreateImage unless you have a specific reason to use RegisterImage.
  ///
  /// If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.
  ///
  /// **Register a snapshot of a root device volume**
  ///
  /// You can use `RegisterImage` to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using a block device mapping. You can't set the encryption state of the volume using the block device mapping. If the snapshot is encrypted, or encryption by default is enabled, the root volume of an instance launched from the AMI is encrypted.
  ///
  /// For more information, see [Create a Linux AMI from a snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot) and [Use encryption with Amazon EBS-backed AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// **Amazon Web Services Marketplace product codes**
  ///
  /// If any snapshots have Amazon Web Services Marketplace product codes, they are copied to the new AMI.
  ///
  /// Windows and some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the Amazon EC2 billing product code associated with an AMI to verify the subscription status for package updates. To create a new AMI for operating systems that require a billing product code, instead of registering the AMI, do the following to preserve the billing product code association:
  ///
  /// 1.  Launch an instance from an existing AMI with that billing product code.
  ///
  /// 2.  Customize the instance.
  ///
  /// 3.  Create an AMI from the instance using CreateImage.
  ///
  ///
  /// If you purchase a Reserved Instance to apply to an On-Demand Instance that was launched from an AMI with a billing product code, make sure that the Reserved Instance has the matching billing product code. If you purchase a Reserved Instance without the matching billing product code, the Reserved Instance will not be applied to the On-Demand Instance. For information about how to obtain the platform details and billing information of an AMI, see [Understanding AMI billing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html) in the _Amazon Elastic Compute Cloud User Guide_.
  RegisterImageOperation({
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
      _i1.HttpProtocol<_i2.RegisterImageRequest, _i2.RegisterImageRequest,
          _i3.RegisterImageResult, _i3.RegisterImageResult>> protocols = [
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
      action: 'RegisterImage',
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
  _i1.HttpRequest buildRequest(_i2.RegisterImageRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.RegisterImageResult? output]) => 200;
  @override
  _i3.RegisterImageResult buildOutput(
    _i3.RegisterImageResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.RegisterImageResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'RegisterImage';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.RegisterImageResult> run(
    _i2.RegisterImageRequest input, {
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
