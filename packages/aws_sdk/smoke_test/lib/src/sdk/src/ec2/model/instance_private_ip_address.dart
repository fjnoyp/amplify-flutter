// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_private_ip_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_association.dart'
    as _i2;

part 'instance_private_ip_address.g.dart';

/// Describes a private IPv4 address.
abstract class InstancePrivateIpAddress
    with _i1.AWSEquatable<InstancePrivateIpAddress>
    implements
        Built<InstancePrivateIpAddress, InstancePrivateIpAddressBuilder> {
  /// Describes a private IPv4 address.
  factory InstancePrivateIpAddress({
    _i2.InstanceNetworkInterfaceAssociation? association,
    bool? primary,
    String? privateDnsName,
    String? privateIpAddress,
  }) {
    primary ??= false;
    return _$InstancePrivateIpAddress._(
      association: association,
      primary: primary,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
    );
  }

  /// Describes a private IPv4 address.
  factory InstancePrivateIpAddress.build(
          [void Function(InstancePrivateIpAddressBuilder) updates]) =
      _$InstancePrivateIpAddress;

  const InstancePrivateIpAddress._();

  static const List<_i3.SmithySerializer> serializers = [
    InstancePrivateIpAddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstancePrivateIpAddressBuilder b) {
    b.primary = false;
  }

  /// The association information for an Elastic IP address for the network interface.
  _i2.InstanceNetworkInterfaceAssociation? get association;

  /// Indicates whether this IPv4 address is the primary private IP address of the network interface.
  bool get primary;

  /// The private IPv4 DNS name.
  String? get privateDnsName;

  /// The private IPv4 address of the network interface.
  String? get privateIpAddress;
  @override
  List<Object?> get props => [
        association,
        primary,
        privateDnsName,
        privateIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstancePrivateIpAddress');
    helper.add(
      'association',
      association,
    );
    helper.add(
      'primary',
      primary,
    );
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    return helper.toString();
  }
}

class InstancePrivateIpAddressEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstancePrivateIpAddress> {
  const InstancePrivateIpAddressEc2QuerySerializer()
      : super('InstancePrivateIpAddress');

  @override
  Iterable<Type> get types => const [
        InstancePrivateIpAddress,
        _$InstancePrivateIpAddress,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstancePrivateIpAddress deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstancePrivateIpAddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'association':
          if (value != null) {
            result.association.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.InstanceNetworkInterfaceAssociation),
            ) as _i2.InstanceNetworkInterfaceAssociation));
          }
          break;
        case 'primary':
          result.primary = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'privateDnsName':
          if (value != null) {
            result.privateDnsName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'privateIpAddress':
          if (value != null) {
            result.privateIpAddress = (serializers.deserialize(
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
    final payload = (object as InstancePrivateIpAddress);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstancePrivateIpAddressResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.association != null) {
      result
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          payload.association!,
          specifiedType:
              const FullType(_i2.InstanceNetworkInterfaceAssociation),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Primary'))
      ..add(serializers.serialize(
        payload.primary,
        specifiedType: const FullType(bool),
      ));
    if (payload.privateDnsName != null) {
      result
        ..add(const _i3.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          payload.privateDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i3.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
