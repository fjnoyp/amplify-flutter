// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_event_window_association_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'instance_event_window_association_target.g.dart';

/// One or more targets associated with the event window.
abstract class InstanceEventWindowAssociationTarget
    with
        _i1.AWSEquatable<InstanceEventWindowAssociationTarget>
    implements
        Built<InstanceEventWindowAssociationTarget,
            InstanceEventWindowAssociationTargetBuilder> {
  /// One or more targets associated with the event window.
  factory InstanceEventWindowAssociationTarget({
    List<String>? instanceIds,
    List<_i2.Tag>? tags,
    List<String>? dedicatedHostIds,
  }) {
    return _$InstanceEventWindowAssociationTarget._(
      instanceIds: instanceIds == null ? null : _i3.BuiltList(instanceIds),
      tags: tags == null ? null : _i3.BuiltList(tags),
      dedicatedHostIds:
          dedicatedHostIds == null ? null : _i3.BuiltList(dedicatedHostIds),
    );
  }

  /// One or more targets associated with the event window.
  factory InstanceEventWindowAssociationTarget.build(
      [void Function(InstanceEventWindowAssociationTargetBuilder)
          updates]) = _$InstanceEventWindowAssociationTarget;

  const InstanceEventWindowAssociationTarget._();

  static const List<_i4.SmithySerializer> serializers = [
    InstanceEventWindowAssociationTargetEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowAssociationTargetBuilder b) {}

  /// The IDs of the instances associated with the event window.
  _i3.BuiltList<String>? get instanceIds;

  /// The instance tags associated with the event window. Any instances associated with the tags will be associated with the event window.
  _i3.BuiltList<_i2.Tag>? get tags;

  /// The IDs of the Dedicated Hosts associated with the event window.
  _i3.BuiltList<String>? get dedicatedHostIds;
  @override
  List<Object?> get props => [
        instanceIds,
        tags,
        dedicatedHostIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceEventWindowAssociationTarget');
    helper.add(
      'instanceIds',
      instanceIds,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'dedicatedHostIds',
      dedicatedHostIds,
    );
    return helper.toString();
  }
}

class InstanceEventWindowAssociationTargetEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<InstanceEventWindowAssociationTarget> {
  const InstanceEventWindowAssociationTargetEc2QuerySerializer()
      : super('InstanceEventWindowAssociationTarget');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowAssociationTarget,
        _$InstanceEventWindowAssociationTarget,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowAssociationTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowAssociationTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceIdSet':
          if (value != null) {
            result.instanceIds.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
          }
          break;
        case 'dedicatedHostIdSet':
          if (value != null) {
            result.dedicatedHostIds.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as InstanceEventWindowAssociationTarget);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InstanceEventWindowAssociationTargetResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceIds != null) {
      result
        ..add(const _i4.XmlElementName('InstanceIdSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    if (payload.dedicatedHostIds != null) {
      result
        ..add(const _i4.XmlElementName('DedicatedHostIdSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.dedicatedHostIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
