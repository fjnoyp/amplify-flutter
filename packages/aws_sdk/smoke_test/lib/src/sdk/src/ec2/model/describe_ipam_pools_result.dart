// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_ipam_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool.dart' as _i2;

part 'describe_ipam_pools_result.g.dart';

abstract class DescribeIpamPoolsResult
    with _i1.AWSEquatable<DescribeIpamPoolsResult>
    implements Built<DescribeIpamPoolsResult, DescribeIpamPoolsResultBuilder> {
  factory DescribeIpamPoolsResult({
    String? nextToken,
    List<_i2.IpamPool>? ipamPools,
  }) {
    return _$DescribeIpamPoolsResult._(
      nextToken: nextToken,
      ipamPools: ipamPools == null ? null : _i3.BuiltList(ipamPools),
    );
  }

  factory DescribeIpamPoolsResult.build(
          [void Function(DescribeIpamPoolsResultBuilder) updates]) =
      _$DescribeIpamPoolsResult;

  const DescribeIpamPoolsResult._();

  /// Constructs a [DescribeIpamPoolsResult] from a [payload] and [response].
  factory DescribeIpamPoolsResult.fromResponse(
    DescribeIpamPoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeIpamPoolsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpamPoolsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the IPAM pools.
  _i3.BuiltList<_i2.IpamPool>? get ipamPools;
  @override
  List<Object?> get props => [
        nextToken,
        ipamPools,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpamPoolsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'ipamPools',
      ipamPools,
    );
    return helper.toString();
  }
}

class DescribeIpamPoolsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeIpamPoolsResult> {
  const DescribeIpamPoolsResultEc2QuerySerializer()
      : super('DescribeIpamPoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamPoolsResult,
        _$DescribeIpamPoolsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamPoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamPoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamPoolSet':
          if (value != null) {
            result.ipamPools.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IpamPool)],
              ),
            ) as _i3.BuiltList<_i2.IpamPool>));
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
    final payload = (object as DescribeIpamPoolsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeIpamPoolsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamPools != null) {
      result
        ..add(const _i4.XmlElementName('IpamPoolSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipamPools!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IpamPool)],
          ),
        ));
    }
    return result;
  }
}
