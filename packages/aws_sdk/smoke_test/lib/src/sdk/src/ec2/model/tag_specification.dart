// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.tag_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'tag_specification.g.dart';

/// The tags to apply to a resource when the resource is being created.
///
/// The `Valid Values` lists all the resource types that can be tagged. However, the action you're using might not support tagging all of these resource types. If you try to tag a resource type that is unsupported for the action you're using, you'll get an error.
abstract class TagSpecification
    with _i1.AWSEquatable<TagSpecification>
    implements Built<TagSpecification, TagSpecificationBuilder> {
  /// The tags to apply to a resource when the resource is being created.
  ///
  /// The `Valid Values` lists all the resource types that can be tagged. However, the action you're using might not support tagging all of these resource types. If you try to tag a resource type that is unsupported for the action you're using, you'll get an error.
  factory TagSpecification({
    _i2.ResourceType? resourceType,
    List<_i3.Tag>? tags,
  }) {
    return _$TagSpecification._(
      resourceType: resourceType,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// The tags to apply to a resource when the resource is being created.
  ///
  /// The `Valid Values` lists all the resource types that can be tagged. However, the action you're using might not support tagging all of these resource types. If you try to tag a resource type that is unsupported for the action you're using, you'll get an error.
  factory TagSpecification.build(
      [void Function(TagSpecificationBuilder) updates]) = _$TagSpecification;

  const TagSpecification._();

  static const List<_i5.SmithySerializer> serializers = [
    TagSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagSpecificationBuilder b) {}

  /// The type of resource to tag on creation.
  _i2.ResourceType? get resourceType;

  /// The tags to apply to the resource.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        resourceType,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagSpecification');
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TagSpecificationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<TagSpecification> {
  const TagSpecificationEc2QuerySerializer() : super('TagSpecification');

  @override
  Iterable<Type> get types => const [
        TagSpecification,
        _$TagSpecification,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TagSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceType),
            ) as _i2.ResourceType);
          }
          break;
        case 'Tag':
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
    final payload = (object as TagSpecification);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TagSpecificationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.resourceType != null) {
      result
        ..add(const _i5.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType.nullable(_i2.ResourceType),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('Tag'))
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
