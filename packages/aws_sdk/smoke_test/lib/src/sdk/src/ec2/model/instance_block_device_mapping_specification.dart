// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_block_device_mapping_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ebs_instance_block_device_specification.dart'
    as _i2;

part 'instance_block_device_mapping_specification.g.dart';

/// Describes a block device mapping entry.
abstract class InstanceBlockDeviceMappingSpecification
    with
        _i1.AWSEquatable<InstanceBlockDeviceMappingSpecification>
    implements
        Built<InstanceBlockDeviceMappingSpecification,
            InstanceBlockDeviceMappingSpecificationBuilder> {
  /// Describes a block device mapping entry.
  factory InstanceBlockDeviceMappingSpecification({
    String? deviceName,
    _i2.EbsInstanceBlockDeviceSpecification? ebs,
    String? noDevice,
    String? virtualName,
  }) {
    return _$InstanceBlockDeviceMappingSpecification._(
      deviceName: deviceName,
      ebs: ebs,
      noDevice: noDevice,
      virtualName: virtualName,
    );
  }

  /// Describes a block device mapping entry.
  factory InstanceBlockDeviceMappingSpecification.build(
      [void Function(InstanceBlockDeviceMappingSpecificationBuilder)
          updates]) = _$InstanceBlockDeviceMappingSpecification;

  const InstanceBlockDeviceMappingSpecification._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceBlockDeviceMappingSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceBlockDeviceMappingSpecificationBuilder b) {}

  /// The device name (for example, `/dev/sdh` or `xvdh`).
  String? get deviceName;

  /// Parameters used to automatically set up EBS volumes when the instance is launched.
  _i2.EbsInstanceBlockDeviceSpecification? get ebs;

  /// suppress the specified device included in the block device mapping.
  String? get noDevice;

  /// The virtual device name.
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
        newBuiltValueToStringHelper('InstanceBlockDeviceMappingSpecification');
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

class InstanceBlockDeviceMappingSpecificationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<InstanceBlockDeviceMappingSpecification> {
  const InstanceBlockDeviceMappingSpecificationEc2QuerySerializer()
      : super('InstanceBlockDeviceMappingSpecification');

  @override
  Iterable<Type> get types => const [
        InstanceBlockDeviceMappingSpecification,
        _$InstanceBlockDeviceMappingSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceBlockDeviceMappingSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceBlockDeviceMappingSpecificationBuilder();
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
        case 'ebs':
          if (value != null) {
            result.ebs.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.EbsInstanceBlockDeviceSpecification),
            ) as _i2.EbsInstanceBlockDeviceSpecification));
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
        case 'virtualName':
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
    final payload = (object as InstanceBlockDeviceMappingSpecification);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceBlockDeviceMappingSpecificationResponse',
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
          specifiedType:
              const FullType(_i2.EbsInstanceBlockDeviceSpecification),
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
