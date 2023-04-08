// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.operation.modify_vpn_connection_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i7;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/common/endpoint_resolver.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/common/serializers.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_connection_result.dart'
    as _i3;

/// Modifies the customer gateway or the target gateway of an Amazon Web Services Site-to-Site VPN connection. To modify the target gateway, the following migration options are available:
///
/// *   An existing virtual private gateway to a new virtual private gateway
///
/// *   An existing virtual private gateway to a transit gateway
///
/// *   An existing transit gateway to a new transit gateway
///
/// *   An existing transit gateway to a virtual private gateway
///
///
/// Before you perform the migration to the new gateway, you must configure the new gateway. Use CreateVpnGateway to create a virtual private gateway, or CreateTransitGateway to create a transit gateway.
///
/// This step is required when you migrate from a virtual private gateway with static routes to a transit gateway.
///
/// You must delete the static routes before you migrate to the new gateway.
///
/// Keep a copy of the static route before you delete it. You will need to add back these routes to the transit gateway after the VPN connection migration is complete.
///
/// After you migrate to the new gateway, you might need to modify your VPC route table. Use CreateRoute and DeleteRoute to make the changes described in [Update VPC route tables](https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing) in the _Amazon Web Services Site-to-Site VPN User Guide_.
///
/// When the new gateway is a transit gateway, modify the transit gateway route table to allow traffic between the VPC and the Amazon Web Services Site-to-Site VPN connection. Use CreateTransitGatewayRoute to add the routes.
///
/// If you deleted VPN static routes, you must add the static routes to the transit gateway route table.
///
/// After you perform this operation, the VPN endpoint's IP addresses on the Amazon Web Services side and the tunnel options remain intact. Your Amazon Web Services Site-to-Site VPN connection will be temporarily unavailable for a brief period while we provision the new endpoints.
class ModifyVpnConnectionOperation extends _i1.HttpOperation<
    _i2.ModifyVpnConnectionRequest,
    _i2.ModifyVpnConnectionRequest,
    _i3.ModifyVpnConnectionResult,
    _i3.ModifyVpnConnectionResult> {
  /// Modifies the customer gateway or the target gateway of an Amazon Web Services Site-to-Site VPN connection. To modify the target gateway, the following migration options are available:
  ///
  /// *   An existing virtual private gateway to a new virtual private gateway
  ///
  /// *   An existing virtual private gateway to a transit gateway
  ///
  /// *   An existing transit gateway to a new transit gateway
  ///
  /// *   An existing transit gateway to a virtual private gateway
  ///
  ///
  /// Before you perform the migration to the new gateway, you must configure the new gateway. Use CreateVpnGateway to create a virtual private gateway, or CreateTransitGateway to create a transit gateway.
  ///
  /// This step is required when you migrate from a virtual private gateway with static routes to a transit gateway.
  ///
  /// You must delete the static routes before you migrate to the new gateway.
  ///
  /// Keep a copy of the static route before you delete it. You will need to add back these routes to the transit gateway after the VPN connection migration is complete.
  ///
  /// After you migrate to the new gateway, you might need to modify your VPC route table. Use CreateRoute and DeleteRoute to make the changes described in [Update VPC route tables](https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  ///
  /// When the new gateway is a transit gateway, modify the transit gateway route table to allow traffic between the VPC and the Amazon Web Services Site-to-Site VPN connection. Use CreateTransitGatewayRoute to add the routes.
  ///
  /// If you deleted VPN static routes, you must add the static routes to the transit gateway route table.
  ///
  /// After you perform this operation, the VPN endpoint's IP addresses on the Amazon Web Services side and the tunnel options remain intact. Your Amazon Web Services Site-to-Site VPN connection will be temporarily unavailable for a brief period while we provision the new endpoints.
  ModifyVpnConnectionOperation({
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
          _i2.ModifyVpnConnectionRequest,
          _i2.ModifyVpnConnectionRequest,
          _i3.ModifyVpnConnectionResult,
          _i3.ModifyVpnConnectionResult>> protocols = [
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
      action: 'ModifyVpnConnection',
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
  _i1.HttpRequest buildRequest(_i2.ModifyVpnConnectionRequest input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i3.ModifyVpnConnectionResult? output]) => 200;
  @override
  _i3.ModifyVpnConnectionResult buildOutput(
    _i3.ModifyVpnConnectionResult payload,
    _i7.AWSBaseHttpResponse response,
  ) =>
      _i3.ModifyVpnConnectionResult.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  String get runtimeTypeName => 'ModifyVpnConnection';
  @override
  _i5.AWSRetryer get retryer => _i5.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i3.ModifyVpnConnectionResult> run(
    _i2.ModifyVpnConnectionRequest input, {
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
