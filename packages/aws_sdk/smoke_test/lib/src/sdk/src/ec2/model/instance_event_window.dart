// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_event_window; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_association_target.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'instance_event_window.g.dart';

/// The event window.
abstract class InstanceEventWindow
    with _i1.AWSEquatable<InstanceEventWindow>
    implements Built<InstanceEventWindow, InstanceEventWindowBuilder> {
  /// The event window.
  factory InstanceEventWindow({
    String? instanceEventWindowId,
    List<_i2.InstanceEventWindowTimeRange>? timeRanges,
    String? name,
    String? cronExpression,
    _i3.InstanceEventWindowAssociationTarget? associationTarget,
    _i4.InstanceEventWindowState? state,
    List<_i5.Tag>? tags,
  }) {
    return _$InstanceEventWindow._(
      instanceEventWindowId: instanceEventWindowId,
      timeRanges: timeRanges == null ? null : _i6.BuiltList(timeRanges),
      name: name,
      cronExpression: cronExpression,
      associationTarget: associationTarget,
      state: state,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// The event window.
  factory InstanceEventWindow.build(
          [void Function(InstanceEventWindowBuilder) updates]) =
      _$InstanceEventWindow;

  const InstanceEventWindow._();

  static const List<_i7.SmithySerializer> serializers = [
    InstanceEventWindowEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowBuilder b) {}

  /// The ID of the event window.
  String? get instanceEventWindowId;

  /// One or more time ranges defined for the event window.
  _i6.BuiltList<_i2.InstanceEventWindowTimeRange>? get timeRanges;

  /// The name of the event window.
  String? get name;

  /// The cron expression defined for the event window.
  String? get cronExpression;

  /// One or more targets associated with the event window.
  _i3.InstanceEventWindowAssociationTarget? get associationTarget;

  /// The current state of the event window.
  _i4.InstanceEventWindowState? get state;

  /// The instance tags associated with the event window.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  List<Object?> get props => [
        instanceEventWindowId,
        timeRanges,
        name,
        cronExpression,
        associationTarget,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceEventWindow');
    helper.add(
      'instanceEventWindowId',
      instanceEventWindowId,
    );
    helper.add(
      'timeRanges',
      timeRanges,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'cronExpression',
      cronExpression,
    );
    helper.add(
      'associationTarget',
      associationTarget,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class InstanceEventWindowEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<InstanceEventWindow> {
  const InstanceEventWindowEc2QuerySerializer() : super('InstanceEventWindow');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindow,
        _$InstanceEventWindow,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindow deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceEventWindowId':
          if (value != null) {
            result.instanceEventWindowId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'timeRangeSet':
          if (value != null) {
            result.timeRanges.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.InstanceEventWindowTimeRange)],
              ),
            ) as _i6.BuiltList<_i2.InstanceEventWindowTimeRange>));
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'cronExpression':
          if (value != null) {
            result.cronExpression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'associationTarget':
          if (value != null) {
            result.associationTarget.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.InstanceEventWindowAssociationTarget),
            ) as _i3.InstanceEventWindowAssociationTarget));
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.InstanceEventWindowState),
            ) as _i4.InstanceEventWindowState);
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
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as InstanceEventWindow);
    final result = <Object?>[
      const _i7.XmlElementName(
        'InstanceEventWindowResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceEventWindowId != null) {
      result
        ..add(const _i7.XmlElementName('InstanceEventWindowId'))
        ..add(serializers.serialize(
          payload.instanceEventWindowId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timeRanges != null) {
      result
        ..add(const _i7.XmlElementName('TimeRangeSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.timeRanges!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.InstanceEventWindowTimeRange)],
          ),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i7.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.cronExpression != null) {
      result
        ..add(const _i7.XmlElementName('CronExpression'))
        ..add(serializers.serialize(
          payload.cronExpression!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.associationTarget != null) {
      result
        ..add(const _i7.XmlElementName('AssociationTarget'))
        ..add(serializers.serialize(
          payload.associationTarget!,
          specifiedType:
              const FullType(_i3.InstanceEventWindowAssociationTarget),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i4.InstanceEventWindowState),
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
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
