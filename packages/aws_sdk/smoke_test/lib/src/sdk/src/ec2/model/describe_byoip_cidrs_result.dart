// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_byoip_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr.dart' as _i2;

part 'describe_byoip_cidrs_result.g.dart';

abstract class DescribeByoipCidrsResult
    with _i1.AWSEquatable<DescribeByoipCidrsResult>
    implements
        Built<DescribeByoipCidrsResult, DescribeByoipCidrsResultBuilder> {
  factory DescribeByoipCidrsResult({
    List<_i2.ByoipCidr>? byoipCidrs,
    String? nextToken,
  }) {
    return _$DescribeByoipCidrsResult._(
      byoipCidrs: byoipCidrs == null ? null : _i3.BuiltList(byoipCidrs),
      nextToken: nextToken,
    );
  }

  factory DescribeByoipCidrsResult.build(
          [void Function(DescribeByoipCidrsResultBuilder) updates]) =
      _$DescribeByoipCidrsResult;

  const DescribeByoipCidrsResult._();

  /// Constructs a [DescribeByoipCidrsResult] from a [payload] and [response].
  factory DescribeByoipCidrsResult.fromResponse(
    DescribeByoipCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeByoipCidrsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeByoipCidrsResultBuilder b) {}

  /// Information about your address ranges.
  _i3.BuiltList<_i2.ByoipCidr>? get byoipCidrs;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        byoipCidrs,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeByoipCidrsResult');
    helper.add(
      'byoipCidrs',
      byoipCidrs,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeByoipCidrsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeByoipCidrsResult> {
  const DescribeByoipCidrsResultEc2QuerySerializer()
      : super('DescribeByoipCidrsResult');

  @override
  Iterable<Type> get types => const [
        DescribeByoipCidrsResult,
        _$DescribeByoipCidrsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeByoipCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeByoipCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'byoipCidrSet':
          if (value != null) {
            result.byoipCidrs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ByoipCidr)],
              ),
            ) as _i3.BuiltList<_i2.ByoipCidr>));
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
    final payload = (object as DescribeByoipCidrsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeByoipCidrsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.byoipCidrs != null) {
      result
        ..add(const _i4.XmlElementName('ByoipCidrSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.byoipCidrs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ByoipCidr)],
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
