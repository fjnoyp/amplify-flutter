// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association_state.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_association.g.dart';

/// Describes an association between a resource attachment and a transit gateway route table.
abstract class TransitGatewayAssociation
    with _i1.AWSEquatable<TransitGatewayAssociation>
    implements
        Built<TransitGatewayAssociation, TransitGatewayAssociationBuilder> {
  /// Describes an association between a resource attachment and a transit gateway route table.
  factory TransitGatewayAssociation({
    String? transitGatewayRouteTableId,
    String? transitGatewayAttachmentId,
    String? resourceId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    _i3.TransitGatewayAssociationState? state,
  }) {
    return _$TransitGatewayAssociation._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      state: state,
    );
  }

  /// Describes an association between a resource attachment and a transit gateway route table.
  factory TransitGatewayAssociation.build(
          [void Function(TransitGatewayAssociationBuilder) updates]) =
      _$TransitGatewayAssociation;

  const TransitGatewayAssociation._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayAssociationBuilder b) {}

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The state of the association.
  _i3.TransitGatewayAssociationState? get state;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayAssociation');
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
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
    return helper.toString();
  }
}

class TransitGatewayAssociationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TransitGatewayAssociation> {
  const TransitGatewayAssociationEc2QuerySerializer()
      : super('TransitGatewayAssociation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAssociation,
        _$TransitGatewayAssociation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTableId':
          if (value != null) {
            result.transitGatewayRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
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
              specifiedType: const FullType(_i3.TransitGatewayAssociationState),
            ) as _i3.TransitGatewayAssociationState);
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
    final payload = (object as TransitGatewayAssociation);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayAssociationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTableId != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
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
              const FullType.nullable(_i3.TransitGatewayAssociationState),
        ));
    }
    return result;
  }
}
