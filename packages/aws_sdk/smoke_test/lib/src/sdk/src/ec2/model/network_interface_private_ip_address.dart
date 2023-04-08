// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_interface_private_ip_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_association.dart'
    as _i2;

part 'network_interface_private_ip_address.g.dart';

/// Describes the private IPv4 address of a network interface.
abstract class NetworkInterfacePrivateIpAddress
    with
        _i1.AWSEquatable<NetworkInterfacePrivateIpAddress>
    implements
        Built<NetworkInterfacePrivateIpAddress,
            NetworkInterfacePrivateIpAddressBuilder> {
  /// Describes the private IPv4 address of a network interface.
  factory NetworkInterfacePrivateIpAddress({
    _i2.NetworkInterfaceAssociation? association,
    bool? primary,
    String? privateDnsName,
    String? privateIpAddress,
  }) {
    primary ??= false;
    return _$NetworkInterfacePrivateIpAddress._(
      association: association,
      primary: primary,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
    );
  }

  /// Describes the private IPv4 address of a network interface.
  factory NetworkInterfacePrivateIpAddress.build(
          [void Function(NetworkInterfacePrivateIpAddressBuilder) updates]) =
      _$NetworkInterfacePrivateIpAddress;

  const NetworkInterfacePrivateIpAddress._();

  static const List<_i3.SmithySerializer> serializers = [
    NetworkInterfacePrivateIpAddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfacePrivateIpAddressBuilder b) {
    b.primary = false;
  }

  /// The association information for an Elastic IP address (IPv4) associated with the network interface.
  _i2.NetworkInterfaceAssociation? get association;

  /// Indicates whether this IPv4 address is the primary private IPv4 address of the network interface.
  bool get primary;

  /// The private DNS name.
  String? get privateDnsName;

  /// The private IPv4 address.
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
    final helper =
        newBuiltValueToStringHelper('NetworkInterfacePrivateIpAddress');
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

class NetworkInterfacePrivateIpAddressEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInterfacePrivateIpAddress> {
  const NetworkInterfacePrivateIpAddressEc2QuerySerializer()
      : super('NetworkInterfacePrivateIpAddress');

  @override
  Iterable<Type> get types => const [
        NetworkInterfacePrivateIpAddress,
        _$NetworkInterfacePrivateIpAddress,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfacePrivateIpAddress deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfacePrivateIpAddressBuilder();
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
              specifiedType: const FullType(_i2.NetworkInterfaceAssociation),
            ) as _i2.NetworkInterfaceAssociation));
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
    final payload = (object as NetworkInterfacePrivateIpAddress);
    final result = <Object?>[
      const _i3.XmlElementName(
        'NetworkInterfacePrivateIpAddressResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.association != null) {
      result
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          payload.association!,
          specifiedType: const FullType(_i2.NetworkInterfaceAssociation),
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
