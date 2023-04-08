// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_tag_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'launch_template_tag_specification.g.dart';

/// The tags specification for the launch template.
abstract class LaunchTemplateTagSpecification
    with
        _i1.AWSEquatable<LaunchTemplateTagSpecification>
    implements
        Built<LaunchTemplateTagSpecification,
            LaunchTemplateTagSpecificationBuilder> {
  /// The tags specification for the launch template.
  factory LaunchTemplateTagSpecification({
    _i2.ResourceType? resourceType,
    List<_i3.Tag>? tags,
  }) {
    return _$LaunchTemplateTagSpecification._(
      resourceType: resourceType,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// The tags specification for the launch template.
  factory LaunchTemplateTagSpecification.build(
          [void Function(LaunchTemplateTagSpecificationBuilder) updates]) =
      _$LaunchTemplateTagSpecification;

  const LaunchTemplateTagSpecification._();

  static const List<_i5.SmithySerializer> serializers = [
    LaunchTemplateTagSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateTagSpecificationBuilder b) {}

  /// The type of resource to tag.
  _i2.ResourceType? get resourceType;

  /// The tags for the resource.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        resourceType,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateTagSpecification');
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

class LaunchTemplateTagSpecificationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<LaunchTemplateTagSpecification> {
  const LaunchTemplateTagSpecificationEc2QuerySerializer()
      : super('LaunchTemplateTagSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateTagSpecification,
        _$LaunchTemplateTagSpecification,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateTagSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateTagSpecificationBuilder();
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
    final payload = (object as LaunchTemplateTagSpecification);
    final result = <Object?>[
      const _i5.XmlElementName(
        'LaunchTemplateTagSpecificationResponse',
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
