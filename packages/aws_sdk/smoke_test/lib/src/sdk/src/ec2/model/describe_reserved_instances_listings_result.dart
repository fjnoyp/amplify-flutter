// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_reserved_instances_listings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_listing.dart'
    as _i2;

part 'describe_reserved_instances_listings_result.g.dart';

/// Contains the output of DescribeReservedInstancesListings.
abstract class DescribeReservedInstancesListingsResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesListingsResult>
    implements
        Built<DescribeReservedInstancesListingsResult,
            DescribeReservedInstancesListingsResultBuilder> {
  /// Contains the output of DescribeReservedInstancesListings.
  factory DescribeReservedInstancesListingsResult(
      {List<_i2.ReservedInstancesListing>? reservedInstancesListings}) {
    return _$DescribeReservedInstancesListingsResult._(
        reservedInstancesListings: reservedInstancesListings == null
            ? null
            : _i3.BuiltList(reservedInstancesListings));
  }

  /// Contains the output of DescribeReservedInstancesListings.
  factory DescribeReservedInstancesListingsResult.build(
      [void Function(DescribeReservedInstancesListingsResultBuilder)
          updates]) = _$DescribeReservedInstancesListingsResult;

  const DescribeReservedInstancesListingsResult._();

  /// Constructs a [DescribeReservedInstancesListingsResult] from a [payload] and [response].
  factory DescribeReservedInstancesListingsResult.fromResponse(
    DescribeReservedInstancesListingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeReservedInstancesListingsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReservedInstancesListingsResultBuilder b) {}

  /// Information about the Reserved Instance listing.
  _i3.BuiltList<_i2.ReservedInstancesListing>? get reservedInstancesListings;
  @override
  List<Object?> get props => [reservedInstancesListings];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesListingsResult');
    helper.add(
      'reservedInstancesListings',
      reservedInstancesListings,
    );
    return helper.toString();
  }
}

class DescribeReservedInstancesListingsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeReservedInstancesListingsResult> {
  const DescribeReservedInstancesListingsResultEc2QuerySerializer()
      : super('DescribeReservedInstancesListingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesListingsResult,
        _$DescribeReservedInstancesListingsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesListingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesListingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservedInstancesListingsSet':
          if (value != null) {
            result.reservedInstancesListings
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ReservedInstancesListing)],
              ),
            ) as _i3.BuiltList<_i2.ReservedInstancesListing>));
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
    final payload = (object as DescribeReservedInstancesListingsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeReservedInstancesListingsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstancesListings != null) {
      result
        ..add(const _i4.XmlElementName('ReservedInstancesListingsSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.reservedInstancesListings!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ReservedInstancesListing)],
          ),
        ));
    }
    return result;
  }
}
