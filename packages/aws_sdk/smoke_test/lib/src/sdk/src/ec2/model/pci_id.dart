// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.pci_id; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'pci_id.g.dart';

/// Describes the data that identifies an Amazon FPGA image (AFI) on the PCI bus.
abstract class PciId
    with _i1.AWSEquatable<PciId>
    implements Built<PciId, PciIdBuilder> {
  /// Describes the data that identifies an Amazon FPGA image (AFI) on the PCI bus.
  factory PciId({
    String? deviceId,
    String? vendorId,
    String? subsystemId,
    String? subsystemVendorId,
  }) {
    return _$PciId._(
      deviceId: deviceId,
      vendorId: vendorId,
      subsystemId: subsystemId,
      subsystemVendorId: subsystemVendorId,
    );
  }

  /// Describes the data that identifies an Amazon FPGA image (AFI) on the PCI bus.
  factory PciId.build([void Function(PciIdBuilder) updates]) = _$PciId;

  const PciId._();

  static const List<_i2.SmithySerializer> serializers = [
    PciIdEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PciIdBuilder b) {}

  /// The ID of the device.
  String? get deviceId;

  /// The ID of the vendor.
  String? get vendorId;

  /// The ID of the subsystem.
  String? get subsystemId;

  /// The ID of the vendor for the subsystem.
  String? get subsystemVendorId;
  @override
  List<Object?> get props => [
        deviceId,
        vendorId,
        subsystemId,
        subsystemVendorId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PciId');
    helper.add(
      'deviceId',
      deviceId,
    );
    helper.add(
      'vendorId',
      vendorId,
    );
    helper.add(
      'subsystemId',
      subsystemId,
    );
    helper.add(
      'subsystemVendorId',
      subsystemVendorId,
    );
    return helper.toString();
  }
}

class PciIdEc2QuerySerializer extends _i2.StructuredSmithySerializer<PciId> {
  const PciIdEc2QuerySerializer() : super('PciId');

  @override
  Iterable<Type> get types => const [
        PciId,
        _$PciId,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PciId deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PciIdBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DeviceId':
          if (value != null) {
            result.deviceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VendorId':
          if (value != null) {
            result.vendorId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SubsystemId':
          if (value != null) {
            result.subsystemId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SubsystemVendorId':
          if (value != null) {
            result.subsystemVendorId = (serializers.deserialize(
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
    final payload = (object as PciId);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PciIdResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.deviceId != null) {
      result
        ..add(const _i2.XmlElementName('DeviceId'))
        ..add(serializers.serialize(
          payload.deviceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vendorId != null) {
      result
        ..add(const _i2.XmlElementName('VendorId'))
        ..add(serializers.serialize(
          payload.vendorId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subsystemId != null) {
      result
        ..add(const _i2.XmlElementName('SubsystemId'))
        ..add(serializers.serialize(
          payload.subsystemId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subsystemVendorId != null) {
      result
        ..add(const _i2.XmlElementName('SubsystemVendorId'))
        ..add(serializers.serialize(
          payload.subsystemVendorId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
