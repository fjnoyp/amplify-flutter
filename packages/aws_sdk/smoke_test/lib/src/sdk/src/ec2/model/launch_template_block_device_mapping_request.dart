// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_block_device_mapping_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_ebs_block_device_request.dart'
    as _i2;

part 'launch_template_block_device_mapping_request.g.dart';

/// Describes a block device mapping.
abstract class LaunchTemplateBlockDeviceMappingRequest
    with
        _i1.AWSEquatable<LaunchTemplateBlockDeviceMappingRequest>
    implements
        Built<LaunchTemplateBlockDeviceMappingRequest,
            LaunchTemplateBlockDeviceMappingRequestBuilder> {
  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMappingRequest({
    String? deviceName,
    String? virtualName,
    _i2.LaunchTemplateEbsBlockDeviceRequest? ebs,
    String? noDevice,
  }) {
    return _$LaunchTemplateBlockDeviceMappingRequest._(
      deviceName: deviceName,
      virtualName: virtualName,
      ebs: ebs,
      noDevice: noDevice,
    );
  }

  /// Describes a block device mapping.
  factory LaunchTemplateBlockDeviceMappingRequest.build(
      [void Function(LaunchTemplateBlockDeviceMappingRequestBuilder)
          updates]) = _$LaunchTemplateBlockDeviceMappingRequest;

  const LaunchTemplateBlockDeviceMappingRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateBlockDeviceMappingRequestBuilder b) {}

  /// The device name (for example, /dev/sdh or xvdh).
  String? get deviceName;

  /// The virtual device name (ephemeralN). Instance store volumes are numbered starting from 0. An instance type with 2 available instance store volumes can specify mappings for ephemeral0 and ephemeral1. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.
  String? get virtualName;

  /// Parameters used to automatically set up EBS volumes when the instance is launched.
  _i2.LaunchTemplateEbsBlockDeviceRequest? get ebs;

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
        newBuiltValueToStringHelper('LaunchTemplateBlockDeviceMappingRequest');
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

class LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<LaunchTemplateBlockDeviceMappingRequest> {
  const LaunchTemplateBlockDeviceMappingRequestEc2QuerySerializer()
      : super('LaunchTemplateBlockDeviceMappingRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateBlockDeviceMappingRequest,
        _$LaunchTemplateBlockDeviceMappingRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateBlockDeviceMappingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateBlockDeviceMappingRequestBuilder();
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
        case 'VirtualName':
          if (value != null) {
            result.virtualName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Ebs':
          if (value != null) {
            result.ebs.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.LaunchTemplateEbsBlockDeviceRequest),
            ) as _i2.LaunchTemplateEbsBlockDeviceRequest));
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
    final payload = (object as LaunchTemplateBlockDeviceMappingRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateBlockDeviceMappingRequestResponse',
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
          specifiedType:
              const FullType(_i2.LaunchTemplateEbsBlockDeviceRequest),
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
