// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_block_device_mapping; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device.dart'
    as _i2;

part 'launch_template_block_device_mapping.g.dart';

/// Describes a block device mapping.
abstract class LaunchTemplateBlockDeviceMapping
    with
        _i1.AWSEquatable<LaunchTemplateBlockDeviceMapping>
    implements
        Built<LaunchTemplateBlockDeviceMapping,
            LaunchTemplateBlockDeviceMappingBuilder> {
  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMapping({
    String? deviceName,
    String? virtualName,
    _i2.LaunchTemplateEbsBlockDevice? ebs,
    String? noDevice,
  }) {
    return _$LaunchTemplateBlockDeviceMapping._(
      deviceName: deviceName,
      virtualName: virtualName,
      ebs: ebs,
      noDevice: noDevice,
    );
  }

  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMapping.build(
          [void Function(LaunchTemplateBlockDeviceMappingBuilder) updates]) =
      _$LaunchTemplateBlockDeviceMapping;

  const LaunchTemplateBlockDeviceMapping._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateBlockDeviceMappingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateBlockDeviceMappingBuilder b) {}

  /// The device name.
  String? get deviceName;

  /// The virtual device name (ephemeralN).
  String? get virtualName;

  /// Information about the block device for an EBS volume.
  _i2.LaunchTemplateEbsBlockDevice? get ebs;

  /// To omit the device from the block device mapping, specify an empty string.
  String? get noDevice;
  @override
  List<Object?> get props => [
        deviceName,
        virtualName,
        ebs,
        noDevice,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateBlockDeviceMapping');
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'virtualName',
      virtualName,
    );
    helper.add(
      'ebs',
      ebs,
    );
    helper.add(
      'noDevice',
      noDevice,
    );
    return helper.toString();
  }
}

class LaunchTemplateBlockDeviceMappingEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchTemplateBlockDeviceMapping> {
  const LaunchTemplateBlockDeviceMappingEc2QuerySerializer()
      : super('LaunchTemplateBlockDeviceMapping');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateBlockDeviceMapping,
        _$LaunchTemplateBlockDeviceMapping,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateBlockDeviceMapping deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateBlockDeviceMappingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'deviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'virtualName':
          if (value != null) {
            result.virtualName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ebs':
          if (value != null) {
            result.ebs.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LaunchTemplateEbsBlockDevice),
            ) as _i2.LaunchTemplateEbsBlockDevice));
          }
          break;
        case 'noDevice':
          if (value != null) {
            result.noDevice = (serializers.deserialize(
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
    final payload = (object as LaunchTemplateBlockDeviceMapping);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateBlockDeviceMappingResponse',
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
    if (payload.virtualName != null) {
      result
        ..add(const _i3.XmlElementName('VirtualName'))
        ..add(serializers.serialize(
          payload.virtualName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ebs != null) {
      result
        ..add(const _i3.XmlElementName('Ebs'))
        ..add(serializers.serialize(
          payload.ebs!,
          specifiedType: const FullType(_i2.LaunchTemplateEbsBlockDevice),
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
    return result;
  }
}
