// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.tag_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart' as _i2;

part 'tag_description.g.dart';

/// Describes a tag.
abstract class TagDescription
    with _i1.AWSEquatable<TagDescription>
    implements Built<TagDescription, TagDescriptionBuilder> {
  /// Describes a tag.
  factory TagDescription({
    String? key,
    String? resourceId,
    _i2.ResourceType? resourceType,
    String? value,
  }) {
    return _$TagDescription._(
      key: key,
      resourceId: resourceId,
      resourceType: resourceType,
      value: value,
    );
  }

  /// Describes a tag.
  factory TagDescription.build([void Function(TagDescriptionBuilder) updates]) =
      _$TagDescription;

  const TagDescription._();

  static const List<_i3.SmithySerializer> serializers = [
    TagDescriptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagDescriptionBuilder b) {}

  /// The tag key.
  String? get key;

  /// The ID of the resource.
  String? get resourceId;

  /// The resource type.
  _i2.ResourceType? get resourceType;

  /// The tag value.
  String? get value;
  @override
  List<Object?> get props => [
        key,
        resourceId,
        resourceType,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagDescription');
    helper.add(
      'key',
      key,
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
      'value',
      value,
    );
    return helper.toString();
  }
}

class TagDescriptionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TagDescription> {
  const TagDescriptionEc2QuerySerializer() : super('TagDescription');

  @override
  Iterable<Type> get types => const [
        TagDescription,
        _$TagDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TagDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'key':
          if (value != null) {
            result.key = (serializers.deserialize(
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
              specifiedType: const FullType(_i2.ResourceType),
            ) as _i2.ResourceType);
          }
          break;
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
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
    final payload = (object as TagDescription);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TagDescriptionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.key != null) {
      result
        ..add(const _i3.XmlElementName('Key'))
        ..add(serializers.serialize(
          payload.key!,
          specifiedType: const FullType(String),
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
    if (payload.resourceType != null) {
      result
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType.nullable(_i2.ResourceType),
        ));
    }
    if (payload.value != null) {
      result
        ..add(const _i3.XmlElementName('Value'))
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
