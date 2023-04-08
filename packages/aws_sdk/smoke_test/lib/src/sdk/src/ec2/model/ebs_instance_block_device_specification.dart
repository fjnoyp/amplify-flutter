// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ebs_instance_block_device_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ebs_instance_block_device_specification.g.dart';

/// Describes information used to set up an EBS volume specified in a block device mapping.
abstract class EbsInstanceBlockDeviceSpecification
    with
        _i1.AWSEquatable<EbsInstanceBlockDeviceSpecification>
    implements
        Built<EbsInstanceBlockDeviceSpecification,
            EbsInstanceBlockDeviceSpecificationBuilder> {
  /// Describes information used to set up an EBS volume specified in a block device mapping.
  factory EbsInstanceBlockDeviceSpecification({
    bool? deleteOnTermination,
    String? volumeId,
  }) {
    deleteOnTermination ??= false;
    return _$EbsInstanceBlockDeviceSpecification._(
      deleteOnTermination: deleteOnTermination,
      volumeId: volumeId,
    );
  }

  /// Describes information used to set up an EBS volume specified in a block device mapping.
  factory EbsInstanceBlockDeviceSpecification.build(
          [void Function(EbsInstanceBlockDeviceSpecificationBuilder) updates]) =
      _$EbsInstanceBlockDeviceSpecification;

  const EbsInstanceBlockDeviceSpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    EbsInstanceBlockDeviceSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EbsInstanceBlockDeviceSpecificationBuilder b) {
    b.deleteOnTermination = false;
  }

  /// Indicates whether the volume is deleted on instance termination.
  bool get deleteOnTermination;

  /// The ID of the EBS volume.
  String? get volumeId;
  @override
  List<Object?> get props => [
        deleteOnTermination,
        volumeId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EbsInstanceBlockDeviceSpecification');
    helper.add(
      'deleteOnTermination',
      deleteOnTermination,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    return helper.toString();
  }
}

class EbsInstanceBlockDeviceSpecificationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<EbsInstanceBlockDeviceSpecification> {
  const EbsInstanceBlockDeviceSpecificationEc2QuerySerializer()
      : super('EbsInstanceBlockDeviceSpecification');

  @override
  Iterable<Type> get types => const [
        EbsInstanceBlockDeviceSpecification,
        _$EbsInstanceBlockDeviceSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EbsInstanceBlockDeviceSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbsInstanceBlockDeviceSpecificationBuilder();
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
    final payload = (object as EbsInstanceBlockDeviceSpecification);
    final result = <Object?>[
      const _i2.XmlElementName(
        'EbsInstanceBlockDeviceSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        payload.deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
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
