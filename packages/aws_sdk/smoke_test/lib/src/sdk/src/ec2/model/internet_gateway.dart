// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.internet_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway_attachment.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'internet_gateway.g.dart';

/// Describes an internet gateway.
abstract class InternetGateway
    with _i1.AWSEquatable<InternetGateway>
    implements Built<InternetGateway, InternetGatewayBuilder> {
  /// Describes an internet gateway.
  factory InternetGateway({
    List<_i2.InternetGatewayAttachment>? attachments,
    String? internetGatewayId,
    String? ownerId,
    List<_i3.Tag>? tags,
  }) {
    return _$InternetGateway._(
      attachments: attachments == null ? null : _i4.BuiltList(attachments),
      internetGatewayId: internetGatewayId,
      ownerId: ownerId,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes an internet gateway.
  factory InternetGateway.build(
      [void Function(InternetGatewayBuilder) updates]) = _$InternetGateway;

  const InternetGateway._();

  static const List<_i5.SmithySerializer> serializers = [
    InternetGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InternetGatewayBuilder b) {}

  /// Any VPCs attached to the internet gateway.
  _i4.BuiltList<_i2.InternetGatewayAttachment>? get attachments;

  /// The ID of the internet gateway.
  String? get internetGatewayId;

  /// The ID of the Amazon Web Services account that owns the internet gateway.
  String? get ownerId;

  /// Any tags assigned to the internet gateway.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        attachments,
        internetGatewayId,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InternetGateway');
    helper.add(
      'attachments',
      attachments,
    );
    helper.add(
      'internetGatewayId',
      internetGatewayId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class InternetGatewayEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<InternetGateway> {
  const InternetGatewayEc2QuerySerializer() : super('InternetGateway');

  @override
  Iterable<Type> get types => const [
        InternetGateway,
        _$InternetGateway,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InternetGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InternetGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attachmentSet':
          if (value != null) {
            result.attachments.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.InternetGatewayAttachment)],
              ),
            ) as _i4.BuiltList<_i2.InternetGatewayAttachment>));
          }
          break;
        case 'internetGatewayId':
          if (value != null) {
            result.internetGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as InternetGateway);
    final result = <Object?>[
      const _i5.XmlElementName(
        'InternetGatewayResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attachments != null) {
      result
        ..add(const _i5.XmlElementName('AttachmentSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.attachments!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.InternetGatewayAttachment)],
          ),
        ));
    }
    if (payload.internetGatewayId != null) {
      result
        ..add(const _i5.XmlElementName('InternetGatewayId'))
        ..add(serializers.serialize(
          payload.internetGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
