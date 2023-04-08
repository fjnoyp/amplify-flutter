// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.store_image_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'store_image_task_result.g.dart';

/// The information about the AMI store task, including the progress of the task.
abstract class StoreImageTaskResult
    with _i1.AWSEquatable<StoreImageTaskResult>
    implements Built<StoreImageTaskResult, StoreImageTaskResultBuilder> {
  /// The information about the AMI store task, including the progress of the task.
  factory StoreImageTaskResult({
    String? amiId,
    DateTime? taskStartTime,
    String? bucket,
    String? s3ObjectKey,
    int? progressPercentage,
    String? storeTaskState,
    String? storeTaskFailureReason,
  }) {
    progressPercentage ??= 0;
    return _$StoreImageTaskResult._(
      amiId: amiId,
      taskStartTime: taskStartTime,
      bucket: bucket,
      s3ObjectKey: s3ObjectKey,
      progressPercentage: progressPercentage,
      storeTaskState: storeTaskState,
      storeTaskFailureReason: storeTaskFailureReason,
    );
  }

  /// The information about the AMI store task, including the progress of the task.
  factory StoreImageTaskResult.build(
          [void Function(StoreImageTaskResultBuilder) updates]) =
      _$StoreImageTaskResult;

  const StoreImageTaskResult._();

  static const List<_i2.SmithySerializer> serializers = [
    StoreImageTaskResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StoreImageTaskResultBuilder b) {
    b.progressPercentage = 0;
  }

  /// The ID of the AMI that is being stored.
  String? get amiId;

  /// The time the task started.
  DateTime? get taskStartTime;

  /// The name of the Amazon S3 bucket that contains the stored AMI object.
  String? get bucket;

  /// The name of the stored AMI object in the bucket.
  String? get s3ObjectKey;

  /// The progress of the task as a percentage.
  int get progressPercentage;

  /// The state of the store task (`InProgress`, `Completed`, or `Failed`).
  String? get storeTaskState;

  /// If the tasks fails, the reason for the failure is returned. If the task succeeds, `null` is returned.
  String? get storeTaskFailureReason;
  @override
  List<Object?> get props => [
        amiId,
        taskStartTime,
        bucket,
        s3ObjectKey,
        progressPercentage,
        storeTaskState,
        storeTaskFailureReason,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StoreImageTaskResult');
    helper.add(
      'amiId',
      amiId,
    );
    helper.add(
      'taskStartTime',
      taskStartTime,
    );
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      's3ObjectKey',
      s3ObjectKey,
    );
    helper.add(
      'progressPercentage',
      progressPercentage,
    );
    helper.add(
      'storeTaskState',
      storeTaskState,
    );
    helper.add(
      'storeTaskFailureReason',
      storeTaskFailureReason,
    );
    return helper.toString();
  }
}

class StoreImageTaskResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<StoreImageTaskResult> {
  const StoreImageTaskResultEc2QuerySerializer()
      : super('StoreImageTaskResult');

  @override
  Iterable<Type> get types => const [
        StoreImageTaskResult,
        _$StoreImageTaskResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StoreImageTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoreImageTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'amiId':
          if (value != null) {
            result.amiId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'taskStartTime':
          if (value != null) {
            result.taskStartTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'bucket':
          if (value != null) {
            result.bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 's3objectKey':
          if (value != null) {
            result.s3ObjectKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'progressPercentage':
          result.progressPercentage = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'storeTaskState':
          if (value != null) {
            result.storeTaskState = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'storeTaskFailureReason':
          if (value != null) {
            result.storeTaskFailureReason = (serializers.deserialize(
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
    final payload = (object as StoreImageTaskResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'StoreImageTaskResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.amiId != null) {
      result
        ..add(const _i2.XmlElementName('AmiId'))
        ..add(serializers.serialize(
          payload.amiId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.taskStartTime != null) {
      result
        ..add(const _i2.XmlElementName('TaskStartTime'))
        ..add(serializers.serialize(
          payload.taskStartTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.bucket != null) {
      result
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          payload.bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3ObjectKey != null) {
      result
        ..add(const _i2.XmlElementName('S3objectKey'))
        ..add(serializers.serialize(
          payload.s3ObjectKey!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('ProgressPercentage'))
      ..add(serializers.serialize(
        payload.progressPercentage,
        specifiedType: const FullType(int),
      ));
    if (payload.storeTaskState != null) {
      result
        ..add(const _i2.XmlElementName('StoreTaskState'))
        ..add(serializers.serialize(
          payload.storeTaskState!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.storeTaskFailureReason != null) {
      result
        ..add(const _i2.XmlElementName('StoreTaskFailureReason'))
        ..add(serializers.serialize(
          payload.storeTaskFailureReason!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
