// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.failed_capacity_reservation_fleet_cancellation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_capacity_reservation_fleet_error.dart'
    as _i2;

part 'failed_capacity_reservation_fleet_cancellation_result.g.dart';

/// Describes a Capacity Reservation Fleet that could not be cancelled.
abstract class FailedCapacityReservationFleetCancellationResult
    with
        _i1.AWSEquatable<FailedCapacityReservationFleetCancellationResult>
    implements
        Built<FailedCapacityReservationFleetCancellationResult,
            FailedCapacityReservationFleetCancellationResultBuilder> {
  /// Describes a Capacity Reservation Fleet that could not be cancelled.
  factory FailedCapacityReservationFleetCancellationResult({
    String? capacityReservationFleetId,
    _i2.CancelCapacityReservationFleetError?
        cancelCapacityReservationFleetError,
  }) {
    return _$FailedCapacityReservationFleetCancellationResult._(
      capacityReservationFleetId: capacityReservationFleetId,
      cancelCapacityReservationFleetError: cancelCapacityReservationFleetError,
    );
  }

  /// Describes a Capacity Reservation Fleet that could not be cancelled.
  factory FailedCapacityReservationFleetCancellationResult.build(
      [void Function(FailedCapacityReservationFleetCancellationResultBuilder)
          updates]) = _$FailedCapacityReservationFleetCancellationResult;

  const FailedCapacityReservationFleetCancellationResult._();

  static const List<_i3.SmithySerializer> serializers = [
    FailedCapacityReservationFleetCancellationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      FailedCapacityReservationFleetCancellationResultBuilder b) {}

  /// The ID of the Capacity Reservation Fleet that could not be cancelled.
  String? get capacityReservationFleetId;

  /// Information about the Capacity Reservation Fleet cancellation error.
  _i2.CancelCapacityReservationFleetError?
      get cancelCapacityReservationFleetError;
  @override
  List<Object?> get props => [
        capacityReservationFleetId,
        cancelCapacityReservationFleetError,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'FailedCapacityReservationFleetCancellationResult');
    helper.add(
      'capacityReservationFleetId',
      capacityReservationFleetId,
    );
    helper.add(
      'cancelCapacityReservationFleetError',
      cancelCapacityReservationFleetError,
    );
    return helper.toString();
  }
}

class FailedCapacityReservationFleetCancellationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        FailedCapacityReservationFleetCancellationResult> {
  const FailedCapacityReservationFleetCancellationResultEc2QuerySerializer()
      : super('FailedCapacityReservationFleetCancellationResult');

  @override
  Iterable<Type> get types => const [
        FailedCapacityReservationFleetCancellationResult,
        _$FailedCapacityReservationFleetCancellationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FailedCapacityReservationFleetCancellationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailedCapacityReservationFleetCancellationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'capacityReservationFleetId':
          if (value != null) {
            result.capacityReservationFleetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'cancelCapacityReservationFleetError':
          if (value != null) {
            result.cancelCapacityReservationFleetError
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.CancelCapacityReservationFleetError),
            ) as _i2.CancelCapacityReservationFleetError));
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
    final payload =
        (object as FailedCapacityReservationFleetCancellationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'FailedCapacityReservationFleetCancellationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityReservationFleetId != null) {
      result
        ..add(const _i3.XmlElementName('CapacityReservationFleetId'))
        ..add(serializers.serialize(
          payload.capacityReservationFleetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.cancelCapacityReservationFleetError != null) {
      result
        ..add(const _i3.XmlElementName('CancelCapacityReservationFleetError'))
        ..add(serializers.serialize(
          payload.cancelCapacityReservationFleetError!,
          specifiedType:
              const FullType(_i2.CancelCapacityReservationFleetError),
        ));
    }
    return result;
  }
}
