// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.placement_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_strategy.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spread_level.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'placement_group.g.dart';

/// Describes a placement group.
abstract class PlacementGroup
    with _i1.AWSEquatable<PlacementGroup>
    implements Built<PlacementGroup, PlacementGroupBuilder> {
  /// Describes a placement group.
  factory PlacementGroup({
    String? groupName,
    _i2.PlacementGroupState? state,
    _i3.PlacementStrategy? strategy,
    int? partitionCount,
    String? groupId,
    List<_i4.Tag>? tags,
    String? groupArn,
    _i5.SpreadLevel? spreadLevel,
  }) {
    partitionCount ??= 0;
    return _$PlacementGroup._(
      groupName: groupName,
      state: state,
      strategy: strategy,
      partitionCount: partitionCount,
      groupId: groupId,
      tags: tags == null ? null : _i6.BuiltList(tags),
      groupArn: groupArn,
      spreadLevel: spreadLevel,
    );
  }

  /// Describes a placement group.
  factory PlacementGroup.build([void Function(PlacementGroupBuilder) updates]) =
      _$PlacementGroup;

  const PlacementGroup._();

  static const List<_i7.SmithySerializer> serializers = [
    PlacementGroupEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PlacementGroupBuilder b) {
    b.partitionCount = 0;
  }

  /// The name of the placement group.
  String? get groupName;

  /// The state of the placement group.
  _i2.PlacementGroupState? get state;

  /// The placement strategy.
  _i3.PlacementStrategy? get strategy;

  /// The number of partitions. Valid only if **strategy** is set to `partition`.
  int get partitionCount;

  /// The ID of the placement group.
  String? get groupId;

  /// Any tags applied to the placement group.
  _i6.BuiltList<_i4.Tag>? get tags;

  /// The Amazon Resource Name (ARN) of the placement group.
  String? get groupArn;

  /// The spread level for the placement group. _Only_ Outpost placement groups can be spread across hosts.
  _i5.SpreadLevel? get spreadLevel;
  @override
  List<Object?> get props => [
        groupName,
        state,
        strategy,
        partitionCount,
        groupId,
        tags,
        groupArn,
        spreadLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PlacementGroup');
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'strategy',
      strategy,
    );
    helper.add(
      'partitionCount',
      partitionCount,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'groupArn',
      groupArn,
    );
    helper.add(
      'spreadLevel',
      spreadLevel,
    );
    return helper.toString();
  }
}

class PlacementGroupEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<PlacementGroup> {
  const PlacementGroupEc2QuerySerializer() : super('PlacementGroup');

  @override
  Iterable<Type> get types => const [
        PlacementGroup,
        _$PlacementGroup,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PlacementGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacementGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PlacementGroupState),
            ) as _i2.PlacementGroupState);
          }
          break;
        case 'strategy':
          if (value != null) {
            result.strategy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PlacementStrategy),
            ) as _i3.PlacementStrategy);
          }
          break;
        case 'partitionCount':
          result.partitionCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'groupId':
          if (value != null) {
            result.groupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i6.BuiltList<_i4.Tag>));
          }
          break;
        case 'groupArn':
          if (value != null) {
            result.groupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'spreadLevel':
          if (value != null) {
            result.spreadLevel = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.SpreadLevel),
            ) as _i5.SpreadLevel);
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
    final payload = (object as PlacementGroup);
    final result = <Object?>[
      const _i7.XmlElementName(
        'PlacementGroupResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groupName != null) {
      result
        ..add(const _i7.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.PlacementGroupState),
        ));
    }
    if (payload.strategy != null) {
      result
        ..add(const _i7.XmlElementName('Strategy'))
        ..add(serializers.serialize(
          payload.strategy!,
          specifiedType: const FullType.nullable(_i3.PlacementStrategy),
        ));
    }
    result
      ..add(const _i7.XmlElementName('PartitionCount'))
      ..add(serializers.serialize(
        payload.partitionCount,
        specifiedType: const FullType(int),
      ));
    if (payload.groupId != null) {
      result
        ..add(const _i7.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    if (payload.groupArn != null) {
      result
        ..add(const _i7.XmlElementName('GroupArn'))
        ..add(serializers.serialize(
          payload.groupArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spreadLevel != null) {
      result
        ..add(const _i7.XmlElementName('SpreadLevel'))
        ..add(serializers.serialize(
          payload.spreadLevel!,
          specifiedType: const FullType.nullable(_i5.SpreadLevel),
        ));
    }
    return result;
  }
}
