// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_vpc_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment_options.dart'
    as _i3;

part 'transit_gateway_vpc_attachment.g.dart';

/// Describes a VPC attachment.
abstract class TransitGatewayVpcAttachment
    with _i1.AWSEquatable<TransitGatewayVpcAttachment>
    implements
        Built<TransitGatewayVpcAttachment, TransitGatewayVpcAttachmentBuilder> {
  /// Describes a VPC attachment.
  factory TransitGatewayVpcAttachment({
    String? transitGatewayAttachmentId,
    String? transitGatewayId,
    String? vpcId,
    String? vpcOwnerId,
    _i2.TransitGatewayAttachmentState? state,
    List<String>? subnetIds,
    DateTime? creationTime,
    _i3.TransitGatewayVpcAttachmentOptions? options,
    List<_i4.Tag>? tags,
  }) {
    return _$TransitGatewayVpcAttachment._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transitGatewayId: transitGatewayId,
      vpcId: vpcId,
      vpcOwnerId: vpcOwnerId,
      state: state,
      subnetIds: subnetIds == null ? null : _i5.BuiltList(subnetIds),
      creationTime: creationTime,
      options: options,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes a VPC attachment.
  factory TransitGatewayVpcAttachment.build(
          [void Function(TransitGatewayVpcAttachmentBuilder) updates]) =
      _$TransitGatewayVpcAttachment;

  const TransitGatewayVpcAttachment._();

  static const List<_i6.SmithySerializer> serializers = [
    TransitGatewayVpcAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayVpcAttachmentBuilder b) {}

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the VPC.
  String? get vpcOwnerId;

  /// The state of the VPC attachment. Note that the `initiating` state has been deprecated.
  _i2.TransitGatewayAttachmentState? get state;

  /// The IDs of the subnets.
  _i5.BuiltList<String>? get subnetIds;

  /// The creation time.
  DateTime? get creationTime;

  /// The VPC attachment options.
  _i3.TransitGatewayVpcAttachmentOptions? get options;

  /// The tags for the VPC attachment.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transitGatewayId,
        vpcId,
        vpcOwnerId,
        state,
        subnetIds,
        creationTime,
        options,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayVpcAttachment');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'vpcOwnerId',
      vpcOwnerId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'subnetIds',
      subnetIds,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'options',
      options,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayVpcAttachmentEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<TransitGatewayVpcAttachment> {
  const TransitGatewayVpcAttachmentEc2QuerySerializer()
      : super('TransitGatewayVpcAttachment');

  @override
  Iterable<Type> get types => const [
        TransitGatewayVpcAttachment,
        _$TransitGatewayVpcAttachment,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayVpcAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayVpcAttachmentBuilder();
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
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcOwnerId':
          if (value != null) {
            result.vpcOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayAttachmentState),
            ) as _i2.TransitGatewayAttachmentState);
          }
          break;
        case 'subnetIds':
          if (value != null) {
            result.subnetIds.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
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
        case 'options':
          if (value != null) {
            result.options.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.TransitGatewayVpcAttachmentOptions),
            ) as _i3.TransitGatewayVpcAttachmentOptions));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
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
    final payload = (object as TransitGatewayVpcAttachment);
    final result = <Object?>[
      const _i6.XmlElementName(
        'TransitGatewayVpcAttachmentResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAttachmentId != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i6.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcOwnerId != null) {
      result
        ..add(const _i6.XmlElementName('VpcOwnerId'))
        ..add(serializers.serialize(
          payload.vpcOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAttachmentState),
        ));
    }
    if (payload.subnetIds != null) {
      result
        ..add(const _i6.XmlElementName('SubnetIds'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.subnetIds!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add(const _i6.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.options != null) {
      result
        ..add(const _i6.XmlElementName('Options'))
        ..add(serializers.serialize(
          payload.options!,
          specifiedType: const FullType(_i3.TransitGatewayVpcAttachmentOptions),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
