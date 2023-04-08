// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.volume; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart' as _i5;

part 'volume.g.dart';

/// Describes a volume.
abstract class Volume
    with _i1.AWSEquatable<Volume>
    implements Built<Volume, VolumeBuilder> {
  /// Describes a volume.
  factory Volume({
    List<_i2.VolumeAttachment>? attachments,
    String? availabilityZone,
    DateTime? createTime,
    bool? encrypted,
    String? kmsKeyId,
    String? outpostArn,
    int? size,
    String? snapshotId,
    _i3.VolumeState? state,
    String? volumeId,
    int? iops,
    List<_i4.Tag>? tags,
    _i5.VolumeType? volumeType,
    bool? fastRestored,
    bool? multiAttachEnabled,
    int? throughput,
  }) {
    encrypted ??= false;
    size ??= 0;
    iops ??= 0;
    fastRestored ??= false;
    multiAttachEnabled ??= false;
    throughput ??= 0;
    return _$Volume._(
      attachments: attachments == null ? null : _i6.BuiltList(attachments),
      availabilityZone: availabilityZone,
      createTime: createTime,
      encrypted: encrypted,
      kmsKeyId: kmsKeyId,
      outpostArn: outpostArn,
      size: size,
      snapshotId: snapshotId,
      state: state,
      volumeId: volumeId,
      iops: iops,
      tags: tags == null ? null : _i6.BuiltList(tags),
      volumeType: volumeType,
      fastRestored: fastRestored,
      multiAttachEnabled: multiAttachEnabled,
      throughput: throughput,
    );
  }

  /// Describes a volume.
  factory Volume.build([void Function(VolumeBuilder) updates]) = _$Volume;

  const Volume._();

  /// Constructs a [Volume] from a [payload] and [response].
  factory Volume.fromResponse(
    Volume payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i7.SmithySerializer> serializers = [
    VolumeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeBuilder b) {
    b.encrypted = false;
    b.size = 0;
    b.iops = 0;
    b.fastRestored = false;
    b.multiAttachEnabled = false;
    b.throughput = 0;
  }

  /// Information about the volume attachments.
  _i6.BuiltList<_i2.VolumeAttachment>? get attachments;

  /// The Availability Zone for the volume.
  String? get availabilityZone;

  /// The time stamp when volume creation was initiated.
  DateTime? get createTime;

  /// Indicates whether the volume is encrypted.
  bool get encrypted;

  /// The Amazon Resource Name (ARN) of the Key Management Service (KMS) KMS key that was used to protect the volume encryption key for the volume.
  String? get kmsKeyId;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The size of the volume, in GiBs.
  int get size;

  /// The snapshot from which the volume was created, if applicable.
  String? get snapshotId;

  /// The volume state.
  _i3.VolumeState? get state;

  /// The ID of the volume.
  String? get volumeId;

  /// The number of I/O operations per second (IOPS). For `gp3`, `io1`, and `io2` volumes, this represents the number of IOPS that are provisioned for the volume. For `gp2` volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.
  int get iops;

  /// Any tags assigned to the volume.
  _i6.BuiltList<_i4.Tag>? get tags;

  /// The volume type.
  _i5.VolumeType? get volumeType;

  /// Indicates whether the volume was created using fast snapshot restore.
  bool get fastRestored;

  /// Indicates whether Amazon EBS Multi-Attach is enabled.
  bool get multiAttachEnabled;

  /// The throughput that the volume supports, in MiB/s.
  int get throughput;
  @override
  List<Object?> get props => [
        attachments,
        availabilityZone,
        createTime,
        encrypted,
        kmsKeyId,
        outpostArn,
        size,
        snapshotId,
        state,
        volumeId,
        iops,
        tags,
        volumeType,
        fastRestored,
        multiAttachEnabled,
        throughput,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Volume');
    helper.add(
      'attachments',
      attachments,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'encrypted',
      encrypted,
    );
    helper.add(
      'kmsKeyId',
      kmsKeyId,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'size',
      size,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'iops',
      iops,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'volumeType',
      volumeType,
    );
    helper.add(
      'fastRestored',
      fastRestored,
    );
    helper.add(
      'multiAttachEnabled',
      multiAttachEnabled,
    );
    helper.add(
      'throughput',
      throughput,
    );
    return helper.toString();
  }
}

class VolumeEc2QuerySerializer extends _i7.StructuredSmithySerializer<Volume> {
  const VolumeEc2QuerySerializer() : super('Volume');

  @override
  Iterable<Type> get types => const [
        Volume,
        _$Volume,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Volume deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attachmentSet':
          if (value != null) {
            result.attachments.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.VolumeAttachment)],
              ),
            ) as _i6.BuiltList<_i2.VolumeAttachment>));
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'kmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
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
        case 'size':
          result.size = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.VolumeState),
            ) as _i3.VolumeState);
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
        case 'iops':
          result.iops = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
                [FullType(_i4.Tag)],
              ),
            ) as _i6.BuiltList<_i4.Tag>));
          }
          break;
        case 'volumeType':
          if (value != null) {
            result.volumeType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.VolumeType),
            ) as _i5.VolumeType);
          }
          break;
        case 'fastRestored':
          result.fastRestored = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'multiAttachEnabled':
          result.multiAttachEnabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'throughput':
          result.throughput = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as Volume);
    final result = <Object?>[
      const _i7.XmlElementName(
        'VolumeResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attachments != null) {
      result
        ..add(const _i7.XmlElementName('AttachmentSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.attachments!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.VolumeAttachment)],
          ),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i7.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createTime != null) {
      result
        ..add(const _i7.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i7.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.outpostArn != null) {
      result
        ..add(const _i7.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Size'))
      ..add(serializers.serialize(
        payload.size,
        specifiedType: const FullType(int),
      ));
    if (payload.snapshotId != null) {
      result
        ..add(const _i7.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i3.VolumeState),
        ));
    }
    if (payload.volumeId != null) {
      result
        ..add(const _i7.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          payload.volumeId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Iops'))
      ..add(serializers.serialize(
        payload.iops,
        specifiedType: const FullType(int),
      ));
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
            [FullType(_i4.Tag)],
          ),
        ));
    }
    if (payload.volumeType != null) {
      result
        ..add(const _i7.XmlElementName('VolumeType'))
        ..add(serializers.serialize(
          payload.volumeType!,
          specifiedType: const FullType.nullable(_i5.VolumeType),
        ));
    }
    result
      ..add(const _i7.XmlElementName('FastRestored'))
      ..add(serializers.serialize(
        payload.fastRestored,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('MultiAttachEnabled'))
      ..add(serializers.serialize(
        payload.multiAttachEnabled,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('Throughput'))
      ..add(serializers.serialize(
        payload.throughput,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
