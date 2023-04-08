// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_capacity_reservation_fleets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_cancellation_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/failed_capacity_reservation_fleet_cancellation_result.dart'
    as _i3;

part 'cancel_capacity_reservation_fleets_result.g.dart';

abstract class CancelCapacityReservationFleetsResult
    with
        _i1.AWSEquatable<CancelCapacityReservationFleetsResult>
    implements
        Built<CancelCapacityReservationFleetsResult,
            CancelCapacityReservationFleetsResultBuilder> {
  factory CancelCapacityReservationFleetsResult({
    List<_i2.CapacityReservationFleetCancellationState>?
        successfulFleetCancellations,
    List<_i3.FailedCapacityReservationFleetCancellationResult>?
        failedFleetCancellations,
  }) {
    return _$CancelCapacityReservationFleetsResult._(
      successfulFleetCancellations: successfulFleetCancellations == null
          ? null
          : _i4.BuiltList(successfulFleetCancellations),
      failedFleetCancellations: failedFleetCancellations == null
          ? null
          : _i4.BuiltList(failedFleetCancellations),
    );
  }

  factory CancelCapacityReservationFleetsResult.build(
      [void Function(CancelCapacityReservationFleetsResultBuilder)
          updates]) = _$CancelCapacityReservationFleetsResult;

  const CancelCapacityReservationFleetsResult._();

  /// Constructs a [CancelCapacityReservationFleetsResult] from a [payload] and [response].
  factory CancelCapacityReservationFleetsResult.fromResponse(
    CancelCapacityReservationFleetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    CancelCapacityReservationFleetsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelCapacityReservationFleetsResultBuilder b) {}

  /// Information about the Capacity Reservation Fleets that were successfully cancelled.
  _i4.BuiltList<_i2.CapacityReservationFleetCancellationState>?
      get successfulFleetCancellations;

  /// Information about the Capacity Reservation Fleets that could not be cancelled.
  _i4.BuiltList<_i3.FailedCapacityReservationFleetCancellationResult>?
      get failedFleetCancellations;
  @override
  List<Object?> get props => [
        successfulFleetCancellations,
        failedFleetCancellations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelCapacityReservationFleetsResult');
    helper.add(
      'successfulFleetCancellations',
      successfulFleetCancellations,
    );
    helper.add(
      'failedFleetCancellations',
      failedFleetCancellations,
    );
    return helper.toString();
  }
}

class CancelCapacityReservationFleetsResultEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<CancelCapacityReservationFleetsResult> {
  const CancelCapacityReservationFleetsResultEc2QuerySerializer()
      : super('CancelCapacityReservationFleetsResult');

  @override
  Iterable<Type> get types => const [
        CancelCapacityReservationFleetsResult,
        _$CancelCapacityReservationFleetsResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelCapacityReservationFleetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelCapacityReservationFleetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successfulFleetCancellationSet':
          if (value != null) {
            result.successfulFleetCancellations
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.CapacityReservationFleetCancellationState)],
              ),
            ) as _i4.BuiltList<_i2.CapacityReservationFleetCancellationState>));
          }
          break;
        case 'failedFleetCancellationSet':
          if (value != null) {
            result.failedFleetCancellations.replace(
                (const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [
                  FullType(_i3.FailedCapacityReservationFleetCancellationResult)
                ],
              ),
            ) as _i4.BuiltList<
                    _i3.FailedCapacityReservationFleetCancellationResult>));
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
    final payload = (object as CancelCapacityReservationFleetsResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'CancelCapacityReservationFleetsResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successfulFleetCancellations != null) {
      result
        ..add(const _i5.XmlElementName('SuccessfulFleetCancellationSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successfulFleetCancellations!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.CapacityReservationFleetCancellationState)],
          ),
        ));
    }
    if (payload.failedFleetCancellations != null) {
      result
        ..add(const _i5.XmlElementName('FailedFleetCancellationSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.failedFleetCancellations!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.FailedCapacityReservationFleetCancellationResult)],
          ),
        ));
    }
    return result;
  }
}
