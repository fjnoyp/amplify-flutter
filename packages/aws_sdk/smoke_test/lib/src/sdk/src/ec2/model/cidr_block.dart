// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cidr_block; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cidr_block.g.dart';

/// Describes an IPv4 CIDR block.
abstract class CidrBlock
    with _i1.AWSEquatable<CidrBlock>
    implements Built<CidrBlock, CidrBlockBuilder> {
  /// Describes an IPv4 CIDR block.
  factory CidrBlock({String? cidrBlock}) {
    return _$CidrBlock._(cidrBlock: cidrBlock);
  }

  /// Describes an IPv4 CIDR block.
  factory CidrBlock.build([void Function(CidrBlockBuilder) updates]) =
      _$CidrBlock;

  const CidrBlock._();

  static const List<_i2.SmithySerializer> serializers = [
    CidrBlockEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CidrBlockBuilder b) {}

  /// The IPv4 CIDR block.
  String? get cidrBlock;
  @override
  List<Object?> get props => [cidrBlock];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CidrBlock');
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    return helper.toString();
  }
}

class CidrBlockEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CidrBlock> {
  const CidrBlockEc2QuerySerializer() : super('CidrBlock');

  @override
  Iterable<Type> get types => const [
        CidrBlock,
        _$CidrBlock,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CidrBlock deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CidrBlockBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidrBlock':
          if (value != null) {
            result.cidrBlock = (serializers.deserialize(
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
    final payload = (object as CidrBlock);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CidrBlockResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidrBlock != null) {
      result
        ..add(const _i2.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          payload.cidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
