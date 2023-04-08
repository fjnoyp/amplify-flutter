// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_multicast_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/membership_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_multicast_group.g.dart';

/// Describes the transit gateway multicast group resources.
abstract class TransitGatewayMulticastGroup
    with
        _i1.AWSEquatable<TransitGatewayMulticastGroup>
    implements
        Built<TransitGatewayMulticastGroup,
            TransitGatewayMulticastGroupBuilder> {
  /// Describes the transit gateway multicast group resources.
  factory TransitGatewayMulticastGroup({
    String? groupIpAddress,
    String? transitGatewayAttachmentId,
    String? subnetId,
    String? resourceId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    String? resourceOwnerId,
    String? networkInterfaceId,
    bool? groupMember,
    bool? groupSource,
    _i3.MembershipType? memberType,
    _i3.MembershipType? sourceType,
  }) {
    groupMember ??= false;
    groupSource ??= false;
    return _$TransitGatewayMulticastGroup._(
      groupIpAddress: groupIpAddress,
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      subnetId: subnetId,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceOwnerId: resourceOwnerId,
      networkInterfaceId: networkInterfaceId,
      groupMember: groupMember,
      groupSource: groupSource,
      memberType: memberType,
      sourceType: sourceType,
    );
  }

  /// Describes the transit gateway multicast group resources.
  factory TransitGatewayMulticastGroup.build(
          [void Function(TransitGatewayMulticastGroupBuilder) updates]) =
      _$TransitGatewayMulticastGroup;

  const TransitGatewayMulticastGroup._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayMulticastGroupEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastGroupBuilder b) {
    b.groupMember = false;
    b.groupSource = false;
  }

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;

  /// The ID of the transit gateway attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of resource, for example a VPC attachment.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the Amazon Web Services account that owns the transit gateway multicast domain group resource.
  String? get resourceOwnerId;

  /// The ID of the transit gateway attachment.
  String? get networkInterfaceId;

  /// Indicates that the resource is a transit gateway multicast group member.
  bool get groupMember;

  /// Indicates that the resource is a transit gateway multicast group member.
  bool get groupSource;

  /// The member type (for example, `static`).
  _i3.MembershipType? get memberType;

  /// The source type.
  _i3.MembershipType? get sourceType;
  @override
  List<Object?> get props => [
        groupIpAddress,
        transitGatewayAttachmentId,
        subnetId,
        resourceId,
        resourceType,
        resourceOwnerId,
        networkInterfaceId,
        groupMember,
        groupSource,
        memberType,
        sourceType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayMulticastGroup');
    helper.add(
      'groupIpAddress',
      groupIpAddress,
    );
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'subnetId',
      subnetId,
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
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'groupMember',
      groupMember,
    );
    helper.add(
      'groupSource',
      groupSource,
    );
    helper.add(
      'memberType',
      memberType,
    );
    helper.add(
      'sourceType',
      sourceType,
    );
    return helper.toString();
  }
}

class TransitGatewayMulticastGroupEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TransitGatewayMulticastGroup> {
  const TransitGatewayMulticastGroupEc2QuerySerializer()
      : super('TransitGatewayMulticastGroup');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastGroup,
        _$TransitGatewayMulticastGroup,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupIpAddress':
          if (value != null) {
            result.groupIpAddress = (serializers.deserialize(
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
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
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
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupMember':
          result.groupMember = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'groupSource':
          result.groupSource = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'memberType':
          if (value != null) {
            result.memberType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.MembershipType),
            ) as _i3.MembershipType);
          }
          break;
        case 'sourceType':
          if (value != null) {
            result.sourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.MembershipType),
            ) as _i3.MembershipType);
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
    final payload = (object as TransitGatewayMulticastGroup);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayMulticastGroupResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groupIpAddress != null) {
      result
        ..add(const _i4.XmlElementName('GroupIpAddress'))
        ..add(serializers.serialize(
          payload.groupIpAddress!,
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
    if (payload.subnetId != null) {
      result
        ..add(const _i4.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
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
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('GroupMember'))
      ..add(serializers.serialize(
        payload.groupMember,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i4.XmlElementName('GroupSource'))
      ..add(serializers.serialize(
        payload.groupSource,
        specifiedType: const FullType(bool),
      ));
    if (payload.memberType != null) {
      result
        ..add(const _i4.XmlElementName('MemberType'))
        ..add(serializers.serialize(
          payload.memberType!,
          specifiedType: const FullType.nullable(_i3.MembershipType),
        ));
    }
    if (payload.sourceType != null) {
      result
        ..add(const _i4.XmlElementName('SourceType'))
        ..add(serializers.serialize(
          payload.sourceType!,
          specifiedType: const FullType.nullable(_i3.MembershipType),
        ));
    }
    return result;
  }
}
