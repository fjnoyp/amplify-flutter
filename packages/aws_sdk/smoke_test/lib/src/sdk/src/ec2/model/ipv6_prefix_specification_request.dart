// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipv6_prefix_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv6_prefix_specification_request.g.dart';

/// Describes the IPv4 prefix option for a network interface.
abstract class Ipv6PrefixSpecificationRequest
    with
        _i1.AWSEquatable<Ipv6PrefixSpecificationRequest>
    implements
        Built<Ipv6PrefixSpecificationRequest,
            Ipv6PrefixSpecificationRequestBuilder> {
  /// Describes the IPv4 prefix option for a network interface.
  factory Ipv6PrefixSpecificationRequest({String? ipv6Prefix}) {
    return _$Ipv6PrefixSpecificationRequest._(ipv6Prefix: ipv6Prefix);
  }

  /// Describes the IPv4 prefix option for a network interface.
  factory Ipv6PrefixSpecificationRequest.build(
          [void Function(Ipv6PrefixSpecificationRequestBuilder) updates]) =
      _$Ipv6PrefixSpecificationRequest;

  const Ipv6PrefixSpecificationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    Ipv6PrefixSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Ipv6PrefixSpecificationRequestBuilder b) {}

  /// The IPv6 prefix.
  String? get ipv6Prefix;
  @override
  List<Object?> get props => [ipv6Prefix];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('Ipv6PrefixSpecificationRequest');
    helper.add(
      'ipv6Prefix',
      ipv6Prefix,
    );
    return helper.toString();
  }
}

class Ipv6PrefixSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv6PrefixSpecificationRequest> {
  const Ipv6PrefixSpecificationRequestEc2QuerySerializer()
      : super('Ipv6PrefixSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        Ipv6PrefixSpecificationRequest,
        _$Ipv6PrefixSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6PrefixSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6PrefixSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Ipv6Prefix':
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
    final payload = (object as Ipv6PrefixSpecificationRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Ipv6PrefixSpecificationRequestResponse',
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
