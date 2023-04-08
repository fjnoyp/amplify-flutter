// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.snapshot_recycle_bin_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'snapshot_recycle_bin_info.g.dart';

/// Information about a snapshot that is currently in the Recycle Bin.
abstract class SnapshotRecycleBinInfo
    with _i1.AWSEquatable<SnapshotRecycleBinInfo>
    implements Built<SnapshotRecycleBinInfo, SnapshotRecycleBinInfoBuilder> {
  /// Information about a snapshot that is currently in the Recycle Bin.
  factory SnapshotRecycleBinInfo({
    String? snapshotId,
    DateTime? recycleBinEnterTime,
    DateTime? recycleBinExitTime,
    String? description,
    String? volumeId,
  }) {
    return _$SnapshotRecycleBinInfo._(
      snapshotId: snapshotId,
      recycleBinEnterTime: recycleBinEnterTime,
      recycleBinExitTime: recycleBinExitTime,
      description: description,
      volumeId: volumeId,
    );
  }

  /// Information about a snapshot that is currently in the Recycle Bin.
  factory SnapshotRecycleBinInfo.build(
          [void Function(SnapshotRecycleBinInfoBuilder) updates]) =
      _$SnapshotRecycleBinInfo;

  const SnapshotRecycleBinInfo._();

  static const List<_i2.SmithySerializer> serializers = [
    SnapshotRecycleBinInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SnapshotRecycleBinInfoBuilder b) {}

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The date and time when the snaphsot entered the Recycle Bin.
  DateTime? get recycleBinEnterTime;

  /// The date and time when the snapshot is to be permanently deleted from the Recycle Bin.
  DateTime? get recycleBinExitTime;

  /// The description for the snapshot.
  String? get description;

  /// The ID of the volume from which the snapshot was created.
  String? get volumeId;
  @override
  List<Object?> get props => [
        snapshotId,
        recycleBinEnterTime,
        recycleBinExitTime,
        description,
        volumeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SnapshotRecycleBinInfo');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'recycleBinEnterTime',
      recycleBinEnterTime,
    );
    helper.add(
      'recycleBinExitTime',
      recycleBinExitTime,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    return helper.toString();
  }
}

class SnapshotRecycleBinInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SnapshotRecycleBinInfo> {
  const SnapshotRecycleBinInfoEc2QuerySerializer()
      : super('SnapshotRecycleBinInfo');

  @override
  Iterable<Type> get types => const [
        SnapshotRecycleBinInfo,
        _$SnapshotRecycleBinInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SnapshotRecycleBinInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnapshotRecycleBinInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'snapshotId':
          if (value != null) {
            result.snapshotId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recycleBinEnterTime':
          if (value != null) {
            result.recycleBinEnterTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'recycleBinExitTime':
          if (value != null) {
            result.recycleBinExitTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'volumeId':
          if (value != null) {
            result.volumeId = (serializers.deserialize(
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
    final payload = (object as SnapshotRecycleBinInfo);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SnapshotRecycleBinInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.snapshotId != null) {
      result
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.recycleBinEnterTime != null) {
      result
        ..add(const _i2.XmlElementName('RecycleBinEnterTime'))
        ..add(serializers.serialize(
          payload.recycleBinEnterTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.recycleBinExitTime != null) {
      result
        ..add(const _i2.XmlElementName('RecycleBinExitTime'))
        ..add(serializers.serialize(
          payload.recycleBinExitTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.volumeId != null) {
      result
        ..add(const _i2.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          payload.volumeId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
