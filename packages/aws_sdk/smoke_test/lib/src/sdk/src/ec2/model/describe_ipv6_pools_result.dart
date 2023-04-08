// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_ipv6_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_pool.dart' as _i2;

part 'describe_ipv6_pools_result.g.dart';

abstract class DescribeIpv6PoolsResult
    with _i1.AWSEquatable<DescribeIpv6PoolsResult>
    implements Built<DescribeIpv6PoolsResult, DescribeIpv6PoolsResultBuilder> {
  factory DescribeIpv6PoolsResult({
    List<_i2.Ipv6Pool>? ipv6Pools,
    String? nextToken,
  }) {
    return _$DescribeIpv6PoolsResult._(
      ipv6Pools: ipv6Pools == null ? null : _i3.BuiltList(ipv6Pools),
      nextToken: nextToken,
    );
  }

  factory DescribeIpv6PoolsResult.build(
          [void Function(DescribeIpv6PoolsResultBuilder) updates]) =
      _$DescribeIpv6PoolsResult;

  const DescribeIpv6PoolsResult._();

  /// Constructs a [DescribeIpv6PoolsResult] from a [payload] and [response].
  factory DescribeIpv6PoolsResult.fromResponse(
    DescribeIpv6PoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeIpv6PoolsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpv6PoolsResultBuilder b) {}

  /// Information about the IPv6 address pools.
  _i3.BuiltList<_i2.Ipv6Pool>? get ipv6Pools;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipv6Pools,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpv6PoolsResult');
    helper.add(
      'ipv6Pools',
      ipv6Pools,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeIpv6PoolsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeIpv6PoolsResult> {
  const DescribeIpv6PoolsResultEc2QuerySerializer()
      : super('DescribeIpv6PoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpv6PoolsResult,
        _$DescribeIpv6PoolsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpv6PoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpv6PoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6PoolSet':
          if (value != null) {
            result.ipv6Pools.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Ipv6Pool)],
              ),
            ) as _i3.BuiltList<_i2.Ipv6Pool>));
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
    final payload = (object as DescribeIpv6PoolsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeIpv6PoolsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6Pools != null) {
      result
        ..add(const _i4.XmlElementName('Ipv6PoolSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Pools!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Ipv6Pool)],
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
