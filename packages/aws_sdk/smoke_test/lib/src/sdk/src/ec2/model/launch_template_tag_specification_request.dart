// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_tag_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/resource_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'launch_template_tag_specification_request.g.dart';

/// The tags specification for the resources that are created during instance launch.
abstract class LaunchTemplateTagSpecificationRequest
    with
        _i1.AWSEquatable<LaunchTemplateTagSpecificationRequest>
    implements
        Built<LaunchTemplateTagSpecificationRequest,
            LaunchTemplateTagSpecificationRequestBuilder> {
  /// The tags specification for the resources that are created during instance launch.
  factory LaunchTemplateTagSpecificationRequest({
    _i2.ResourceType? resourceType,
    List<_i3.Tag>? tags,
  }) {
    return _$LaunchTemplateTagSpecificationRequest._(
      resourceType: resourceType,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// The tags specification for the resources that are created during instance launch.
  factory LaunchTemplateTagSpecificationRequest.build(
      [void Function(LaunchTemplateTagSpecificationRequestBuilder)
          updates]) = _$LaunchTemplateTagSpecificationRequest;

  const LaunchTemplateTagSpecificationRequest._();

  static const List<_i5.SmithySerializer> serializers = [
    LaunchTemplateTagSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateTagSpecificationRequestBuilder b) {}

  /// The type of resource to tag.
  ///
  /// The `Valid Values` are all the resource types that can be tagged. However, when creating a launch template, you can specify tags for the following resource types only: `instance` | `volume` | `elastic-gpu` | `network-interface` | `spot-instances-request`
  ///
  /// To tag a resource after it has been created, see [CreateTags](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
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
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateTagSpecificationRequest');
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

class LaunchTemplateTagSpecificationRequestEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<LaunchTemplateTagSpecificationRequest> {
  const LaunchTemplateTagSpecificationRequestEc2QuerySerializer()
      : super('LaunchTemplateTagSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateTagSpecificationRequest,
        _$LaunchTemplateTagSpecificationRequest,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateTagSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateTagSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ResourceType':
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
    final payload = (object as LaunchTemplateTagSpecificationRequest);
    final result = <Object?>[
      const _i5.XmlElementName(
        'LaunchTemplateTagSpecificationRequestResponse',
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
