// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ebs_block_device; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart' as _i2;

part 'ebs_block_device.g.dart';

/// Describes a block device for an EBS volume.
abstract class EbsBlockDevice
    with _i1.AWSEquatable<EbsBlockDevice>
    implements Built<EbsBlockDevice, EbsBlockDeviceBuilder> {
  /// Describes a block device for an EBS volume.
  factory EbsBlockDevice({
    bool? deleteOnTermination,
    int? iops,
    String? snapshotId,
    int? volumeSize,
    _i2.VolumeType? volumeType,
    String? kmsKeyId,
    int? throughput,
    String? outpostArn,
    bool? encrypted,
  }) {
    deleteOnTermination ??= false;
    iops ??= 0;
    volumeSize ??= 0;
    throughput ??= 0;
    encrypted ??= false;
    return _$EbsBlockDevice._(
      deleteOnTermination: deleteOnTermination,
      iops: iops,
      snapshotId: snapshotId,
      volumeSize: volumeSize,
      volumeType: volumeType,
      kmsKeyId: kmsKeyId,
      throughput: throughput,
      outpostArn: outpostArn,
      encrypted: encrypted,
    );
  }

  /// Describes a block device for an EBS volume.
  factory EbsBlockDevice.build([void Function(EbsBlockDeviceBuilder) updates]) =
      _$EbsBlockDevice;

  const EbsBlockDevice._();

  static const List<_i3.SmithySerializer> serializers = [
    EbsBlockDeviceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EbsBlockDeviceBuilder b) {
    b.deleteOnTermination = false;
    b.iops = 0;
    b.volumeSize = 0;
    b.throughput = 0;
    b.encrypted = false;
  }

  /// Indicates whether the EBS volume is deleted on instance termination. For more information, see [Preserving Amazon EBS volumes on instance termination](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination) in the _Amazon EC2 User Guide_.
  bool get deleteOnTermination;

  /// The number of I/O operations per second (IOPS). For `gp3`, `io1`, and `io2` volumes, this represents the number of IOPS that are provisioned for the volume. For `gp2` volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.
  ///
  /// The following are the supported values for each volume type:
  ///
  /// *   `gp3`: 3,000-16,000 IOPS
  ///
  /// *   `io1`: 100-64,000 IOPS
  ///
  /// *   `io2`: 100-64,000 IOPS
  ///
  ///
  /// For `io1` and `io2` volumes, we guarantee 64,000 IOPS only for [Instances built on the Nitro System](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances). Other instance families guarantee performance up to 32,000 IOPS.
  ///
  /// This parameter is required for `io1` and `io2` volumes. The default for `gp3` volumes is 3,000 IOPS. This parameter is not supported for `gp2`, `st1`, `sc1`, or `standard` volumes.
  int get iops;

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size.
  ///
  /// The following are the supported volumes sizes for each volume type:
  ///
  /// *   `gp2` and `gp3`:1-16,384
  ///
  /// *   `io1` and `io2`: 4-16,384
  ///
  /// *   `st1` and `sc1`: 125-16,384
  ///
  /// *   `standard`: 1-1,024
  int get volumeSize;

  /// The volume type. For more information, see [Amazon EBS volume types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the _Amazon EC2 User Guide_. If the volume type is `io1` or `io2`, you must specify the IOPS that the volume supports.
  _i2.VolumeType? get volumeType;

  /// Identifier (key ID, key alias, ID ARN, or alias ARN) for a customer managed CMK under which the EBS volume is encrypted.
  ///
  /// This parameter is only supported on `BlockDeviceMapping` objects called by [RunInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html), [RequestSpotFleet](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html), and [RequestSpotInstances](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html).
  String? get kmsKeyId;

  /// The throughput that the volume supports, in MiB/s.
  ///
  /// This parameter is valid only for `gp3` volumes.
  ///
  /// Valid Range: Minimum value of 125. Maximum value of 1000.
  int get throughput;

  /// The ARN of the Outpost on which the snapshot is stored.
  ///
  /// This parameter is only supported on `BlockDeviceMapping` objects called by [CreateImage](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html).
  String? get outpostArn;

  /// Indicates whether the encryption state of an EBS volume is changed while being restored from a backing snapshot. The effect of setting the encryption state to `true` depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see [Amazon EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-parameters) in the _Amazon EC2 User Guide_.
  ///
  /// In no case can you remove encryption from an encrypted volume.
  ///
  /// Encrypted volumes can only be attached to instances that support Amazon EBS encryption. For more information, see [Supported instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).
  ///
  /// This parameter is not returned by [DescribeImageAttribute](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImageAttribute.html).
  bool get encrypted;
  @override
  List<Object?> get props => [
        deleteOnTermination,
        iops,
        snapshotId,
        volumeSize,
        volumeType,
        kmsKeyId,
        throughput,
        outpostArn,
        encrypted,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EbsBlockDevice');
    helper.add(
      'deleteOnTermination',
      deleteOnTermination,
    );
    helper.add(
      'iops',
      iops,
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
      'kmsKeyId',
      kmsKeyId,
    );
    helper.add(
      'throughput',
      throughput,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'encrypted',
      encrypted,
    );
    return helper.toString();
  }
}

class EbsBlockDeviceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<EbsBlockDevice> {
  const EbsBlockDeviceEc2QuerySerializer() : super('EbsBlockDevice');

  @override
  Iterable<Type> get types => const [
        EbsBlockDevice,
        _$EbsBlockDevice,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsBlockDevice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsBlockDeviceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'kmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'throughput':
          result.throughput = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'outpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as EbsBlockDevice);
    final result = <Object?>[
      const _i3.XmlElementName(
        'EbsBlockDeviceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i3.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Throughput'))
      ..add(serializers.serialize(
        payload.throughput,
        specifiedType: const FullType(int),
      ));
    if (payload.outpostArn != null) {
      result
        ..add(const _i3.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
