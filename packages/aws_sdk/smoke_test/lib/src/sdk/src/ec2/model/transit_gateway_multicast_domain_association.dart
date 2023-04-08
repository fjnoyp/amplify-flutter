// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_multicast_domain_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_association.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_multicast_domain_association.g.dart';

/// Describes the resources associated with the transit gateway multicast domain.
abstract class TransitGatewayMulticastDomainAssociation
    with
        _i1.AWSEquatable<TransitGatewayMulticastDomainAssociation>
    implements
        Built<TransitGatewayMulticastDomainAssociation,
            TransitGatewayMulticastDomainAssociationBuilder> {
  /// Describes the resources associated with the transit gateway multicast domain.
  factory TransitGatewayMulticastDomainAssociation({
    String? transitGatewayAttachmentId,
    String? resourceId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    String? resourceOwnerId,
    _i3.SubnetAssociation? subnet,
  }) {
    return _$TransitGatewayMulticastDomainAssociation._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceOwnerId: resourceOwnerId,
      subnet: subnet,
    );
  }

  /// Describes the resources associated with the transit gateway multicast domain.
  factory TransitGatewayMulticastDomainAssociation.build(
      [void Function(TransitGatewayMulticastDomainAssociationBuilder)
          updates]) = _$TransitGatewayMulticastDomainAssociation;

  const TransitGatewayMulticastDomainAssociation._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayMulticastDomainAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastDomainAssociationBuilder b) {}

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource, for example a VPC attachment.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the Amazon Web Services account that owns the transit gateway multicast domain association resource.
  String? get resourceOwnerId;

  /// The subnet associated with the transit gateway multicast domain.
  _i3.SubnetAssociation? get subnet;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceId,
        resourceType,
        resourceOwnerId,
        subnet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayMulticastDomainAssociation');
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
      'resourceOwnerId',
      resourceOwnerId,
    );
    helper.add(
      'subnet',
      subnet,
    );
    return helper.toString();
  }
}

class TransitGatewayMulticastDomainAssociationEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<TransitGatewayMulticastDomainAssociation> {
  const TransitGatewayMulticastDomainAssociationEc2QuerySerializer()
      : super('TransitGatewayMulticastDomainAssociation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDomainAssociation,
        _$TransitGatewayMulticastDomainAssociation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDomainAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDomainAssociationBuilder();
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
        case 'resourceOwnerId':
          if (value != null) {
            result.resourceOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'subnet':
          if (value != null) {
            result.subnet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SubnetAssociation),
            ) as _i3.SubnetAssociation));
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
    final payload = (object as TransitGatewayMulticastDomainAssociation);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayMulticastDomainAssociationResponse',
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
    if (payload.resourceOwnerId != null) {
      result
        ..add(const _i4.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          payload.resourceOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnet != null) {
      result
        ..add(const _i4.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          payload.subnet!,
          specifiedType: const FullType(_i3.SubnetAssociation),
        ));
    }
    return result;
  }
}
