// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_reserved_instances_offerings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_offering.dart'
    as _i2;

part 'describe_reserved_instances_offerings_result.g.dart';

/// Contains the output of DescribeReservedInstancesOfferings.
abstract class DescribeReservedInstancesOfferingsResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesOfferingsResult>
    implements
        Built<DescribeReservedInstancesOfferingsResult,
            DescribeReservedInstancesOfferingsResultBuilder> {
  /// Contains the output of DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsResult({
    List<_i2.ReservedInstancesOffering>? reservedInstancesOfferings,
    String? nextToken,
  }) {
    return _$DescribeReservedInstancesOfferingsResult._(
      reservedInstancesOfferings: reservedInstancesOfferings == null
          ? null
          : _i3.BuiltList(reservedInstancesOfferings),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsResult.build(
      [void Function(DescribeReservedInstancesOfferingsResultBuilder)
          updates]) = _$DescribeReservedInstancesOfferingsResult;

  const DescribeReservedInstancesOfferingsResult._();

  /// Constructs a [DescribeReservedInstancesOfferingsResult] from a [payload] and [response].
  factory DescribeReservedInstancesOfferingsResult.fromResponse(
    DescribeReservedInstancesOfferingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeReservedInstancesOfferingsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReservedInstancesOfferingsResultBuilder b) {}

  /// A list of Reserved Instances offerings.
  _i3.BuiltList<_i2.ReservedInstancesOffering>? get reservedInstancesOfferings;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        reservedInstancesOfferings,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesOfferingsResult');
    helper.add(
      'reservedInstancesOfferings',
      reservedInstancesOfferings,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeReservedInstancesOfferingsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeReservedInstancesOfferingsResult> {
  const DescribeReservedInstancesOfferingsResultEc2QuerySerializer()
      : super('DescribeReservedInstancesOfferingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesOfferingsResult,
        _$DescribeReservedInstancesOfferingsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesOfferingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesOfferingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservedInstancesOfferingsSet':
          if (value != null) {
            result.reservedInstancesOfferings
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ReservedInstancesOffering)],
              ),
            ) as _i3.BuiltList<_i2.ReservedInstancesOffering>));
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
    final payload = (object as DescribeReservedInstancesOfferingsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeReservedInstancesOfferingsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstancesOfferings != null) {
      result
        ..add(const _i4.XmlElementName('ReservedInstancesOfferingsSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.reservedInstancesOfferings!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ReservedInstancesOffering)],
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
