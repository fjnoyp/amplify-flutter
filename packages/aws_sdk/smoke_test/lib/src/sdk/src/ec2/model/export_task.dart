// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_state.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_export_details.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'export_task.g.dart';

/// Describes an export instance task.
abstract class ExportTask
    with _i1.AWSEquatable<ExportTask>
    implements Built<ExportTask, ExportTaskBuilder> {
  /// Describes an export instance task.
  factory ExportTask({
    String? description,
    String? exportTaskId,
    _i2.ExportToS3Task? exportToS3Task,
    _i3.InstanceExportDetails? instanceExportDetails,
    _i4.ExportTaskState? state,
    String? statusMessage,
    List<_i5.Tag>? tags,
  }) {
    return _$ExportTask._(
      description: description,
      exportTaskId: exportTaskId,
      exportToS3Task: exportToS3Task,
      instanceExportDetails: instanceExportDetails,
      state: state,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// Describes an export instance task.
  factory ExportTask.build([void Function(ExportTaskBuilder) updates]) =
      _$ExportTask;

  const ExportTask._();

  static const List<_i7.SmithySerializer> serializers = [
    ExportTaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTaskBuilder b) {}

  /// A description of the resource being exported.
  String? get description;

  /// The ID of the export task.
  String? get exportTaskId;

  /// Information about the export task.
  _i2.ExportToS3Task? get exportToS3Task;

  /// Information about the instance to export.
  _i3.InstanceExportDetails? get instanceExportDetails;

  /// The state of the export task.
  _i4.ExportTaskState? get state;

  /// The status message related to the export task.
  String? get statusMessage;

  /// The tags for the export task.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  List<Object?> get props => [
        description,
        exportTaskId,
        exportToS3Task,
        instanceExportDetails,
        state,
        statusMessage,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportTask');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'exportTaskId',
      exportTaskId,
    );
    helper.add(
      'exportToS3Task',
      exportToS3Task,
    );
    helper.add(
      'instanceExportDetails',
      instanceExportDetails,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ExportTaskEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<ExportTask> {
  const ExportTaskEc2QuerySerializer() : super('ExportTask');

  @override
  Iterable<Type> get types => const [
        ExportTask,
        _$ExportTask,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'exportTaskId':
          if (value != null) {
            result.exportTaskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'exportToS3':
          if (value != null) {
            result.exportToS3Task.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportToS3Task),
            ) as _i2.ExportToS3Task));
          }
          break;
        case 'instanceExport':
          if (value != null) {
            result.instanceExportDetails.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InstanceExportDetails),
            ) as _i3.InstanceExportDetails));
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ExportTaskState),
            ) as _i4.ExportTaskState);
          }
          break;
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
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
    final payload = (object as ExportTask);
    final result = <Object?>[
      const _i7.XmlElementName(
        'ExportTaskResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportTaskId != null) {
      result
        ..add(const _i7.XmlElementName('ExportTaskId'))
        ..add(serializers.serialize(
          payload.exportTaskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportToS3Task != null) {
      result
        ..add(const _i7.XmlElementName('ExportToS3'))
        ..add(serializers.serialize(
          payload.exportToS3Task!,
          specifiedType: const FullType(_i2.ExportToS3Task),
        ));
    }
    if (payload.instanceExportDetails != null) {
      result
        ..add(const _i7.XmlElementName('InstanceExport'))
        ..add(serializers.serialize(
          payload.instanceExportDetails!,
          specifiedType: const FullType(_i3.InstanceExportDetails),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i4.ExportTaskState),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i7.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
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
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
