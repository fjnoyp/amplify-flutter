// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.snapshot_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'snapshot_info.g.dart';

/// Information about a snapshot.
abstract class SnapshotInfo
    with _i1.AWSEquatable<SnapshotInfo>
    implements Built<SnapshotInfo, SnapshotInfoBuilder> {
  /// Information about a snapshot.
  factory SnapshotInfo({
    String? description,
    List<_i2.Tag>? tags,
    bool? encrypted,
    String? volumeId,
    _i3.SnapshotState? state,
    int? volumeSize,
    DateTime? startTime,
    String? progress,
    String? ownerId,
    String? snapshotId,
    String? outpostArn,
  }) {
    encrypted ??= false;
    volumeSize ??= 0;
    return _$SnapshotInfo._(
      description: description,
      tags: tags == null ? null : _i4.BuiltList(tags),
      encrypted: encrypted,
      volumeId: volumeId,
      state: state,
      volumeSize: volumeSize,
      startTime: startTime,
      progress: progress,
      ownerId: ownerId,
      snapshotId: snapshotId,
      outpostArn: outpostArn,
    );
  }

  /// Information about a snapshot.
  factory SnapshotInfo.build([void Function(SnapshotInfoBuilder) updates]) =
      _$SnapshotInfo;

  const SnapshotInfo._();

  static const List<_i5.SmithySerializer> serializers = [
    SnapshotInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotInfoBuilder b) {
    b.encrypted = false;
    b.volumeSize = 0;
  }

  /// Description specified by the CreateSnapshotRequest that has been applied to all snapshots.
  String? get description;

  /// Tags associated with this snapshot.
  _i4.BuiltList<_i2.Tag>? get tags;

  /// Indicates whether the snapshot is encrypted.
  bool get encrypted;

  /// Source volume from which this snapshot was created.
  String? get volumeId;

  /// Current state of the snapshot.
  _i3.SnapshotState? get state;

  /// Size of the volume from which this snapshot was created.
  int get volumeSize;

  /// Time this snapshot was started. This is the same for all snapshots initiated by the same request.
  DateTime? get startTime;

  /// Progress this snapshot has made towards completing.
  String? get progress;

  /// Account id used when creating this snapshot.
  String? get ownerId;

  /// Snapshot id that can be used to describe this snapshot.
  String? get snapshotId;

  /// The ARN of the Outpost on which the snapshot is stored. For more information, see [Amazon EBS local snapshots on Outposts](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get outpostArn;
  @override
  List<Object?> get props => [
        description,
        tags,
        encrypted,
        volumeId,
        state,
        volumeSize,
        startTime,
        progress,
        ownerId,
        snapshotId,
        outpostArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotInfo');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'encrypted',
      encrypted,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'volumeSize',
      volumeSize,
    );
    helper.add(
      'startTime',
      startTime,
    );
    helper.add(
      'progress',
      progress,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    return helper.toString();
  }
}

class SnapshotInfoEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<SnapshotInfo> {
  const SnapshotInfoEc2QuerySerializer() : super('SnapshotInfo');

  @override
  Iterable<Type> get types => const [
        SnapshotInfo,
        _$SnapshotInfo,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotInfoBuilder();
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
                [FullType(_i2.Tag)],
              ),
            ) as _i4.BuiltList<_i2.Tag>));
          }
          break;
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'volumeId':
          if (value != null) {
            result.volumeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SnapshotState),
            ) as _i3.SnapshotState);
          }
          break;
        case 'volumeSize':
          result.volumeSize = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'startTime':
          if (value != null) {
            result.startTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
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
        case 'outpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
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
    final payload = (object as SnapshotInfo);
    final result = <Object?>[
      const _i5.XmlElementName(
        'SnapshotInfoResponse',
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
            [FullType(_i2.Tag)],
          ),
        ));
    }
    result
      ..add(const _i5.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    if (payload.volumeId != null) {
      result
        ..add(const _i5.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          payload.volumeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i5.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i3.SnapshotState),
        ));
    }
    result
      ..add(const _i5.XmlElementName('VolumeSize'))
      ..add(serializers.serialize(
        payload.volumeSize,
        specifiedType: const FullType(int),
      ));
    if (payload.startTime != null) {
      result
        ..add(const _i5.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          payload.startTime!,
          specifiedType: const FullType.nullable(DateTime),
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
    if (payload.ownerId != null) {
      result
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.snapshotId != null) {
      result
        ..add(const _i5.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.outpostArn != null) {
      result
        ..add(const _i5.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
