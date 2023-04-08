// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scheduled_instances_block_device_mapping; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_ebs.dart'
    as _i2;

part 'scheduled_instances_block_device_mapping.g.dart';

/// Describes a block device mapping for a Scheduled Instance.
abstract class ScheduledInstancesBlockDeviceMapping
    with
        _i1.AWSEquatable<ScheduledInstancesBlockDeviceMapping>
    implements
        Built<ScheduledInstancesBlockDeviceMapping,
            ScheduledInstancesBlockDeviceMappingBuilder> {
  /// Describes a block device mapping for a Scheduled Instance.
  factory ScheduledInstancesBlockDeviceMapping({
    String? deviceName,
    _i2.ScheduledInstancesEbs? ebs,
    String? noDevice,
    String? virtualName,
  }) {
    return _$ScheduledInstancesBlockDeviceMapping._(
      deviceName: deviceName,
      ebs: ebs,
      noDevice: noDevice,
      virtualName: virtualName,
    );
  }

  /// Describes a block device mapping for a Scheduled Instance.
  factory ScheduledInstancesBlockDeviceMapping.build(
      [void Function(ScheduledInstancesBlockDeviceMappingBuilder)
          updates]) = _$ScheduledInstancesBlockDeviceMapping;

  const ScheduledInstancesBlockDeviceMapping._();

  static const List<_i3.SmithySerializer> serializers = [
    ScheduledInstancesBlockDeviceMappingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesBlockDeviceMappingBuilder b) {}

  /// The device name (for example, `/dev/sdh` or `xvdh`).
  String? get deviceName;

  /// Parameters used to set up EBS volumes automatically when the instance is launched.
  _i2.ScheduledInstancesEbs? get ebs;

  /// To omit the device from the block device mapping, specify an empty string.
  String? get noDevice;

  /// The virtual device name (`ephemeral`N). Instance store volumes are numbered starting from 0. An instance type with two available instance store volumes can specify mappings for `ephemeral0` and `ephemeral1`. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
  ///
  /// Constraints: For M3 instances, you must specify instance store volumes in the block device mapping for the instance. When you launch an M3 instance, we ignore any instance store volumes specified in the block device mapping for the AMI.
  String? get virtualName;
  @override
  List<Object?> get props => [
        deviceName,
        ebs,
        noDevice,
        virtualName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstancesBlockDeviceMapping');
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'ebs',
      ebs,
    );
    helper.add(
      'noDevice',
      noDevice,
    );
    helper.add(
      'virtualName',
      virtualName,
    );
    return helper.toString();
  }
}

class ScheduledInstancesBlockDeviceMappingEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ScheduledInstancesBlockDeviceMapping> {
  const ScheduledInstancesBlockDeviceMappingEc2QuerySerializer()
      : super('ScheduledInstancesBlockDeviceMapping');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesBlockDeviceMapping,
        _$ScheduledInstancesBlockDeviceMapping,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesBlockDeviceMapping deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesBlockDeviceMappingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DeviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Ebs':
          if (value != null) {
            result.ebs.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ScheduledInstancesEbs),
            ) as _i2.ScheduledInstancesEbs));
          }
          break;
        case 'NoDevice':
          if (value != null) {
            result.noDevice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VirtualName':
          if (value != null) {
            result.virtualName = (serializers.deserialize(
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
    final payload = (object as ScheduledInstancesBlockDeviceMapping);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ScheduledInstancesBlockDeviceMappingResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.deviceName != null) {
      result
        ..add(const _i3.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          payload.deviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ebs != null) {
      result
        ..add(const _i3.XmlElementName('Ebs'))
        ..add(serializers.serialize(
          payload.ebs!,
          specifiedType: const FullType(_i2.ScheduledInstancesEbs),
        ));
    }
    if (payload.noDevice != null) {
      result
        ..add(const _i3.XmlElementName('NoDevice'))
        ..add(serializers.serialize(
          payload.noDevice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.virtualName != null) {
      result
        ..add(const _i3.XmlElementName('VirtualName'))
        ..add(serializers.serialize(
          payload.virtualName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
