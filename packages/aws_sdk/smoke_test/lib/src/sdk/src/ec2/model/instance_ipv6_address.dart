// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_ipv6_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_ipv6_address.g.dart';

/// Describes an IPv6 address.
abstract class InstanceIpv6Address
    with _i1.AWSEquatable<InstanceIpv6Address>
    implements Built<InstanceIpv6Address, InstanceIpv6AddressBuilder> {
  /// Describes an IPv6 address.
  factory InstanceIpv6Address({String? ipv6Address}) {
    return _$InstanceIpv6Address._(ipv6Address: ipv6Address);
  }

  /// Describes an IPv6 address.
  factory InstanceIpv6Address.build(
          [void Function(InstanceIpv6AddressBuilder) updates]) =
      _$InstanceIpv6Address;

  const InstanceIpv6Address._();

  static const List<_i2.SmithySerializer> serializers = [
    InstanceIpv6AddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceIpv6AddressBuilder b) {}

  /// The IPv6 address.
  String? get ipv6Address;
  @override
  List<Object?> get props => [ipv6Address];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceIpv6Address');
    helper.add(
      'ipv6Address',
      ipv6Address,
    );
    return helper.toString();
  }
}

class InstanceIpv6AddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceIpv6Address> {
  const InstanceIpv6AddressEc2QuerySerializer() : super('InstanceIpv6Address');

  @override
  Iterable<Type> get types => const [
        InstanceIpv6Address,
        _$InstanceIpv6Address,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceIpv6Address deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceIpv6AddressBuilder();
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
    final payload = (object as InstanceIpv6Address);
    final result = <Object?>[
      const _i2.XmlElementName(
        'InstanceIpv6AddressResponse',
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
