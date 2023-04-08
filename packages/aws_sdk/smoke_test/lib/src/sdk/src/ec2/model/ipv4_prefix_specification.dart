// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipv4_prefix_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv4_prefix_specification.g.dart';

/// Describes an IPv4 prefix.
abstract class Ipv4PrefixSpecification
    with _i1.AWSEquatable<Ipv4PrefixSpecification>
    implements Built<Ipv4PrefixSpecification, Ipv4PrefixSpecificationBuilder> {
  /// Describes an IPv4 prefix.
  factory Ipv4PrefixSpecification({String? ipv4Prefix}) {
    return _$Ipv4PrefixSpecification._(ipv4Prefix: ipv4Prefix);
  }

  /// Describes an IPv4 prefix.
  factory Ipv4PrefixSpecification.build(
          [void Function(Ipv4PrefixSpecificationBuilder) updates]) =
      _$Ipv4PrefixSpecification;

  const Ipv4PrefixSpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    Ipv4PrefixSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Ipv4PrefixSpecificationBuilder b) {}

  /// The IPv4 prefix. For information, see [Assigning prefixes to Amazon EC2 network interfaces](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get ipv4Prefix;
  @override
  List<Object?> get props => [ipv4Prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv4PrefixSpecification');
    helper.add(
      'ipv4Prefix',
      ipv4Prefix,
    );
    return helper.toString();
  }
}

class Ipv4PrefixSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv4PrefixSpecification> {
  const Ipv4PrefixSpecificationEc2QuerySerializer()
      : super('Ipv4PrefixSpecification');

  @override
  Iterable<Type> get types => const [
        Ipv4PrefixSpecification,
        _$Ipv4PrefixSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv4PrefixSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv4PrefixSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv4Prefix':
          if (value != null) {
            result.ipv4Prefix = (serializers.deserialize(
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
    final payload = (object as Ipv4PrefixSpecification);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Ipv4PrefixSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv4Prefix != null) {
      result
        ..add(const _i2.XmlElementName('Ipv4Prefix'))
        ..add(serializers.serialize(
          payload.ipv4Prefix!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
