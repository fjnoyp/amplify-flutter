// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_interface_ipv6_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_interface_ipv6_address.g.dart';

/// Describes an IPv6 address associated with a network interface.
abstract class NetworkInterfaceIpv6Address
    with _i1.AWSEquatable<NetworkInterfaceIpv6Address>
    implements
        Built<NetworkInterfaceIpv6Address, NetworkInterfaceIpv6AddressBuilder> {
  /// Describes an IPv6 address associated with a network interface.
  factory NetworkInterfaceIpv6Address({String? ipv6Address}) {
    return _$NetworkInterfaceIpv6Address._(ipv6Address: ipv6Address);
  }

  /// Describes an IPv6 address associated with a network interface.
  factory NetworkInterfaceIpv6Address.build(
          [void Function(NetworkInterfaceIpv6AddressBuilder) updates]) =
      _$NetworkInterfaceIpv6Address;

  const NetworkInterfaceIpv6Address._();

  static const List<_i2.SmithySerializer> serializers = [
    NetworkInterfaceIpv6AddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceIpv6AddressBuilder b) {}

  /// The IPv6 address.
  String? get ipv6Address;
  @override
  List<Object?> get props => [ipv6Address];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfaceIpv6Address');
    helper.add(
      'ipv6Address',
      ipv6Address,
    );
    return helper.toString();
  }
}

class NetworkInterfaceIpv6AddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfaceIpv6Address> {
  const NetworkInterfaceIpv6AddressEc2QuerySerializer()
      : super('NetworkInterfaceIpv6Address');

  @override
  Iterable<Type> get types => const [
        NetworkInterfaceIpv6Address,
        _$NetworkInterfaceIpv6Address,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfaceIpv6Address deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceIpv6AddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6Address':
          if (value != null) {
            result.ipv6Address = (serializers.deserialize(
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
    final payload = (object as NetworkInterfaceIpv6Address);
    final result = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfaceIpv6AddressResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6Address != null) {
      result
        ..add(const _i2.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          payload.ipv6Address!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
