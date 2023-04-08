// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_capacity_reservation_fleet_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'cancel_capacity_reservation_fleet_error.g.dart';

/// Describes a Capacity Reservation Fleet cancellation error.
abstract class CancelCapacityReservationFleetError
    with
        _i1.AWSEquatable<CancelCapacityReservationFleetError>
    implements
        Built<CancelCapacityReservationFleetError,
            CancelCapacityReservationFleetErrorBuilder> {
  /// Describes a Capacity Reservation Fleet cancellation error.
  factory CancelCapacityReservationFleetError({
    String? code,
    String? message,
  }) {
    return _$CancelCapacityReservationFleetError._(
      code: code,
      message: message,
    );
  }

  /// Describes a Capacity Reservation Fleet cancellation error.
  factory CancelCapacityReservationFleetError.build(
          [void Function(CancelCapacityReservationFleetErrorBuilder) updates]) =
      _$CancelCapacityReservationFleetError;

  const CancelCapacityReservationFleetError._();

  static const List<_i2.SmithySerializer> serializers = [
    CancelCapacityReservationFleetErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelCapacityReservationFleetErrorBuilder b) {}

  /// The error code.
  String? get code;

  /// The error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelCapacityReservationFleetError');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class CancelCapacityReservationFleetErrorEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CancelCapacityReservationFleetError> {
  const CancelCapacityReservationFleetErrorEc2QuerySerializer()
      : super('CancelCapacityReservationFleetError');

  @override
  Iterable<Type> get types => const [
        CancelCapacityReservationFleetError,
        _$CancelCapacityReservationFleetError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelCapacityReservationFleetError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelCapacityReservationFleetErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as CancelCapacityReservationFleetError);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CancelCapacityReservationFleetErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
