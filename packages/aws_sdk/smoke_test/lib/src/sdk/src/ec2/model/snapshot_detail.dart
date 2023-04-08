// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.snapshot_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket_details.dart'
    as _i2;

part 'snapshot_detail.g.dart';

/// Describes the snapshot created from the imported disk.
abstract class SnapshotDetail
    with _i1.AWSEquatable<SnapshotDetail>
    implements Built<SnapshotDetail, SnapshotDetailBuilder> {
  /// Describes the snapshot created from the imported disk.
  factory SnapshotDetail({
    String? description,
    String? deviceName,
    double? diskImageSize,
    String? format,
    String? progress,
    String? snapshotId,
    String? status,
    String? statusMessage,
    String? url,
    _i2.UserBucketDetails? userBucket,
  }) {
    diskImageSize ??= 0;
    return _$SnapshotDetail._(
      description: description,
      deviceName: deviceName,
      diskImageSize: diskImageSize,
      format: format,
      progress: progress,
      snapshotId: snapshotId,
      status: status,
      statusMessage: statusMessage,
      url: url,
      userBucket: userBucket,
    );
  }

  /// Describes the snapshot created from the imported disk.
  factory SnapshotDetail.build([void Function(SnapshotDetailBuilder) updates]) =
      _$SnapshotDetail;

  const SnapshotDetail._();

  static const List<_i3.SmithySerializer> serializers = [
    SnapshotDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotDetailBuilder b) {
    b.diskImageSize = 0;
  }

  /// A description for the snapshot.
  String? get description;

  /// The block device mapping for the snapshot.
  String? get deviceName;

  /// The size of the disk in the snapshot, in GiB.
  double get diskImageSize;

  /// The format of the disk image from which the snapshot is created.
  String? get format;

  /// The percentage of progress for the task.
  String? get progress;

  /// The snapshot ID of the disk being imported.
  String? get snapshotId;

  /// A brief status of the snapshot creation.
  String? get status;

  /// A detailed status message for the snapshot creation.
  String? get statusMessage;

  /// The URL used to access the disk image.
  String? get url;

  /// The Amazon S3 bucket for the disk image.
  _i2.UserBucketDetails? get userBucket;
  @override
  List<Object?> get props => [
        description,
        deviceName,
        diskImageSize,
        format,
        progress,
        snapshotId,
        status,
        statusMessage,
        url,
        userBucket,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotDetail');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'diskImageSize',
      diskImageSize,
    );
    helper.add(
      'format',
      format,
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

class SnapshotDetailEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SnapshotDetail> {
  const SnapshotDetailEc2QuerySerializer() : super('SnapshotDetail');

  @override
  Iterable<Type> get types => const [
        SnapshotDetail,
        _$SnapshotDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotDetailBuilder();
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
        case 'deviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
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
        case 'format':
          if (value != null) {
            result.format = (serializers.deserialize(
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
    final payload = (object as SnapshotDetail);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SnapshotDetailResponse',
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
    if (payload.deviceName != null) {
      result
        ..add(const _i3.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          payload.deviceName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('DiskImageSize'))
      ..add(serializers.serialize(
        payload.diskImageSize,
        specifiedType: const FullType(double),
      ));
    if (payload.format != null) {
      result
        ..add(const _i3.XmlElementName('Format'))
        ..add(serializers.serialize(
          payload.format!,
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
