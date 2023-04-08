// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_ebs_block_device; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart' as _i2;

part 'launch_template_ebs_block_device.g.dart';

/// Describes a block device for an EBS volume.
abstract class LaunchTemplateEbsBlockDevice
    with
        _i1.AWSEquatable<LaunchTemplateEbsBlockDevice>
    implements
        Built<LaunchTemplateEbsBlockDevice,
            LaunchTemplateEbsBlockDeviceBuilder> {
  /// Describes a block device for an EBS volume.
  factory LaunchTemplateEbsBlockDevice({
    bool? encrypted,
    bool? deleteOnTermination,
    int? iops,
    String? kmsKeyId,
    String? snapshotId,
    int? volumeSize,
    _i2.VolumeType? volumeType,
    int? throughput,
  }) {
    encrypted ??= false;
    deleteOnTermination ??= false;
    iops ??= 0;
    volumeSize ??= 0;
    throughput ??= 0;
    return _$LaunchTemplateEbsBlockDevice._(
      encrypted: encrypted,
      deleteOnTermination: deleteOnTermination,
      iops: iops,
      kmsKeyId: kmsKeyId,
      snapshotId: snapshotId,
      volumeSize: volumeSize,
      volumeType: volumeType,
      throughput: throughput,
    );
  }

  /// Describes a block device for an EBS volume.
  factory LaunchTemplateEbsBlockDevice.build(
          [void Function(LaunchTemplateEbsBlockDeviceBuilder) updates]) =
      _$LaunchTemplateEbsBlockDevice;

  const LaunchTemplateEbsBlockDevice._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateEbsBlockDeviceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateEbsBlockDeviceBuilder b) {
    b.encrypted = false;
    b.deleteOnTermination = false;
    b.iops = 0;
    b.volumeSize = 0;
    b.throughput = 0;
  }

  /// Indicates whether the EBS volume is encrypted.
  bool get encrypted;

  /// Indicates whether the EBS volume is deleted on instance termination.
  bool get deleteOnTermination;

  /// The number of I/O operations per second (IOPS) that the volume supports.
  int get iops;

  /// The ARN of the Key Management Service (KMS) CMK used for encryption.
  String? get kmsKeyId;

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The size of the volume, in GiB.
  int get volumeSize;

  /// The volume type.
  _i2.VolumeType? get volumeType;

  /// The throughput that the volume supports, in MiB/s.
  int get throughput;
  @override
  List<Object?> get props => [
        encrypted,
        deleteOnTermination,
        iops,
        kmsKeyId,
        snapshotId,
        volumeSize,
        volumeType,
        throughput,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateEbsBlockDevice');
    helper.add(
      'encrypted',
      encrypted,
    );
    helper.add(
      'deleteOnTermination',
      deleteOnTermination,
    );
    helper.add(
      'iops',
      iops,
    );
    helper.add(
      'kmsKeyId',
      kmsKeyId,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'volumeSize',
      volumeSize,
    );
    helper.add(
      'volumeType',
      volumeType,
    );
    helper.add(
      'throughput',
      throughput,
    );
    return helper.toString();
  }
}

class LaunchTemplateEbsBlockDeviceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchTemplateEbsBlockDevice> {
  const LaunchTemplateEbsBlockDeviceEc2QuerySerializer()
      : super('LaunchTemplateEbsBlockDevice');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateEbsBlockDevice,
        _$LaunchTemplateEbsBlockDevice,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateEbsBlockDevice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateEbsBlockDeviceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'iops':
          result.iops = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'kmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
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
        case 'volumeSize':
          result.volumeSize = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'volumeType':
          if (value != null) {
            result.volumeType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VolumeType),
            ) as _i2.VolumeType);
          }
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
    final payload = (object as LaunchTemplateEbsBlockDevice);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateEbsBlockDeviceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i3.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        payload.deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i3.XmlElementName('Iops'))
      ..add(serializers.serialize(
        payload.iops,
        specifiedType: const FullType(int),
      ));
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i3.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
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
    result
      ..add(const _i3.XmlElementName('VolumeSize'))
      ..add(serializers.serialize(
        payload.volumeSize,
        specifiedType: const FullType(int),
      ));
    if (payload.volumeType != null) {
      result
        ..add(const _i3.XmlElementName('VolumeType'))
        ..add(serializers.serialize(
          payload.volumeType!,
          specifiedType: const FullType.nullable(_i2.VolumeType),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Throughput'))
      ..add(serializers.serialize(
        payload.throughput,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
