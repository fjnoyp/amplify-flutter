// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.classic_link_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'classic_link_instance.g.dart';

/// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
///
/// Describes a linked EC2-Classic instance.
abstract class ClassicLinkInstance
    with _i1.AWSEquatable<ClassicLinkInstance>
    implements Built<ClassicLinkInstance, ClassicLinkInstanceBuilder> {
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Describes a linked EC2-Classic instance.
  factory ClassicLinkInstance({
    List<_i2.GroupIdentifier>? groups,
    String? instanceId,
    List<_i3.Tag>? tags,
    String? vpcId,
  }) {
    return _$ClassicLinkInstance._(
      groups: groups == null ? null : _i4.BuiltList(groups),
      instanceId: instanceId,
      tags: tags == null ? null : _i4.BuiltList(tags),
      vpcId: vpcId,
    );
  }

  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Describes a linked EC2-Classic instance.
  factory ClassicLinkInstance.build(
          [void Function(ClassicLinkInstanceBuilder) updates]) =
      _$ClassicLinkInstance;

  const ClassicLinkInstance._();

  static const List<_i5.SmithySerializer> serializers = [
    ClassicLinkInstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClassicLinkInstanceBuilder b) {}

  /// A list of security groups.
  _i4.BuiltList<_i2.GroupIdentifier>? get groups;

  /// The ID of the instance.
  String? get instanceId;

  /// Any tags assigned to the instance.
  _i4.BuiltList<_i3.Tag>? get tags;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        groups,
        instanceId,
        tags,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClassicLinkInstance');
    helper.add(
      'groups',
      groups,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class ClassicLinkInstanceEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ClassicLinkInstance> {
  const ClassicLinkInstanceEc2QuerySerializer() : super('ClassicLinkInstance');

  @override
  Iterable<Type> get types => const [
        ClassicLinkInstance,
        _$ClassicLinkInstance,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClassicLinkInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassicLinkInstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupSet':
          if (value != null) {
            result.groups.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.GroupIdentifier)],
              ),
            ) as _i4.BuiltList<_i2.GroupIdentifier>));
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
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
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
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
    final payload = (object as ClassicLinkInstance);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ClassicLinkInstanceResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groups != null) {
      result
        ..add(const _i5.XmlElementName('GroupSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.GroupIdentifier)],
          ),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i5.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
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
    if (payload.vpcId != null) {
      result
        ..add(const _i5.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
