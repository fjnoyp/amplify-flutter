// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_prefix_list_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_resource_type.dart'
    as _i2;

part 'transit_gateway_prefix_list_attachment.g.dart';

/// Describes a transit gateway prefix list attachment.
abstract class TransitGatewayPrefixListAttachment
    with
        _i1.AWSEquatable<TransitGatewayPrefixListAttachment>
    implements
        Built<TransitGatewayPrefixListAttachment,
            TransitGatewayPrefixListAttachmentBuilder> {
  /// Describes a transit gateway prefix list attachment.
  factory TransitGatewayPrefixListAttachment({
    String? transitGatewayAttachmentId,
    _i2.TransitGatewayAttachmentResourceType? resourceType,
    String? resourceId,
  }) {
    return _$TransitGatewayPrefixListAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      resourceType: resourceType,
      resourceId: resourceId,
    );
  }

  /// Describes a transit gateway prefix list attachment.
  factory TransitGatewayPrefixListAttachment.build(
          [void Function(TransitGatewayPrefixListAttachmentBuilder) updates]) =
      _$TransitGatewayPrefixListAttachment;

  const TransitGatewayPrefixListAttachment._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayPrefixListAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPrefixListAttachmentBuilder b) {}

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The resource type. Note that the `tgw-peering` resource type has been deprecated.
  _i2.TransitGatewayAttachmentResourceType? get resourceType;

  /// The ID of the resource.
  String? get resourceId;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        resourceType,
        resourceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPrefixListAttachment');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    return helper.toString();
  }
}

class TransitGatewayPrefixListAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TransitGatewayPrefixListAttachment> {
  const TransitGatewayPrefixListAttachmentEc2QuerySerializer()
      : super('TransitGatewayPrefixListAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPrefixListAttachment,
        _$TransitGatewayPrefixListAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPrefixListAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPrefixListAttachmentBuilder();
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
    final payload = (object as TransitGatewayPrefixListAttachment);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayPrefixListAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAttachmentId != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentResourceType),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i3.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
