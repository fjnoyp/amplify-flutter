// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_image_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'export_image_task.g.dart';

/// Describes an export image task.
abstract class ExportImageTask
    with _i1.AWSEquatable<ExportImageTask>
    implements Built<ExportImageTask, ExportImageTaskBuilder> {
  /// Describes an export image task.
  factory ExportImageTask({
    String? description,
    String? exportImageTaskId,
    String? imageId,
    String? progress,
    _i2.ExportTaskS3Location? s3ExportLocation,
    String? status,
    String? statusMessage,
    List<_i3.Tag>? tags,
  }) {
    return _$ExportImageTask._(
      description: description,
      exportImageTaskId: exportImageTaskId,
      imageId: imageId,
      progress: progress,
      s3ExportLocation: s3ExportLocation,
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes an export image task.
  factory ExportImageTask.build(
      [void Function(ExportImageTaskBuilder) updates]) = _$ExportImageTask;

  const ExportImageTask._();

  static const List<_i5.SmithySerializer> serializers = [
    ExportImageTaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportImageTaskBuilder b) {}

  /// A description of the image being exported.
  String? get description;

  /// The ID of the export image task.
  String? get exportImageTaskId;

  /// The ID of the image.
  String? get imageId;

  /// The percent complete of the export image task.
  String? get progress;

  /// Information about the destination Amazon S3 bucket.
  _i2.ExportTaskS3Location? get s3ExportLocation;

  /// The status of the export image task. The possible values are `active`, `completed`, `deleting`, and `deleted`.
  String? get status;

  /// The status message for the export image task.
  String? get statusMessage;

  /// Any tags assigned to the export image task.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        description,
        exportImageTaskId,
        imageId,
        progress,
        s3ExportLocation,
        status,
        statusMessage,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportImageTask');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'exportImageTaskId',
      exportImageTaskId,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'progress',
      progress,
    );
    helper.add(
      's3ExportLocation',
      s3ExportLocation,
    );
    helper.add(
      'status',
      status,
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

class ExportImageTaskEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ExportImageTask> {
  const ExportImageTaskEc2QuerySerializer() : super('ExportImageTask');

  @override
  Iterable<Type> get types => const [
        ExportImageTask,
        _$ExportImageTask,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportImageTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportImageTaskBuilder();
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
        case 'exportImageTaskId':
          if (value != null) {
            result.exportImageTaskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'imageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'progress':
          if (value != null) {
            result.progress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 's3ExportLocation':
          if (value != null) {
            result.s3ExportLocation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportTaskS3Location),
            ) as _i2.ExportTaskS3Location));
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ExportImageTask);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ExportImageTaskResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.exportImageTaskId != null) {
      result
        ..add(const _i5.XmlElementName('ExportImageTaskId'))
        ..add(serializers.serialize(
          payload.exportImageTaskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i5.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.progress != null) {
      result
        ..add(const _i5.XmlElementName('Progress'))
        ..add(serializers.serialize(
          payload.progress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3ExportLocation != null) {
      result
        ..add(const _i5.XmlElementName('S3ExportLocation'))
        ..add(serializers.serialize(
          payload.s3ExportLocation!,
          specifiedType: const FullType(_i2.ExportTaskS3Location),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i5.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i5.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
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
