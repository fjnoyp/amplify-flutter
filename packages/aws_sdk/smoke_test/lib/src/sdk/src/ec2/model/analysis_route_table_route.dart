// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.analysis_route_table_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'analysis_route_table_route.g.dart';

/// Describes a route table route.
abstract class AnalysisRouteTableRoute
    with _i1.AWSEquatable<AnalysisRouteTableRoute>
    implements Built<AnalysisRouteTableRoute, AnalysisRouteTableRouteBuilder> {
  /// Describes a route table route.
  factory AnalysisRouteTableRoute({
    String? destinationCidr,
    String? destinationPrefixListId,
    String? egressOnlyInternetGatewayId,
    String? gatewayId,
    String? instanceId,
    String? natGatewayId,
    String? networkInterfaceId,
    String? origin,
    String? transitGatewayId,
    String? vpcPeeringConnectionId,
    String? state,
  }) {
    return _$AnalysisRouteTableRoute._(
      destinationCidr: destinationCidr,
      destinationPrefixListId: destinationPrefixListId,
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
      gatewayId: gatewayId,
      instanceId: instanceId,
      natGatewayId: natGatewayId,
      networkInterfaceId: networkInterfaceId,
      origin: origin,
      transitGatewayId: transitGatewayId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
      state: state,
    );
  }

  /// Describes a route table route.
  factory AnalysisRouteTableRoute.build(
          [void Function(AnalysisRouteTableRouteBuilder) updates]) =
      _$AnalysisRouteTableRoute;

  const AnalysisRouteTableRoute._();

  static const List<_i2.SmithySerializer> serializers = [
    AnalysisRouteTableRouteEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisRouteTableRouteBuilder b) {}

  /// The destination IPv4 address, in CIDR notation.
  String? get destinationCidr;

  /// The prefix of the Amazon Web Service.
  String? get destinationPrefixListId;

  /// The ID of an egress-only internet gateway.
  String? get egressOnlyInternetGatewayId;

  /// The ID of the gateway, such as an internet gateway or virtual private gateway.
  String? get gatewayId;

  /// The ID of the instance, such as a NAT instance.
  String? get instanceId;

  /// The ID of a NAT gateway.
  String? get natGatewayId;

  /// The ID of a network interface.
  String? get networkInterfaceId;

  /// Describes how the route was created. The following are the possible values:
  ///
  /// *   CreateRouteTable - The route was automatically created when the route table was created.
  ///
  /// *   CreateRoute - The route was manually added to the route table.
  ///
  /// *   EnableVgwRoutePropagation - The route was propagated by route propagation.
  String? get origin;

  /// The ID of a transit gateway.
  String? get transitGatewayId;

  /// The ID of a VPC peering connection.
  String? get vpcPeeringConnectionId;

  /// The state. The following are the possible values:
  ///
  /// *   active
  ///
  /// *   blackhole
  String? get state;
  @override
  List<Object?> get props => [
        destinationCidr,
        destinationPrefixListId,
        egressOnlyInternetGatewayId,
        gatewayId,
        instanceId,
        natGatewayId,
        networkInterfaceId,
        origin,
        transitGatewayId,
        vpcPeeringConnectionId,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisRouteTableRoute');
    helper.add(
      'destinationCidr',
      destinationCidr,
    );
    helper.add(
      'destinationPrefixListId',
      destinationPrefixListId,
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
      'natGatewayId',
      natGatewayId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'origin',
      origin,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'vpcPeeringConnectionId',
      vpcPeeringConnectionId,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class AnalysisRouteTableRouteEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AnalysisRouteTableRoute> {
  const AnalysisRouteTableRouteEc2QuerySerializer()
      : super('AnalysisRouteTableRoute');

  @override
  Iterable<Type> get types => const [
        AnalysisRouteTableRoute,
        _$AnalysisRouteTableRoute,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisRouteTableRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisRouteTableRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'destinationCidr':
          if (value != null) {
            result.destinationCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destinationPrefixListId':
          if (value != null) {
            result.destinationPrefixListId = (serializers.deserialize(
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
        case 'natGatewayId':
          if (value != null) {
            result.natGatewayId = (serializers.deserialize(
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
        case 'origin':
          if (value != null) {
            result.origin = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcPeeringConnectionId':
          if (value != null) {
            result.vpcPeeringConnectionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
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
    final payload = (object as AnalysisRouteTableRoute);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AnalysisRouteTableRouteResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.destinationCidr != null) {
      result
        ..add(const _i2.XmlElementName('DestinationCidr'))
        ..add(serializers.serialize(
          payload.destinationCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationPrefixListId != null) {
      result
        ..add(const _i2.XmlElementName('DestinationPrefixListId'))
        ..add(serializers.serialize(
          payload.destinationPrefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.egressOnlyInternetGatewayId != null) {
      result
        ..add(const _i2.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(serializers.serialize(
          payload.egressOnlyInternetGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.gatewayId != null) {
      result
        ..add(const _i2.XmlElementName('GatewayId'))
        ..add(serializers.serialize(
          payload.gatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.natGatewayId != null) {
      result
        ..add(const _i2.XmlElementName('NatGatewayId'))
        ..add(serializers.serialize(
          payload.natGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i2.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.origin != null) {
      result
        ..add(const _i2.XmlElementName('Origin'))
        ..add(serializers.serialize(
          payload.origin!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i2.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcPeeringConnectionId != null) {
      result
        ..add(const _i2.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          payload.vpcPeeringConnectionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
