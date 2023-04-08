// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.private_ip_address_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'private_ip_address_specification.g.dart';

/// Describes a secondary private IPv4 address for a network interface.
abstract class PrivateIpAddressSpecification
    with
        _i1.AWSEquatable<PrivateIpAddressSpecification>
    implements
        Built<PrivateIpAddressSpecification,
            PrivateIpAddressSpecificationBuilder> {
  /// Describes a secondary private IPv4 address for a network interface.
  factory PrivateIpAddressSpecification({
    bool? primary,
    String? privateIpAddress,
  }) {
    primary ??= false;
    return _$PrivateIpAddressSpecification._(
      primary: primary,
      privateIpAddress: privateIpAddress,
    );
  }

  /// Describes a secondary private IPv4 address for a network interface.
  factory PrivateIpAddressSpecification.build(
          [void Function(PrivateIpAddressSpecificationBuilder) updates]) =
      _$PrivateIpAddressSpecification;

  const PrivateIpAddressSpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    PrivateIpAddressSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrivateIpAddressSpecificationBuilder b) {
    b.primary = false;
  }

  /// Indicates whether the private IPv4 address is the primary private IPv4 address. Only one IPv4 address can be designated as primary.
  bool get primary;

  /// The private IPv4 address.
  String? get privateIpAddress;
  @override
  List<Object?> get props => [
        primary,
        privateIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrivateIpAddressSpecification');
    helper.add(
      'primary',
      primary,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    return helper.toString();
  }
}

class PrivateIpAddressSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PrivateIpAddressSpecification> {
  const PrivateIpAddressSpecificationEc2QuerySerializer()
      : super('PrivateIpAddressSpecification');

  @override
  Iterable<Type> get types => const [
        PrivateIpAddressSpecification,
        _$PrivateIpAddressSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrivateIpAddressSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrivateIpAddressSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'primary':
          result.primary = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as PrivateIpAddressSpecification);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PrivateIpAddressSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Primary'))
      ..add(serializers.serialize(
        payload.primary,
        specifiedType: const FullType(bool),
      ));
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i2.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
