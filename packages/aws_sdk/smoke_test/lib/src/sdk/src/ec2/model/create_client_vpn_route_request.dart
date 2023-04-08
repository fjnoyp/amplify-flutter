// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_client_vpn_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_client_vpn_route_request.g.dart';

abstract class CreateClientVpnRouteRequest
    with
        _i1.HttpInput<CreateClientVpnRouteRequest>,
        _i2.AWSEquatable<CreateClientVpnRouteRequest>
    implements
        Built<CreateClientVpnRouteRequest, CreateClientVpnRouteRequestBuilder> {
  factory CreateClientVpnRouteRequest({
    required String clientVpnEndpointId,
    required String destinationCidrBlock,
    required String targetVpcSubnetId,
    String? description,
    String? clientToken,
    bool? dryRun,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$CreateClientVpnRouteRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      destinationCidrBlock: destinationCidrBlock,
      targetVpcSubnetId: targetVpcSubnetId,
      description: description,
      clientToken: clientToken,
      dryRun: dryRun,
    );
  }

  factory CreateClientVpnRouteRequest.build(
          [void Function(CreateClientVpnRouteRequestBuilder) updates]) =
      _$CreateClientVpnRouteRequest;

  const CreateClientVpnRouteRequest._();

  factory CreateClientVpnRouteRequest.fromRequest(
    CreateClientVpnRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateClientVpnRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateClientVpnRouteRequestBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint to which to add the route.
  String get clientVpnEndpointId;

  /// The IPv4 address range, in CIDR notation, of the route destination. For example:
  ///
  /// *   To add a route for Internet access, enter `0.0.0.0/0`
  ///
  /// *   To add a route for a peered VPC, enter the peered VPC's IPv4 CIDR range
  ///
  /// *   To add a route for an on-premises network, enter the Amazon Web Services Site-to-Site VPN connection's IPv4 CIDR range
  ///
  /// *   To add a route for the local network, enter the client CIDR range
  String get destinationCidrBlock;

  /// The ID of the subnet through which you want to route traffic. The specified subnet must be an existing target network of the Client VPN endpoint.
  ///
  /// Alternatively, if you're adding a route for the local network, specify `local`.
  String get targetVpcSubnetId;

  /// A brief description of the route.
  String? get description;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateClientVpnRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        destinationCidrBlock,
        targetVpcSubnetId,
        description,
        clientToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateClientVpnRouteRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'targetVpcSubnetId',
      targetVpcSubnetId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateClientVpnRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateClientVpnRouteRequest> {
  const CreateClientVpnRouteRequestEc2QuerySerializer()
      : super('CreateClientVpnRouteRequest');

  @override
  Iterable<Type> get types => const [
        CreateClientVpnRouteRequest,
        _$CreateClientVpnRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateClientVpnRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateClientVpnRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TargetVpcSubnetId':
          result.targetVpcSubnetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as CreateClientVpnRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateClientVpnRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
      ..add(serializers.serialize(
        payload.clientVpnEndpointId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DestinationCidrBlock'))
      ..add(serializers.serialize(
        payload.destinationCidrBlock,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('TargetVpcSubnetId'))
      ..add(serializers.serialize(
        payload.targetVpcSubnetId,
        specifiedType: const FullType(String),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
