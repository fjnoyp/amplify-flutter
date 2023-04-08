// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipv6_cidr_block; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipv6_cidr_block.g.dart';

/// Describes an IPv6 CIDR block.
abstract class Ipv6CidrBlock
    with _i1.AWSEquatable<Ipv6CidrBlock>
    implements Built<Ipv6CidrBlock, Ipv6CidrBlockBuilder> {
  /// Describes an IPv6 CIDR block.
  factory Ipv6CidrBlock({String? ipv6CidrBlock}) {
    return _$Ipv6CidrBlock._(ipv6CidrBlock: ipv6CidrBlock);
  }

  /// Describes an IPv6 CIDR block.
  factory Ipv6CidrBlock.build([void Function(Ipv6CidrBlockBuilder) updates]) =
      _$Ipv6CidrBlock;

  const Ipv6CidrBlock._();

  static const List<_i2.SmithySerializer> serializers = [
    Ipv6CidrBlockEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Ipv6CidrBlockBuilder b) {}

  /// The IPv6 CIDR block.
  String? get ipv6CidrBlock;
  @override
  List<Object?> get props => [ipv6CidrBlock];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv6CidrBlock');
    helper.add(
      'ipv6CidrBlock',
      ipv6CidrBlock,
    );
    return helper.toString();
  }
}

class Ipv6CidrBlockEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Ipv6CidrBlock> {
  const Ipv6CidrBlockEc2QuerySerializer() : super('Ipv6CidrBlock');

  @override
  Iterable<Type> get types => const [
        Ipv6CidrBlock,
        _$Ipv6CidrBlock,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6CidrBlock deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6CidrBlockBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6CidrBlock':
          if (value != null) {
            result.ipv6CidrBlock = (serializers.deserialize(
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
    final payload = (object as Ipv6CidrBlock);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Ipv6CidrBlockResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6CidrBlock != null) {
      result
        ..add(const _i2.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
