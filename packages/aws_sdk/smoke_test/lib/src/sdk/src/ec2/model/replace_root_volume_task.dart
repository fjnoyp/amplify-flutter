// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.replace_root_volume_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'replace_root_volume_task.g.dart';

/// Information about a root volume replacement task.
abstract class ReplaceRootVolumeTask
    with _i1.AWSEquatable<ReplaceRootVolumeTask>
    implements Built<ReplaceRootVolumeTask, ReplaceRootVolumeTaskBuilder> {
  /// Information about a root volume replacement task.
  factory ReplaceRootVolumeTask({
    String? replaceRootVolumeTaskId,
    String? instanceId,
    _i2.ReplaceRootVolumeTaskState? taskState,
    String? startTime,
    String? completeTime,
    List<_i3.Tag>? tags,
  }) {
    return _$ReplaceRootVolumeTask._(
      replaceRootVolumeTaskId: replaceRootVolumeTaskId,
      instanceId: instanceId,
      taskState: taskState,
      startTime: startTime,
      completeTime: completeTime,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Information about a root volume replacement task.
  factory ReplaceRootVolumeTask.build(
          [void Function(ReplaceRootVolumeTaskBuilder) updates]) =
      _$ReplaceRootVolumeTask;

  const ReplaceRootVolumeTask._();

  static const List<_i5.SmithySerializer> serializers = [
    ReplaceRootVolumeTaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceRootVolumeTaskBuilder b) {}

  /// The ID of the root volume replacement task.
  String? get replaceRootVolumeTaskId;

  /// The ID of the instance for which the root volume replacement task was created.
  String? get instanceId;

  /// The state of the task. The task can be in one of the following states:
  ///
  /// *   `pending` \- the replacement volume is being created.
  ///
  /// *   `in-progress` \- the original volume is being detached and the replacement volume is being attached.
  ///
  /// *   `succeeded` \- the replacement volume has been successfully attached to the instance and the instance is available.
  ///
  /// *   `failing` \- the replacement task is in the process of failing.
  ///
  /// *   `failed` \- the replacement task has failed but the original root volume is still attached.
  ///
  /// *   `failing-detached` \- the replacement task is in the process of failing. The instance might have no root volume attached.
  ///
  /// *   `failed-detached` \- the replacement task has failed and the instance has no root volume attached.
  _i2.ReplaceRootVolumeTaskState? get taskState;

  /// The time the task was started.
  String? get startTime;

  /// The time the task completed.
  String? get completeTime;

  /// The tags assigned to the task.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        replaceRootVolumeTaskId,
        instanceId,
        taskState,
        startTime,
        completeTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReplaceRootVolumeTask');
    helper.add(
      'replaceRootVolumeTaskId',
      replaceRootVolumeTaskId,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'taskState',
      taskState,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'completeTime',
      completeTime,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ReplaceRootVolumeTaskEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ReplaceRootVolumeTask> {
  const ReplaceRootVolumeTaskEc2QuerySerializer()
      : super('ReplaceRootVolumeTask');

  @override
  Iterable<Type> get types => const [
        ReplaceRootVolumeTask,
        _$ReplaceRootVolumeTask,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceRootVolumeTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceRootVolumeTaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'replaceRootVolumeTaskId':
          if (value != null) {
            result.replaceRootVolumeTaskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'taskState':
          if (value != null) {
            result.taskState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReplaceRootVolumeTaskState),
            ) as _i2.ReplaceRootVolumeTaskState);
          }
          break;
        case 'startTime':
          if (value != null) {
            result.startTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'completeTime':
          if (value != null) {
            result.completeTime = (serializers.deserialize(
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
    final payload = (object as ReplaceRootVolumeTask);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ReplaceRootVolumeTaskResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.replaceRootVolumeTaskId != null) {
      result
        ..add(const _i5.XmlElementName('ReplaceRootVolumeTaskId'))
        ..add(serializers.serialize(
          payload.replaceRootVolumeTaskId!,
          specifiedType: const FullType(String),
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
    if (payload.taskState != null) {
      result
        ..add(const _i5.XmlElementName('TaskState'))
        ..add(serializers.serialize(
          payload.taskState!,
          specifiedType:
              const FullType.nullable(_i2.ReplaceRootVolumeTaskState),
        ));
    }
    if (payload.startTime != null) {
      result
        ..add(const _i5.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          payload.startTime!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.completeTime != null) {
      result
        ..add(const _i5.XmlElementName('CompleteTime'))
        ..add(serializers.serialize(
          payload.completeTime!,
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
