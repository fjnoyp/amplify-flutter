// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_vpn_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status.dart'
    as _i2;

part 'client_vpn_route.g.dart';

/// Information about a Client VPN endpoint route.
abstract class ClientVpnRoute
    with _i1.AWSEquatable<ClientVpnRoute>
    implements Built<ClientVpnRoute, ClientVpnRouteBuilder> {
  /// Information about a Client VPN endpoint route.
  factory ClientVpnRoute({
    String? clientVpnEndpointId,
    String? destinationCidr,
    String? targetSubnet,
    String? type,
    String? origin,
    _i2.ClientVpnRouteStatus? status,
    String? description,
  }) {
    return _$ClientVpnRoute._(
      clientVpnEndpointId: clientVpnEndpointId,
      destinationCidr: destinationCidr,
      targetSubnet: targetSubnet,
      type: type,
      origin: origin,
      status: status,
      description: description,
    );
  }

  /// Information about a Client VPN endpoint route.
  factory ClientVpnRoute.build([void Function(ClientVpnRouteBuilder) updates]) =
      _$ClientVpnRoute;

  const ClientVpnRoute._();

  static const List<_i3.SmithySerializer> serializers = [
    ClientVpnRouteEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnRouteBuilder b) {}

  /// The ID of the Client VPN endpoint with which the route is associated.
  String? get clientVpnEndpointId;

  /// The IPv4 address range, in CIDR notation, of the route destination.
  String? get destinationCidr;

  /// The ID of the subnet through which traffic is routed.
  String? get targetSubnet;

  /// The route type.
  String? get type;

  /// Indicates how the route was associated with the Client VPN endpoint. `associate` indicates that the route was automatically added when the target network was associated with the Client VPN endpoint. `add-route` indicates that the route was manually added using the **CreateClientVpnRoute** action.
  String? get origin;

  /// The current state of the route.
  _i2.ClientVpnRouteStatus? get status;

  /// A brief description of the route.
  String? get description;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        destinationCidr,
        targetSubnet,
        type,
        origin,
        status,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnRoute');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'destinationCidr',
      destinationCidr,
    );
    helper.add(
      'targetSubnet',
      targetSubnet,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'origin',
      origin,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'description',
      description,
    );
    return helper.toString();
  }
}

class ClientVpnRouteEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClientVpnRoute> {
  const ClientVpnRouteEc2QuerySerializer() : super('ClientVpnRoute');

  @override
  Iterable<Type> get types => const [
        ClientVpnRoute,
        _$ClientVpnRoute,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientVpnEndpointId':
          if (value != null) {
            result.clientVpnEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'destinationCidr':
          if (value != null) {
            result.destinationCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'targetSubnet':
          if (value != null) {
            result.targetSubnet = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
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
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ClientVpnRouteStatus),
            ) as _i2.ClientVpnRouteStatus));
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
    final payload = (object as ClientVpnRoute);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ClientVpnRouteResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientVpnEndpointId != null) {
      result
        ..add(const _i3.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          payload.clientVpnEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.destinationCidr != null) {
      result
        ..add(const _i3.XmlElementName('DestinationCidr'))
        ..add(serializers.serialize(
          payload.destinationCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.targetSubnet != null) {
      result
        ..add(const _i3.XmlElementName('TargetSubnet'))
        ..add(serializers.serialize(
          payload.targetSubnet!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.origin != null) {
      result
        ..add(const _i3.XmlElementName('Origin'))
        ..add(serializers.serialize(
          payload.origin!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.ClientVpnRouteStatus),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
