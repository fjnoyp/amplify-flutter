// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_route_table_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'transit_gateway_route_table_route.g.dart';

/// Describes a route in a transit gateway route table.
abstract class TransitGatewayRouteTableRoute
    with
        _i1.AWSEquatable<TransitGatewayRouteTableRoute>
    implements
        Built<TransitGatewayRouteTableRoute,
            TransitGatewayRouteTableRouteBuilder> {
  /// Describes a route in a transit gateway route table.
  factory TransitGatewayRouteTableRoute({
    String? destinationCidr,
    String? state,
    String? routeOrigin,
    String? prefixListId,
    String? attachmentId,
    String? resourceId,
    String? resourceType,
  }) {
    return _$TransitGatewayRouteTableRoute._(
      destinationCidr: destinationCidr,
      state: state,
      routeOrigin: routeOrigin,
      prefixListId: prefixListId,
      attachmentId: attachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  /// Describes a route in a transit gateway route table.
  factory TransitGatewayRouteTableRoute.build(
          [void Function(TransitGatewayRouteTableRouteBuilder) updates]) =
      _$TransitGatewayRouteTableRoute;

  const TransitGatewayRouteTableRoute._();

  static const List<_i2.SmithySerializer> serializers = [
    TransitGatewayRouteTableRouteEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRouteTableRouteBuilder b) {}

  /// The CIDR block used for destination matches.
  String? get destinationCidr;

  /// The state of the route.
  String? get state;

  /// The route origin. The following are the possible values:
  ///
  /// *   static
  ///
  /// *   propagated
  String? get routeOrigin;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The ID of the route attachment.
  String? get attachmentId;

  /// The ID of the resource for the route attachment.
  String? get resourceId;

  /// The resource type for the route attachment.
  String? get resourceType;
  @override
  List<Object?> get props => [
        destinationCidr,
        state,
        routeOrigin,
        prefixListId,
        attachmentId,
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRouteTableRoute');
    helper.add(
      'destinationCidr',
      destinationCidr,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'routeOrigin',
      routeOrigin,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'attachmentId',
      attachmentId,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class TransitGatewayRouteTableRouteEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayRouteTableRoute> {
  const TransitGatewayRouteTableRouteEc2QuerySerializer()
      : super('TransitGatewayRouteTableRoute');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTableRoute,
        _$TransitGatewayRouteTableRoute,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTableRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTableRouteBuilder();
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
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'routeOrigin':
          if (value != null) {
            result.routeOrigin = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefixListId':
          if (value != null) {
            result.prefixListId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'attachmentId':
          if (value != null) {
            result.attachmentId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
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
    final payload = (object as TransitGatewayRouteTableRoute);
    final result = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayRouteTableRouteResponse',
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
    if (payload.state != null) {
      result
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.routeOrigin != null) {
      result
        ..add(const _i2.XmlElementName('RouteOrigin'))
        ..add(serializers.serialize(
          payload.routeOrigin!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixListId != null) {
      result
        ..add(const _i2.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          payload.prefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.attachmentId != null) {
      result
        ..add(const _i2.XmlElementName('AttachmentId'))
        ..add(serializers.serialize(
          payload.attachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i2.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
