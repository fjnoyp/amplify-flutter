// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_ipv6_prefix; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_ipv6_prefix.g.dart';

/// Information about an IPv6 prefix.
abstract class InstanceIpv6Prefix
    with _i1.AWSEquatable<InstanceIpv6Prefix>
    implements Built<InstanceIpv6Prefix, InstanceIpv6PrefixBuilder> {
  /// Information about an IPv6 prefix.
  factory InstanceIpv6Prefix({String? ipv6Prefix}) {
    return _$InstanceIpv6Prefix._(ipv6Prefix: ipv6Prefix);
  }

  /// Information about an IPv6 prefix.
  factory InstanceIpv6Prefix.build(
          [void Function(InstanceIpv6PrefixBuilder) updates]) =
      _$InstanceIpv6Prefix;

  const InstanceIpv6Prefix._();

  static const List<_i2.SmithySerializer> serializers = [
    InstanceIpv6PrefixEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceIpv6PrefixBuilder b) {}

  /// One or more IPv6 prefixes assigned to the network interface.
  String? get ipv6Prefix;
  @override
  List<Object?> get props => [ipv6Prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceIpv6Prefix');
    helper.add(
      'ipv6Prefix',
      ipv6Prefix,
    );
    return helper.toString();
  }
}

class InstanceIpv6PrefixEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceIpv6Prefix> {
  const InstanceIpv6PrefixEc2QuerySerializer() : super('InstanceIpv6Prefix');

  @override
  Iterable<Type> get types => const [
        InstanceIpv6Prefix,
        _$InstanceIpv6Prefix,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceIpv6Prefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceIpv6PrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6Prefix':
          if (value != null) {
            result.ipv6Prefix = (serializers.deserialize(
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
    final payload = (object as InstanceIpv6Prefix);
    final result = <Object?>[
      const _i2.XmlElementName(
        'InstanceIpv6PrefixResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6Prefix != null) {
      result
        ..add(const _i2.XmlElementName('Ipv6Prefix'))
        ..add(serializers.serialize(
          payload.ipv6Prefix!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
