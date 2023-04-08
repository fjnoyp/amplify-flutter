// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_coip_pools_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/coip_pool.dart' as _i2;

part 'describe_coip_pools_result.g.dart';

abstract class DescribeCoipPoolsResult
    with _i1.AWSEquatable<DescribeCoipPoolsResult>
    implements Built<DescribeCoipPoolsResult, DescribeCoipPoolsResultBuilder> {
  factory DescribeCoipPoolsResult({
    List<_i2.CoipPool>? coipPools,
    String? nextToken,
  }) {
    return _$DescribeCoipPoolsResult._(
      coipPools: coipPools == null ? null : _i3.BuiltList(coipPools),
      nextToken: nextToken,
    );
  }

  factory DescribeCoipPoolsResult.build(
          [void Function(DescribeCoipPoolsResultBuilder) updates]) =
      _$DescribeCoipPoolsResult;

  const DescribeCoipPoolsResult._();

  /// Constructs a [DescribeCoipPoolsResult] from a [payload] and [response].
  factory DescribeCoipPoolsResult.fromResponse(
    DescribeCoipPoolsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeCoipPoolsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeCoipPoolsResultBuilder b) {}

  /// Information about the address pools.
  _i3.BuiltList<_i2.CoipPool>? get coipPools;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        coipPools,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeCoipPoolsResult');
    helper.add(
      'coipPools',
      coipPools,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeCoipPoolsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeCoipPoolsResult> {
  const DescribeCoipPoolsResultEc2QuerySerializer()
      : super('DescribeCoipPoolsResult');

  @override
  Iterable<Type> get types => const [
        DescribeCoipPoolsResult,
        _$DescribeCoipPoolsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCoipPoolsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCoipPoolsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'coipPoolSet':
          if (value != null) {
            result.coipPools.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CoipPool)],
              ),
            ) as _i3.BuiltList<_i2.CoipPool>));
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
    final payload = (object as DescribeCoipPoolsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeCoipPoolsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.coipPools != null) {
      result
        ..add(const _i4.XmlElementName('CoipPoolSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.coipPools!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CoipPool)],
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
