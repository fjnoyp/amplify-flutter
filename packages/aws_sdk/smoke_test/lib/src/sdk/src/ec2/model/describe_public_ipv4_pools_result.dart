// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_public_ipv4_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool.dart' as _i2;

part 'describe_public_ipv4_pools_result.g.dart';

abstract class DescribePublicIpv4PoolsResult
    with
        _i1.AWSEquatable<DescribePublicIpv4PoolsResult>
    implements
        Built<DescribePublicIpv4PoolsResult,
            DescribePublicIpv4PoolsResultBuilder> {
  factory DescribePublicIpv4PoolsResult({
    List<_i2.PublicIpv4Pool>? publicIpv4Pools,
    String? nextToken,
  }) {
    return _$DescribePublicIpv4PoolsResult._(
      publicIpv4Pools:
          publicIpv4Pools == null ? null : _i3.BuiltList(publicIpv4Pools),
      nextToken: nextToken,
    );
  }

  factory DescribePublicIpv4PoolsResult.build(
          [void Function(DescribePublicIpv4PoolsResultBuilder) updates]) =
      _$DescribePublicIpv4PoolsResult;

  const DescribePublicIpv4PoolsResult._();

  /// Constructs a [DescribePublicIpv4PoolsResult] from a [payload] and [response].
  factory DescribePublicIpv4PoolsResult.fromResponse(
    DescribePublicIpv4PoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribePublicIpv4PoolsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePublicIpv4PoolsResultBuilder b) {}

  /// Information about the address pools.
  _i3.BuiltList<_i2.PublicIpv4Pool>? get publicIpv4Pools;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        publicIpv4Pools,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePublicIpv4PoolsResult');
    helper.add(
      'publicIpv4Pools',
      publicIpv4Pools,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribePublicIpv4PoolsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribePublicIpv4PoolsResult> {
  const DescribePublicIpv4PoolsResultEc2QuerySerializer()
      : super('DescribePublicIpv4PoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribePublicIpv4PoolsResult,
        _$DescribePublicIpv4PoolsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePublicIpv4PoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePublicIpv4PoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'publicIpv4PoolSet':
          if (value != null) {
            result.publicIpv4Pools.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PublicIpv4Pool)],
              ),
            ) as _i3.BuiltList<_i2.PublicIpv4Pool>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribePublicIpv4PoolsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribePublicIpv4PoolsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.publicIpv4Pools != null) {
      result
        ..add(const _i4.XmlElementName('PublicIpv4PoolSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.publicIpv4Pools!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PublicIpv4Pool)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
