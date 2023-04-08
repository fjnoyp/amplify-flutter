// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.coip_pool; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'coip_pool.g.dart';

/// Describes a customer-owned address pool.
abstract class CoipPool
    with _i1.AWSEquatable<CoipPool>
    implements Built<CoipPool, CoipPoolBuilder> {
  /// Describes a customer-owned address pool.
  factory CoipPool({
    String? poolId,
    List<String>? poolCidrs,
    String? localGatewayRouteTableId,
    List<_i2.Tag>? tags,
    String? poolArn,
  }) {
    return _$CoipPool._(
      poolId: poolId,
      poolCidrs: poolCidrs == null ? null : _i3.BuiltList(poolCidrs),
      localGatewayRouteTableId: localGatewayRouteTableId,
      tags: tags == null ? null : _i3.BuiltList(tags),
      poolArn: poolArn,
    );
  }

  /// Describes a customer-owned address pool.
  factory CoipPool.build([void Function(CoipPoolBuilder) updates]) = _$CoipPool;

  const CoipPool._();

  static const List<_i4.SmithySerializer> serializers = [
    CoipPoolEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CoipPoolBuilder b) {}

  /// The ID of the address pool.
  String? get poolId;

  /// The address ranges of the address pool.
  _i3.BuiltList<String>? get poolCidrs;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The tags.
  _i3.BuiltList<_i2.Tag>? get tags;

  /// The ARN of the address pool.
  String? get poolArn;
  @override
  List<Object?> get props => [
        poolId,
        poolCidrs,
        localGatewayRouteTableId,
        tags,
        poolArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CoipPool');
    helper.add(
      'poolId',
      poolId,
    );
    helper.add(
      'poolCidrs',
      poolCidrs,
    );
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'poolArn',
      poolArn,
    );
    return helper.toString();
  }
}

class CoipPoolEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CoipPool> {
  const CoipPoolEc2QuerySerializer() : super('CoipPool');

  @override
  Iterable<Type> get types => const [
        CoipPool,
        _$CoipPool,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CoipPool deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoipPoolBuilder();
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
        case 'poolCidrSet':
          if (value != null) {
            result.poolCidrs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'localGatewayRouteTableId':
          if (value != null) {
            result.localGatewayRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
          }
          break;
        case 'poolArn':
          if (value != null) {
            result.poolArn = (serializers.deserialize(
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
    final payload = (object as CoipPool);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CoipPoolResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.poolId != null) {
      result
        ..add(const _i4.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          payload.poolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.poolCidrs != null) {
      result
        ..add(const _i4.XmlElementName('PoolCidrSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.poolCidrs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.localGatewayRouteTableId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    if (payload.poolArn != null) {
      result
        ..add(const _i4.XmlElementName('PoolArn'))
        ..add(serializers.serialize(
          payload.poolArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
