// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ebs_instance_block_device; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart' as _i2;

part 'ebs_instance_block_device.g.dart';

/// Describes a parameter used to set up an EBS volume in a block device mapping.
abstract class EbsInstanceBlockDevice
    with _i1.AWSEquatable<EbsInstanceBlockDevice>
    implements Built<EbsInstanceBlockDevice, EbsInstanceBlockDeviceBuilder> {
  /// Describes a parameter used to set up an EBS volume in a block device mapping.
  factory EbsInstanceBlockDevice({
    DateTime? attachTime,
    bool? deleteOnTermination,
    _i2.AttachmentStatus? status,
    String? volumeId,
  }) {
    deleteOnTermination ??= false;
    return _$EbsInstanceBlockDevice._(
      attachTime: attachTime,
      deleteOnTermination: deleteOnTermination,
      status: status,
      volumeId: volumeId,
    );
  }

  /// Describes a parameter used to set up an EBS volume in a block device mapping.
  factory EbsInstanceBlockDevice.build(
          [void Function(EbsInstanceBlockDeviceBuilder) updates]) =
      _$EbsInstanceBlockDevice;

  const EbsInstanceBlockDevice._();

  static const List<_i3.SmithySerializer> serializers = [
    EbsInstanceBlockDeviceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EbsInstanceBlockDeviceBuilder b) {
    b.deleteOnTermination = false;
  }

  /// The time stamp when the attachment initiated.
  DateTime? get attachTime;

  /// Indicates whether the volume is deleted on instance termination.
  bool get deleteOnTermination;

  /// The attachment state.
  _i2.AttachmentStatus? get status;

  /// The ID of the EBS volume.
  String? get volumeId;
  @override
  List<Object?> get props => [
        attachTime,
        deleteOnTermination,
        status,
        volumeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EbsInstanceBlockDevice');
    helper.add(
      'attachTime',
      attachTime,
    );
    helper.add(
      'deleteOnTermination',
      deleteOnTermination,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    return helper.toString();
  }
}

class EbsInstanceBlockDeviceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<EbsInstanceBlockDevice> {
  const EbsInstanceBlockDeviceEc2QuerySerializer()
      : super('EbsInstanceBlockDevice');

  @override
  Iterable<Type> get types => const [
        EbsInstanceBlockDevice,
        _$EbsInstanceBlockDevice,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsInstanceBlockDevice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsInstanceBlockDeviceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attachTime':
          if (value != null) {
            result.attachTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttachmentStatus),
            ) as _i2.AttachmentStatus);
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
    final payload = (object as EbsInstanceBlockDevice);
    final result = <Object?>[
      const _i3.XmlElementName(
        'EbsInstanceBlockDeviceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attachTime != null) {
      result
        ..add(const _i3.XmlElementName('AttachTime'))
        ..add(serializers.serialize(
          payload.attachTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i3.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        payload.deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.AttachmentStatus),
        ));
    }
    if (payload.volumeId != null) {
      result
        ..add(const _i3.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          payload.volumeId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
