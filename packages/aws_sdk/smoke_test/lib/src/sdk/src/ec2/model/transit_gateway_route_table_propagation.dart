// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_route_table_propagation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation_state.dart'
    as _i3;

part 'transit_gateway_route_table_propagation.g.dart';

/// Describes a route table propagation.
abstract class TransitGatewayRouteTablePropagation
    with
        _i1.AWSEquatable<TransitGatewayRouteTablePropagation>
    implements
        Built<TransitGatewayRouteTablePropagation,
            TransitGatewayRouteTablePropagationBuilder> {
  /// Describes a route table propagation.
  factory TransitGatewayRouteTablePropagation({
    String? transitGatewayAttachmentId,
    String? resourceId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    _i3.TransitGatewayPropagationState? state,
    String? transitGatewayRouteTableAnnouncementId,
  }) {
    return _$TransitGatewayRouteTablePropagation._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      state: state,
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
    );
  }

  /// Describes a route table propagation.
  factory TransitGatewayRouteTablePropagation.build(
          [void Function(TransitGatewayRouteTablePropagationBuilder) updates]) =
      _$TransitGatewayRouteTablePropagation;

  const TransitGatewayRouteTablePropagation._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayRouteTablePropagationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRouteTablePropagationBuilder b) {}

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource. Note that the `tgw-peering` resource type has been deprecated.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The state of the resource.
  _i3.TransitGatewayPropagationState? get state;

  /// The ID of the transit gateway route table announcement.
  String? get transitGatewayRouteTableAnnouncementId;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        state,
        transitGatewayRouteTableAnnouncementId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayRouteTablePropagation');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'transitGatewayRouteTableAnnouncementId',
      transitGatewayRouteTableAnnouncementId,
    );
    return helper.toString();
  }
}

class TransitGatewayRouteTablePropagationEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<TransitGatewayRouteTablePropagation> {
  const TransitGatewayRouteTablePropagationEc2QuerySerializer()
      : super('TransitGatewayRouteTablePropagation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTablePropagation,
        _$TransitGatewayRouteTablePropagation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTablePropagation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTablePropagationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayAttachmentId':
          if (value != null) {
            result.transitGatewayAttachmentId = (serializers.deserialize(
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
              specifiedType:
                  const FullType(_i2.TransitGatewayAttachmentResourceType),
            ) as _i2.TransitGatewayAttachmentResourceType);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TransitGatewayPropagationState),
            ) as _i3.TransitGatewayPropagationState);
          }
          break;
        case 'transitGatewayRouteTableAnnouncementId':
          if (value != null) {
            result.transitGatewayRouteTableAnnouncementId =
                (serializers.deserialize(
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
    final payload = (object as TransitGatewayRouteTablePropagation);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayRouteTablePropagationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAttachmentId != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i4.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i4.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentResourceType),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i3.TransitGatewayPropagationState),
        ));
    }
    if (payload.transitGatewayRouteTableAnnouncementId != null) {
      result
        ..add(
            const _i4.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableAnnouncementId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
