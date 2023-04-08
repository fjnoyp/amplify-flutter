// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.snapshot_task_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket_details.dart'
    as _i2;

part 'snapshot_task_detail.g.dart';

/// Details about the import snapshot task.
abstract class SnapshotTaskDetail
    with _i1.AWSEquatable<SnapshotTaskDetail>
    implements Built<SnapshotTaskDetail, SnapshotTaskDetailBuilder> {
  /// Details about the import snapshot task.
  factory SnapshotTaskDetail({
    String? description,
    double? diskImageSize,
    bool? encrypted,
    String? format,
    String? kmsKeyId,
    String? progress,
    String? snapshotId,
    String? status,
    String? statusMessage,
    String? url,
    _i2.UserBucketDetails? userBucket,
  }) {
    diskImageSize ??= 0;
    encrypted ??= false;
    return _$SnapshotTaskDetail._(
      description: description,
      diskImageSize: diskImageSize,
      encrypted: encrypted,
      format: format,
      kmsKeyId: kmsKeyId,
      progress: progress,
      snapshotId: snapshotId,
      status: status,
      statusMessage: statusMessage,
      url: url,
      userBucket: userBucket,
    );
  }

  /// Details about the import snapshot task.
  factory SnapshotTaskDetail.build(
          [void Function(SnapshotTaskDetailBuilder) updates]) =
      _$SnapshotTaskDetail;

  const SnapshotTaskDetail._();

  static const List<_i3.SmithySerializer> serializers = [
    SnapshotTaskDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotTaskDetailBuilder b) {
    b.diskImageSize = 0;
    b.encrypted = false;
  }

  /// The description of the snapshot.
  String? get description;

  /// The size of the disk in the snapshot, in GiB.
  double get diskImageSize;

  /// Indicates whether the snapshot is encrypted.
  bool get encrypted;

  /// The format of the disk image from which the snapshot is created.
  String? get format;

  /// The identifier for the KMS key that was used to create the encrypted snapshot.
  String? get kmsKeyId;

  /// The percentage of completion for the import snapshot task.
  String? get progress;

  /// The snapshot ID of the disk being imported.
  String? get snapshotId;

  /// A brief status for the import snapshot task.
  String? get status;

  /// A detailed status message for the import snapshot task.
  String? get statusMessage;

  /// The URL of the disk image from which the snapshot is created.
  String? get url;

  /// The Amazon S3 bucket for the disk image.
  _i2.UserBucketDetails? get userBucket;
  @override
  List<Object?> get props => [
        description,
        diskImageSize,
        encrypted,
        format,
        kmsKeyId,
        progress,
        snapshotId,
        status,
        statusMessage,
        url,
        userBucket,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotTaskDetail');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'diskImageSize',
      diskImageSize,
    );
    helper.add(
      'encrypted',
      encrypted,
    );
    helper.add(
      'format',
      format,
    );
    helper.add(
      'kmsKeyId',
      kmsKeyId,
    );
    helper.add(
      'progress',
      progress,
    );
    helper.add(
      'snapshotId',
      snapshotId,
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
      'url',
      url,
    );
    helper.add(
      'userBucket',
      userBucket,
    );
    return helper.toString();
  }
}

class SnapshotTaskDetailEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SnapshotTaskDetail> {
  const SnapshotTaskDetailEc2QuerySerializer() : super('SnapshotTaskDetail');

  @override
  Iterable<Type> get types => const [
        SnapshotTaskDetail,
        _$SnapshotTaskDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotTaskDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotTaskDetailBuilder();
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
        case 'diskImageSize':
          result.diskImageSize = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'format':
          if (value != null) {
            result.format = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'kmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
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
        case 'snapshotId':
          if (value != null) {
            result.snapshotId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'url':
          if (value != null) {
            result.url = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'userBucket':
          if (value != null) {
            result.userBucket.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.UserBucketDetails),
            ) as _i2.UserBucketDetails));
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
    final payload = (object as SnapshotTaskDetail);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SnapshotTaskDetailResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('DiskImageSize'))
      ..add(serializers.serialize(
        payload.diskImageSize,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i3.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    if (payload.format != null) {
      result
        ..add(const _i3.XmlElementName('Format'))
        ..add(serializers.serialize(
          payload.format!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i3.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.progress != null) {
      result
        ..add(const _i3.XmlElementName('Progress'))
        ..add(serializers.serialize(
          payload.progress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.snapshotId != null) {
      result
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.url != null) {
      result
        ..add(const _i3.XmlElementName('Url'))
        ..add(serializers.serialize(
          payload.url!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userBucket != null) {
      result
        ..add(const _i3.XmlElementName('UserBucket'))
        ..add(serializers.serialize(
          payload.userBucket!,
          specifiedType: const FullType(_i2.UserBucketDetails),
        ));
    }
    return result;
  }
}
