// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_spot_price_history_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_price.dart' as _i2;

part 'describe_spot_price_history_result.g.dart';

/// Contains the output of DescribeSpotPriceHistory.
abstract class DescribeSpotPriceHistoryResult
    with
        _i1.AWSEquatable<DescribeSpotPriceHistoryResult>
    implements
        Built<DescribeSpotPriceHistoryResult,
            DescribeSpotPriceHistoryResultBuilder> {
  /// Contains the output of DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryResult({
    String? nextToken,
    List<_i2.SpotPrice>? spotPriceHistory,
  }) {
    return _$DescribeSpotPriceHistoryResult._(
      nextToken: nextToken,
      spotPriceHistory:
          spotPriceHistory == null ? null : _i3.BuiltList(spotPriceHistory),
    );
  }

  /// Contains the output of DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryResult.build(
          [void Function(DescribeSpotPriceHistoryResultBuilder) updates]) =
      _$DescribeSpotPriceHistoryResult;

  const DescribeSpotPriceHistoryResult._();

  /// Constructs a [DescribeSpotPriceHistoryResult] from a [payload] and [response].
  factory DescribeSpotPriceHistoryResult.fromResponse(
    DescribeSpotPriceHistoryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSpotPriceHistoryResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotPriceHistoryResultBuilder b) {}

  /// The token required to retrieve the next set of results. This value is null or an empty string when there are no more results to return.
  String? get nextToken;

  /// The historical Spot prices.
  _i3.BuiltList<_i2.SpotPrice>? get spotPriceHistory;
  @override
  List<Object?> get props => [
        nextToken,
        spotPriceHistory,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotPriceHistoryResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'spotPriceHistory',
      spotPriceHistory,
    );
    return helper.toString();
  }
}

class DescribeSpotPriceHistoryResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeSpotPriceHistoryResult> {
  const DescribeSpotPriceHistoryResultEc2QuerySerializer()
      : super('DescribeSpotPriceHistoryResult');

  @override
  Iterable<Type> get types => const [
        DescribeSpotPriceHistoryResult,
        _$DescribeSpotPriceHistoryResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotPriceHistoryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotPriceHistoryResultBuilder();
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
        case 'spotPriceHistorySet':
          if (value != null) {
            result.spotPriceHistory.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SpotPrice)],
              ),
            ) as _i3.BuiltList<_i2.SpotPrice>));
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
    final payload = (object as DescribeSpotPriceHistoryResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeSpotPriceHistoryResultResponse',
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
    if (payload.spotPriceHistory != null) {
      result
        ..add(const _i4.XmlElementName('SpotPriceHistorySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.spotPriceHistory!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SpotPrice)],
          ),
        ));
    }
    return result;
  }
}
