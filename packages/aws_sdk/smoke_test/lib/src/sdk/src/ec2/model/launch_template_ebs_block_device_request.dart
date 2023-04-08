// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_ebs_block_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_type.dart' as _i2;

part 'launch_template_ebs_block_device_request.g.dart';

/// The parameters for a block device for an EBS volume.
abstract class LaunchTemplateEbsBlockDeviceRequest
    with
        _i1.AWSEquatable<LaunchTemplateEbsBlockDeviceRequest>
    implements
        Built<LaunchTemplateEbsBlockDeviceRequest,
            LaunchTemplateEbsBlockDeviceRequestBuilder> {
  /// The parameters for a block device for an EBS volume.
  factory LaunchTemplateEbsBlockDeviceRequest({
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
    return _$LaunchTemplateEbsBlockDeviceRequest._(
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

  /// The parameters for a block device for an EBS volume.
  factory LaunchTemplateEbsBlockDeviceRequest.build(
          [void Function(LaunchTemplateEbsBlockDeviceRequestBuilder) updates]) =
      _$LaunchTemplateEbsBlockDeviceRequest;

  const LaunchTemplateEbsBlockDeviceRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateEbsBlockDeviceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateEbsBlockDeviceRequestBuilder b) {
    b.encrypted = false;
    b.deleteOnTermination = false;
    b.iops = 0;
    b.volumeSize = 0;
    b.throughput = 0;
  }

  /// Indicates whether the EBS volume is encrypted. Encrypted volumes can only be attached to instances that support Amazon EBS encryption. If you are creating a volume from a snapshot, you can't specify an encryption value.
  bool get encrypted;

  /// Indicates whether the EBS volume is deleted on instance termination.
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
  /// This parameter is supported for `io1`, `io2`, and `gp3` volumes only. This parameter is not supported for `gp2`, `st1`, `sc1`, or `standard` volumes.
  int get iops;

  /// The ARN of the symmetric Key Management Service (KMS) CMK used for encryption.
  String? get kmsKeyId;

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. The following are the supported volumes sizes for each volume type:
  ///
  /// *   `gp2` and `gp3`: 1-16,384
  ///
  /// *   `io1` and `io2`: 4-16,384
  ///
  /// *   `st1` and `sc1`: 125-16,384
  ///
  /// *   `standard`: 1-1,024
  int get volumeSize;

  /// The volume type. For more information, see [Amazon EBS volume types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i2.VolumeType? get volumeType;

  /// The throughput to provision for a `gp3` volume, with a maximum of 1,000 MiB/s.
  ///
  /// Valid Range: Minimum value of 125. Maximum value of 1000.
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
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateEbsBlockDeviceRequest');
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

class LaunchTemplateEbsBlockDeviceRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<LaunchTemplateEbsBlockDeviceRequest> {
  const LaunchTemplateEbsBlockDeviceRequestEc2QuerySerializer()
      : super('LaunchTemplateEbsBlockDeviceRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateEbsBlockDeviceRequest,
        _$LaunchTemplateEbsBlockDeviceRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateEbsBlockDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateEbsBlockDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'DeleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Iops':
          result.iops = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'KmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SnapshotId':
          if (value != null) {
            result.snapshotId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VolumeSize':
          result.volumeSize = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'VolumeType':
          if (value != null) {
            result.volumeType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VolumeType),
            ) as _i2.VolumeType);
          }
          break;
        case 'Throughput':
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
    final payload = (object as LaunchTemplateEbsBlockDeviceRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateEbsBlockDeviceRequestResponse',
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
