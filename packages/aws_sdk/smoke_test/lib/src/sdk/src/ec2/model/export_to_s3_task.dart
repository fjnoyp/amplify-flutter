// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_to_s3_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/container_format.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart' as _i3;

part 'export_to_s3_task.g.dart';

/// Describes the format and location for the export task.
abstract class ExportToS3Task
    with _i1.AWSEquatable<ExportToS3Task>
    implements Built<ExportToS3Task, ExportToS3TaskBuilder> {
  /// Describes the format and location for the export task.
  factory ExportToS3Task({
    _i2.ContainerFormat? containerFormat,
    _i3.DiskImageFormat? diskImageFormat,
    String? s3Bucket,
    String? s3Key,
  }) {
    return _$ExportToS3Task._(
      containerFormat: containerFormat,
      diskImageFormat: diskImageFormat,
      s3Bucket: s3Bucket,
      s3Key: s3Key,
    );
  }

  /// Describes the format and location for the export task.
  factory ExportToS3Task.build([void Function(ExportToS3TaskBuilder) updates]) =
      _$ExportToS3Task;

  const ExportToS3Task._();

  static const List<_i4.SmithySerializer> serializers = [
    ExportToS3TaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportToS3TaskBuilder b) {}

  /// The container format used to combine disk images with metadata (such as OVF). If absent, only the disk image is exported.
  _i2.ContainerFormat? get containerFormat;

  /// The format for the exported image.
  _i3.DiskImageFormat? get diskImageFormat;

  /// The Amazon S3 bucket for the destination image. The destination bucket must exist and have an access control list (ACL) attached that specifies the Region-specific canonical account ID for the `Grantee`. For more information about the ACL to your S3 bucket, see [Prerequisites](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html#vmexport-prerequisites) in the VM Import/Export User Guide.
  String? get s3Bucket;

  /// The encryption key for your S3 bucket.
  String? get s3Key;
  @override
  List<Object?> get props => [
        containerFormat,
        diskImageFormat,
        s3Bucket,
        s3Key,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportToS3Task');
    helper.add(
      'containerFormat',
      containerFormat,
    );
    helper.add(
      'diskImageFormat',
      diskImageFormat,
    );
    helper.add(
      's3Bucket',
      s3Bucket,
    );
    helper.add(
      's3Key',
      s3Key,
    );
    return helper.toString();
  }
}

class ExportToS3TaskEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ExportToS3Task> {
  const ExportToS3TaskEc2QuerySerializer() : super('ExportToS3Task');

  @override
  Iterable<Type> get types => const [
        ExportToS3Task,
        _$ExportToS3Task,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportToS3Task deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportToS3TaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'containerFormat':
          if (value != null) {
            result.containerFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ContainerFormat),
            ) as _i2.ContainerFormat);
          }
          break;
        case 'diskImageFormat':
          if (value != null) {
            result.diskImageFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DiskImageFormat),
            ) as _i3.DiskImageFormat);
          }
          break;
        case 's3Bucket':
          if (value != null) {
            result.s3Bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 's3Key':
          if (value != null) {
            result.s3Key = (serializers.deserialize(
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
    final payload = (object as ExportToS3Task);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ExportToS3TaskResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.containerFormat != null) {
      result
        ..add(const _i4.XmlElementName('ContainerFormat'))
        ..add(serializers.serialize(
          payload.containerFormat!,
          specifiedType: const FullType.nullable(_i2.ContainerFormat),
        ));
    }
    if (payload.diskImageFormat != null) {
      result
        ..add(const _i4.XmlElementName('DiskImageFormat'))
        ..add(serializers.serialize(
          payload.diskImageFormat!,
          specifiedType: const FullType.nullable(_i3.DiskImageFormat),
        ));
    }
    if (payload.s3Bucket != null) {
      result
        ..add(const _i4.XmlElementName('S3Bucket'))
        ..add(serializers.serialize(
          payload.s3Bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3Key != null) {
      result
        ..add(const _i4.XmlElementName('S3Key'))
        ..add(serializers.serialize(
          payload.s3Key!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
