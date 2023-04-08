// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.replace_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'replace_route_request.g.dart';

abstract class ReplaceRouteRequest
    with
        _i1.HttpInput<ReplaceRouteRequest>,
        _i2.AWSEquatable<ReplaceRouteRequest>
    implements Built<ReplaceRouteRequest, ReplaceRouteRequestBuilder> {
  factory ReplaceRouteRequest({
    String? destinationCidrBlock,
    String? destinationIpv6CidrBlock,
    String? destinationPrefixListId,
    bool? dryRun,
    String? vpcEndpointId,
    String? egressOnlyInternetGatewayId,
    String? gatewayId,
    String? instanceId,
    bool? localTarget,
    String? natGatewayId,
    String? transitGatewayId,
    String? localGatewayId,
    String? carrierGatewayId,
    String? networkInterfaceId,
    required String routeTableId,
    String? vpcPeeringConnectionId,
    String? coreNetworkArn,
  }) {
    dryRun ??= false;
    localTarget ??= false;
    return _$ReplaceRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      destinationIpv6CidrBlock: destinationIpv6CidrBlock,
      destinationPrefixListId: destinationPrefixListId,
      dryRun: dryRun,
      vpcEndpointId: vpcEndpointId,
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
      gatewayId: gatewayId,
      instanceId: instanceId,
      localTarget: localTarget,
      natGatewayId: natGatewayId,
      transitGatewayId: transitGatewayId,
      localGatewayId: localGatewayId,
      carrierGatewayId: carrierGatewayId,
      networkInterfaceId: networkInterfaceId,
      routeTableId: routeTableId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
      coreNetworkArn: coreNetworkArn,
    );
  }

  factory ReplaceRouteRequest.build(
          [void Function(ReplaceRouteRequestBuilder) updates]) =
      _$ReplaceRouteRequest;

  const ReplaceRouteRequest._();

  factory ReplaceRouteRequest.fromRequest(
    ReplaceRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ReplaceRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceRouteRequestBuilder b) {
    b.dryRun = false;
    b.localTarget = false;
  }

  /// The IPv4 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.
  String? get destinationCidrBlock;

  /// The IPv6 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.
  String? get destinationIpv6CidrBlock;

  /// The ID of the prefix list for the route.
  String? get destinationPrefixListId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints only.
  String? get vpcEndpointId;

  /// \[IPv6 traffic only\] The ID of an egress-only internet gateway.
  String? get egressOnlyInternetGatewayId;

  /// The ID of an internet gateway or virtual private gateway.
  String? get gatewayId;

  /// The ID of a NAT instance in your VPC.
  String? get instanceId;

  /// Specifies whether to reset the local route to its default target (`local`).
  bool get localTarget;

  /// \[IPv4 traffic only\] The ID of a NAT gateway.
  String? get natGatewayId;

  /// The ID of a transit gateway.
  String? get transitGatewayId;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// \[IPv4 traffic only\] The ID of a carrier gateway.
  String? get carrierGatewayId;

  /// The ID of a network interface.
  String? get networkInterfaceId;

  /// The ID of the route table.
  String get routeTableId;

  /// The ID of a VPC peering connection.
  String? get vpcPeeringConnectionId;

  /// The Amazon Resource Name (ARN) of the core network.
  String? get coreNetworkArn;
  @override
  ReplaceRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        destinationIpv6CidrBlock,
        destinationPrefixListId,
        dryRun,
        vpcEndpointId,
        egressOnlyInternetGatewayId,
        gatewayId,
        instanceId,
        localTarget,
        natGatewayId,
        transitGatewayId,
        localGatewayId,
        carrierGatewayId,
        networkInterfaceId,
        routeTableId,
        vpcPeeringConnectionId,
        coreNetworkArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplaceRouteRequest');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'destinationIpv6CidrBlock',
      destinationIpv6CidrBlock,
    );
    helper.add(
      'destinationPrefixListId',
      destinationPrefixListId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'vpcEndpointId',
      vpcEndpointId,
    );
    helper.add(
      'egressOnlyInternetGatewayId',
      egressOnlyInternetGatewayId,
    );
    helper.add(
      'gatewayId',
      gatewayId,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'localTarget',
      localTarget,
    );
    helper.add(
      'natGatewayId',
      natGatewayId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'localGatewayId',
      localGatewayId,
    );
    helper.add(
      'carrierGatewayId',
      carrierGatewayId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'routeTableId',
      routeTableId,
    );
    helper.add(
      'vpcPeeringConnectionId',
      vpcPeeringConnectionId,
    );
    helper.add(
      'coreNetworkArn',
      coreNetworkArn,
    );
    return helper.toString();
  }
}

class ReplaceRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ReplaceRouteRequest> {
  const ReplaceRouteRequestEc2QuerySerializer() : super('ReplaceRouteRequest');

  @override
  Iterable<Type> get types => const [
        ReplaceRouteRequest,
        _$ReplaceRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'destinationCidrBlock':
          if (value != null) {
            result.destinationCidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destinationIpv6CidrBlock':
          if (value != null) {
            result.destinationIpv6CidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DestinationPrefixListId':
          if (value != null) {
            result.destinationPrefixListId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'VpcEndpointId':
          if (value != null) {
            result.vpcEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'egressOnlyInternetGatewayId':
          if (value != null) {
            result.egressOnlyInternetGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'gatewayId':
          if (value != null) {
            result.gatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LocalTarget':
          result.localTarget = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'natGatewayId':
          if (value != null) {
            result.natGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TransitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LocalGatewayId':
          if (value != null) {
            result.localGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CarrierGatewayId':
          if (value != null) {
            result.carrierGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'routeTableId':
          result.routeTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'vpcPeeringConnectionId':
          if (value != null) {
            result.vpcPeeringConnectionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CoreNetworkArn':
          if (value != null) {
            result.coreNetworkArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as ReplaceRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ReplaceRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.destinationCidrBlock != null) {
      result
        ..add(const _i1.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          payload.destinationCidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationIpv6CidrBlock != null) {
      result
        ..add(const _i1.XmlElementName('DestinationIpv6CidrBlock'))
        ..add(serializers.serialize(
          payload.destinationIpv6CidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationPrefixListId != null) {
      result
        ..add(const _i1.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          payload.destinationPrefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.vpcEndpointId != null) {
      result
        ..add(const _i1.XmlElementName('VpcEndpointId'))
        ..add(serializers.serialize(
          payload.vpcEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.egressOnlyInternetGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(serializers.serialize(
          payload.egressOnlyInternetGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.gatewayId != null) {
      result
        ..add(const _i1.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          payload.gatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('LocalTarget'))
      ..add(serializers.serialize(
        payload.localTarget,
        specifiedType: const FullType(bool),
      ));
    if (payload.natGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          payload.natGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.localGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          payload.localGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.carrierGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('CarrierGatewayId'))
        ..add(serializers.serialize(
          payload.carrierGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('RouteTableId'))
      ..add(serializers.serialize(
        payload.routeTableId,
        specifiedType: const FullType(String),
      ));
    if (payload.vpcPeeringConnectionId != null) {
      result
        ..add(const _i1.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          payload.vpcPeeringConnectionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.coreNetworkArn != null) {
      result
        ..add(const _i1.XmlElementName('CoreNetworkArn'))
        ..add(serializers.serialize(
          payload.coreNetworkArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
