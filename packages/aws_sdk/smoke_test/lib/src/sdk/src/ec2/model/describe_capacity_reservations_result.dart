// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_capacity_reservations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation.dart'
    as _i2;

part 'describe_capacity_reservations_result.g.dart';

abstract class DescribeCapacityReservationsResult
    with
        _i1.AWSEquatable<DescribeCapacityReservationsResult>
    implements
        Built<DescribeCapacityReservationsResult,
            DescribeCapacityReservationsResultBuilder> {
  factory DescribeCapacityReservationsResult({
    String? nextToken,
    List<_i2.CapacityReservation>? capacityReservations,
  }) {
    return _$DescribeCapacityReservationsResult._(
      nextToken: nextToken,
      capacityReservations: capacityReservations == null
          ? null
          : _i3.BuiltList(capacityReservations),
    );
  }

  factory DescribeCapacityReservationsResult.build(
          [void Function(DescribeCapacityReservationsResultBuilder) updates]) =
      _$DescribeCapacityReservationsResult;

  const DescribeCapacityReservationsResult._();

  /// Constructs a [DescribeCapacityReservationsResult] from a [payload] and [response].
  factory DescribeCapacityReservationsResult.fromResponse(
    DescribeCapacityReservationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeCapacityReservationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeCapacityReservationsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the Capacity Reservations.
  _i3.BuiltList<_i2.CapacityReservation>? get capacityReservations;
  @override
  List<Object?> get props => [
        nextToken,
        capacityReservations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeCapacityReservationsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'capacityReservations',
      capacityReservations,
    );
    return helper.toString();
  }
}

class DescribeCapacityReservationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeCapacityReservationsResult> {
  const DescribeCapacityReservationsResultEc2QuerySerializer()
      : super('DescribeCapacityReservationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeCapacityReservationsResult,
        _$DescribeCapacityReservationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCapacityReservationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCapacityReservationsResultBuilder();
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
        case 'capacityReservationSet':
          if (value != null) {
            result.capacityReservations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CapacityReservation)],
              ),
            ) as _i3.BuiltList<_i2.CapacityReservation>));
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
    final payload = (object as DescribeCapacityReservationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeCapacityReservationsResultResponse',
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
    if (payload.capacityReservations != null) {
      result
        ..add(const _i4.XmlElementName('CapacityReservationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.capacityReservations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CapacityReservation)],
          ),
        ));
    }
    return result;
  }
}
