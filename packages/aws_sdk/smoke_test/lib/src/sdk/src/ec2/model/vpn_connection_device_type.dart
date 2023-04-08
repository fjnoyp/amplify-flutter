// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpn_connection_device_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'vpn_connection_device_type.g.dart';

/// List of customer gateway devices that have a sample configuration file available for use. You can also see the list of device types with sample configuration files available under [Your customer gateway device](https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
abstract class VpnConnectionDeviceType
    with _i1.AWSEquatable<VpnConnectionDeviceType>
    implements Built<VpnConnectionDeviceType, VpnConnectionDeviceTypeBuilder> {
  /// List of customer gateway devices that have a sample configuration file available for use. You can also see the list of device types with sample configuration files available under [Your customer gateway device](https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  factory VpnConnectionDeviceType({
    String? vpnConnectionDeviceTypeId,
    String? vendor,
    String? platform,
    String? software,
  }) {
    return _$VpnConnectionDeviceType._(
      vpnConnectionDeviceTypeId: vpnConnectionDeviceTypeId,
      vendor: vendor,
      platform: platform,
      software: software,
    );
  }

  /// List of customer gateway devices that have a sample configuration file available for use. You can also see the list of device types with sample configuration files available under [Your customer gateway device](https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html) in the _Amazon Web Services Site-to-Site VPN User Guide_.
  factory VpnConnectionDeviceType.build(
          [void Function(VpnConnectionDeviceTypeBuilder) updates]) =
      _$VpnConnectionDeviceType;

  const VpnConnectionDeviceType._();

  static const List<_i2.SmithySerializer> serializers = [
    VpnConnectionDeviceTypeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnConnectionDeviceTypeBuilder b) {}

  /// Customer gateway device identifier.
  String? get vpnConnectionDeviceTypeId;

  /// Customer gateway device vendor.
  String? get vendor;

  /// Customer gateway device platform.
  String? get platform;

  /// Customer gateway device software version.
  String? get software;
  @override
  List<Object?> get props => [
        vpnConnectionDeviceTypeId,
        vendor,
        platform,
        software,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnConnectionDeviceType');
    helper.add(
      'vpnConnectionDeviceTypeId',
      vpnConnectionDeviceTypeId,
    );
    helper.add(
      'vendor',
      vendor,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'software',
      software,
    );
    return helper.toString();
  }
}

class VpnConnectionDeviceTypeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VpnConnectionDeviceType> {
  const VpnConnectionDeviceTypeEc2QuerySerializer()
      : super('VpnConnectionDeviceType');

  @override
  Iterable<Type> get types => const [
        VpnConnectionDeviceType,
        _$VpnConnectionDeviceType,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnConnectionDeviceType deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnConnectionDeviceTypeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnConnectionDeviceTypeId':
          if (value != null) {
            result.vpnConnectionDeviceTypeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vendor':
          if (value != null) {
            result.vendor = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'platform':
          if (value != null) {
            result.platform = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'software':
          if (value != null) {
            result.software = (serializers.deserialize(
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
    final payload = (object as VpnConnectionDeviceType);
    final result = <Object?>[
      const _i2.XmlElementName(
        'VpnConnectionDeviceTypeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnConnectionDeviceTypeId != null) {
      result
        ..add(const _i2.XmlElementName('VpnConnectionDeviceTypeId'))
        ..add(serializers.serialize(
          payload.vpnConnectionDeviceTypeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vendor != null) {
      result
        ..add(const _i2.XmlElementName('Vendor'))
        ..add(serializers.serialize(
          payload.vendor!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i2.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.software != null) {
      result
        ..add(const _i2.XmlElementName('Software'))
        ..add(serializers.serialize(
          payload.software!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
