// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.egress_only_internet_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway_attachment.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'egress_only_internet_gateway.g.dart';

/// Describes an egress-only internet gateway.
abstract class EgressOnlyInternetGateway
    with _i1.AWSEquatable<EgressOnlyInternetGateway>
    implements
        Built<EgressOnlyInternetGateway, EgressOnlyInternetGatewayBuilder> {
  /// Describes an egress-only internet gateway.
  factory EgressOnlyInternetGateway({
    List<_i2.InternetGatewayAttachment>? attachments,
    String? egressOnlyInternetGatewayId,
    List<_i3.Tag>? tags,
  }) {
    return _$EgressOnlyInternetGateway._(
      attachments: attachments == null ? null : _i4.BuiltList(attachments),
      egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes an egress-only internet gateway.
  factory EgressOnlyInternetGateway.build(
          [void Function(EgressOnlyInternetGatewayBuilder) updates]) =
      _$EgressOnlyInternetGateway;

  const EgressOnlyInternetGateway._();

  static const List<_i5.SmithySerializer> serializers = [
    EgressOnlyInternetGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EgressOnlyInternetGatewayBuilder b) {}

  /// Information about the attachment of the egress-only internet gateway.
  _i4.BuiltList<_i2.InternetGatewayAttachment>? get attachments;

  /// The ID of the egress-only internet gateway.
  String? get egressOnlyInternetGatewayId;

  /// The tags assigned to the egress-only internet gateway.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        attachments,
        egressOnlyInternetGatewayId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EgressOnlyInternetGateway');
    helper.add(
      'attachments',
      attachments,
    );
    helper.add(
      'egressOnlyInternetGatewayId',
      egressOnlyInternetGatewayId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class EgressOnlyInternetGatewayEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<EgressOnlyInternetGateway> {
  const EgressOnlyInternetGatewayEc2QuerySerializer()
      : super('EgressOnlyInternetGateway');

  @override
  Iterable<Type> get types => const [
        EgressOnlyInternetGateway,
        _$EgressOnlyInternetGateway,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EgressOnlyInternetGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EgressOnlyInternetGatewayBuilder();
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
        case 'egressOnlyInternetGatewayId':
          if (value != null) {
            result.egressOnlyInternetGatewayId = (serializers.deserialize(
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
    final payload = (object as EgressOnlyInternetGateway);
    final result = <Object?>[
      const _i5.XmlElementName(
        'EgressOnlyInternetGatewayResponse',
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
    if (payload.egressOnlyInternetGatewayId != null) {
      result
        ..add(const _i5.XmlElementName('EgressOnlyInternetGatewayId'))
        ..add(serializers.serialize(
          payload.egressOnlyInternetGatewayId!,
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
