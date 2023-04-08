// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_association.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart'
    as _i3;

part 'transit_gateway_attachment.g.dart';

/// Describes an attachment between a resource and a transit gateway.
abstract class TransitGatewayAttachment
    with _i1.AWSEquatable<TransitGatewayAttachment>
    implements
        Built<TransitGatewayAttachment, TransitGatewayAttachmentBuilder> {
  /// Describes an attachment between a resource and a transit gateway.
  factory TransitGatewayAttachment({
    String? transitGatewayAttachmentId,
    String? transitGatewayId,
    String? transitGatewayOwnerId,
    String? resourceOwnerId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    String? resourceId,
    _i3.TransitGatewayAttachmentState? state,
    _i4.TransitGatewayAttachmentAssociation? association,
    DateTime? creationTime,
    List<_i5.Tag>? tags,
  }) {
    return _$TransitGatewayAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transitGatewayId: transitGatewayId,
      transitGatewayOwnerId: transitGatewayOwnerId,
      resourceOwnerId: resourceOwnerId,
      resourceType: resourceType,
      resourceId: resourceId,
      state: state,
      association: association,
      creationTime: creationTime,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// Describes an attachment between a resource and a transit gateway.
  factory TransitGatewayAttachment.build(
          [void Function(TransitGatewayAttachmentBuilder) updates]) =
      _$TransitGatewayAttachment;

  const TransitGatewayAttachment._();

  static const List<_i7.SmithySerializer> serializers = [
    TransitGatewayAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayAttachmentBuilder b) {}

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the Amazon Web Services account that owns the transit gateway.
  String? get transitGatewayOwnerId;

  /// The ID of the Amazon Web Services account that owns the resource.
  String? get resourceOwnerId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the resource.
  String? get resourceId;

  /// The attachment state. Note that the `initiating` state has been deprecated.
  _i3.TransitGatewayAttachmentState? get state;

  /// The association.
  _i4.TransitGatewayAttachmentAssociation? get association;

  /// The creation time.
  DateTime? get creationTime;

  /// The tags for the attachment.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transitGatewayId,
        transitGatewayOwnerId,
        resourceOwnerId,
        resourceType,
        resourceId,
        state,
        association,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayAttachment');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'transitGatewayOwnerId',
      transitGatewayOwnerId,
    );
    helper.add(
      'resourceOwnerId',
      resourceOwnerId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'association',
      association,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayAttachmentEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<TransitGatewayAttachment> {
  const TransitGatewayAttachmentEc2QuerySerializer()
      : super('TransitGatewayAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachment,
        _$TransitGatewayAttachment,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentBuilder();
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
        case 'transitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayOwnerId':
          if (value != null) {
            result.transitGatewayOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayAttachmentResourceType),
            ) as _i2.TransitGatewayAttachmentResourceType);
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
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TransitGatewayAttachmentState),
            ) as _i3.TransitGatewayAttachmentState);
          }
          break;
        case 'association':
          if (value != null) {
            result.association.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.TransitGatewayAttachmentAssociation),
            ) as _i4.TransitGatewayAttachmentAssociation));
          }
          break;
        case 'creationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as TransitGatewayAttachment);
    final result = <Object?>[
      const _i7.XmlElementName(
        'TransitGatewayAttachmentResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAttachmentId != null) {
      result
        ..add(const _i7.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i7.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayOwnerId != null) {
      result
        ..add(const _i7.XmlElementName('TransitGatewayOwnerId'))
        ..add(serializers.serialize(
          payload.transitGatewayOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceOwnerId != null) {
      result
        ..add(const _i7.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          payload.resourceOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i7.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentResourceType),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i7.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i3.TransitGatewayAttachmentState),
        ));
    }
    if (payload.association != null) {
      result
        ..add(const _i7.XmlElementName('Association'))
        ..add(serializers.serialize(
          payload.association!,
          specifiedType:
              const FullType(_i4.TransitGatewayAttachmentAssociation),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add(const _i7.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
