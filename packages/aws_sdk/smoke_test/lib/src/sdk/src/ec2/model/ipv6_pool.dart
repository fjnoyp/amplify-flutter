// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipv6_pool; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/pool_cidr_block.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'ipv6_pool.g.dart';

/// Describes an IPv6 address pool.
abstract class Ipv6Pool
    with _i1.AWSEquatable<Ipv6Pool>
    implements Built<Ipv6Pool, Ipv6PoolBuilder> {
  /// Describes an IPv6 address pool.
  factory Ipv6Pool({
    String? poolId,
    String? description,
    List<_i2.PoolCidrBlock>? poolCidrBlocks,
    List<_i3.Tag>? tags,
  }) {
    return _$Ipv6Pool._(
      poolId: poolId,
      description: description,
      poolCidrBlocks:
          poolCidrBlocks == null ? null : _i4.BuiltList(poolCidrBlocks),
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes an IPv6 address pool.
  factory Ipv6Pool.build([void Function(Ipv6PoolBuilder) updates]) = _$Ipv6Pool;

  const Ipv6Pool._();

  static const List<_i5.SmithySerializer> serializers = [
    Ipv6PoolEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Ipv6PoolBuilder b) {}

  /// The ID of the address pool.
  String? get poolId;

  /// The description for the address pool.
  String? get description;

  /// The CIDR blocks for the address pool.
  _i4.BuiltList<_i2.PoolCidrBlock>? get poolCidrBlocks;

  /// Any tags for the address pool.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        poolId,
        description,
        poolCidrBlocks,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipv6Pool');
    helper.add(
      'poolId',
      poolId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'poolCidrBlocks',
      poolCidrBlocks,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class Ipv6PoolEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<Ipv6Pool> {
  const Ipv6PoolEc2QuerySerializer() : super('Ipv6Pool');

  @override
  Iterable<Type> get types => const [
        Ipv6Pool,
        _$Ipv6Pool,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipv6Pool deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ipv6PoolBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'poolId':
          if (value != null) {
            result.poolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'poolCidrBlockSet':
          if (value != null) {
            result.poolCidrBlocks.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.PoolCidrBlock)],
              ),
            ) as _i4.BuiltList<_i2.PoolCidrBlock>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as Ipv6Pool);
    final result = <Object?>[
      const _i5.XmlElementName(
        'Ipv6PoolResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.poolId != null) {
      result
        ..add(const _i5.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          payload.poolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.poolCidrBlocks != null) {
      result
        ..add(const _i5.XmlElementName('PoolCidrBlockSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.poolCidrBlocks!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.PoolCidrBlock)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
