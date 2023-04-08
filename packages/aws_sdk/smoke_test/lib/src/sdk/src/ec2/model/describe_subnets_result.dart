// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_subnets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet.dart' as _i2;

part 'describe_subnets_result.g.dart';

abstract class DescribeSubnetsResult
    with _i1.AWSEquatable<DescribeSubnetsResult>
    implements Built<DescribeSubnetsResult, DescribeSubnetsResultBuilder> {
  factory DescribeSubnetsResult({
    List<_i2.Subnet>? subnets,
    String? nextToken,
  }) {
    return _$DescribeSubnetsResult._(
      subnets: subnets == null ? null : _i3.BuiltList(subnets),
      nextToken: nextToken,
    );
  }

  factory DescribeSubnetsResult.build(
          [void Function(DescribeSubnetsResultBuilder) updates]) =
      _$DescribeSubnetsResult;

  const DescribeSubnetsResult._();

  /// Constructs a [DescribeSubnetsResult] from a [payload] and [response].
  factory DescribeSubnetsResult.fromResponse(
    DescribeSubnetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSubnetsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSubnetsResultBuilder b) {}

  /// Information about one or more subnets.
  _i3.BuiltList<_i2.Subnet>? get subnets;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        subnets,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSubnetsResult');
    helper.add(
      'subnets',
      subnets,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeSubnetsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeSubnetsResult> {
  const DescribeSubnetsResultEc2QuerySerializer()
      : super('DescribeSubnetsResult');

  @override
  Iterable<Type> get types => const [
        DescribeSubnetsResult,
        _$DescribeSubnetsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSubnetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSubnetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'subnetSet':
          if (value != null) {
            result.subnets.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Subnet)],
              ),
            ) as _i3.BuiltList<_i2.Subnet>));
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
    final payload = (object as DescribeSubnetsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeSubnetsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.subnets != null) {
      result
        ..add(const _i4.XmlElementName('SubnetSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.subnets!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Subnet)],
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
