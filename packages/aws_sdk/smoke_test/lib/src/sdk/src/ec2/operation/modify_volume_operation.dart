// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.modify_volume_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_volume_result.dart'
    as _i3;

/// You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you might be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying EBS volumes, see [Amazon EBS Elastic Volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modify-volume.html) (Linux instances) or [Amazon EBS Elastic Volumes](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-modify-volume.html) (Windows instances).
///
/// When you complete a resize operation on your volume, you need to extend the volume's file-system size to take advantage of the new storage capacity. For more information, see [Extend a Linux file system](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux) or [Extend a Windows file system](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows).
///
/// You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can also track the status of a modification using DescribeVolumesModifications. For information about tracking status changes using either method, see [Monitor the progress of volume modifications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html).
///
/// With previous-generation instance types, resizing an EBS volume might require detaching and reattaching the volume or stopping and restarting the instance.
///
/// After modifying a volume, you must wait at least six hours and ensure that the volume is in the `in-use` or `available` state before you can modify the same volume. This is sometimes referred to as a cooldown period.
class ModifyVolumeOperation extends _i1.HttpOperation<_i2.ModifyVolumeRequest,
    _i2.ModifyVolumeRequest, _i3.ModifyVolumeResult, _i3.ModifyVolumeResult> {
  /// You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you might be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying EBS volumes, see [Amazon EBS Elastic Volumes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modify-volume.html) (Linux instances) or [Amazon EBS Elastic Volumes](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-modify-volume.html) (Windows instances).
  ///
  /// When you complete a resize operation on your volume, you need to extend the volume's file-system size to take advantage of the new storage capacity. For more information, see [Extend a Linux file system](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux) or [Extend a Windows file system](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows).
  ///
  /// You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can also track the status of a modification using DescribeVolumesModifications. For information about tracking status changes using either method, see [Monitor the progress of volume modifications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html).
  ///
  /// With previous-generation instance types, resizing an EBS volume might require detaching and reattaching the volume or stopping and restarting the instance.
  ///
  /// After modifying a volume, you must wait at least six hours and ensure that the volume is in the `in-use` or `available` state before you can modify the same volume. This is sometimes referred to as a cooldown period.
  ModifyVolumeOperation({
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
      _i1.HttpProtocol<_i2.ModifyVolumeRequest, _i2.ModifyVolumeRequest,
          _i3.ModifyVolumeResult, _i3.ModifyVolumeResult>> protocols = [
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
      action: 'ModifyVolume',
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
  _i1.HttpRequest buildRequest(_i2.ModifyVolumeRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ModifyVolumeResult? output]) => 200;
  @override
  _i3.ModifyVolumeResult buildOutput(
    _i3.ModifyVolumeResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ModifyVolumeResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ModifyVolume';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ModifyVolumeResult> run(
    _i2.ModifyVolumeRequest input, {
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
