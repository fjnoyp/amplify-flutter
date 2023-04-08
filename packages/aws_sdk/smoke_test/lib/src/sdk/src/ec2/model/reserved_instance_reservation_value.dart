// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instance_reservation_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_value.dart' as _i2;

part 'reserved_instance_reservation_value.g.dart';

/// The total value of the Convertible Reserved Instance.
abstract class ReservedInstanceReservationValue
    with
        _i1.AWSEquatable<ReservedInstanceReservationValue>
    implements
        Built<ReservedInstanceReservationValue,
            ReservedInstanceReservationValueBuilder> {
  /// The total value of the Convertible Reserved Instance.
  factory ReservedInstanceReservationValue({
    _i2.ReservationValue? reservationValue,
    String? reservedInstanceId,
  }) {
    return _$ReservedInstanceReservationValue._(
      reservationValue: reservationValue,
      reservedInstanceId: reservedInstanceId,
    );
  }

  /// The total value of the Convertible Reserved Instance.
  factory ReservedInstanceReservationValue.build(
          [void Function(ReservedInstanceReservationValueBuilder) updates]) =
      _$ReservedInstanceReservationValue;

  const ReservedInstanceReservationValue._();

  static const List<_i3.SmithySerializer> serializers = [
    ReservedInstanceReservationValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstanceReservationValueBuilder b) {}

  /// The total value of the Convertible Reserved Instance that you are exchanging.
  _i2.ReservationValue? get reservationValue;

  /// The ID of the Convertible Reserved Instance that you are exchanging.
  String? get reservedInstanceId;
  @override
  List<Object?> get props => [
        reservationValue,
        reservedInstanceId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReservedInstanceReservationValue');
    helper.add(
      'reservationValue',
      reservationValue,
    );
    helper.add(
      'reservedInstanceId',
      reservedInstanceId,
    );
    return helper.toString();
  }
}

class ReservedInstanceReservationValueEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ReservedInstanceReservationValue> {
  const ReservedInstanceReservationValueEc2QuerySerializer()
      : super('ReservedInstanceReservationValue');

  @override
  Iterable<Type> get types => const [
        ReservedInstanceReservationValue,
        _$ReservedInstanceReservationValue,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstanceReservationValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstanceReservationValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservationValue':
          if (value != null) {
            result.reservationValue.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReservationValue),
            ) as _i2.ReservationValue));
          }
          break;
        case 'reservedInstanceId':
          if (value != null) {
            result.reservedInstanceId = (serializers.deserialize(
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
    final payload = (object as ReservedInstanceReservationValue);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ReservedInstanceReservationValueResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservationValue != null) {
      result
        ..add(const _i3.XmlElementName('ReservationValue'))
        ..add(serializers.serialize(
          payload.reservationValue!,
          specifiedType: const FullType(_i2.ReservationValue),
        ));
    }
    if (payload.reservedInstanceId != null) {
      result
        ..add(const _i3.XmlElementName('ReservedInstanceId'))
        ..add(serializers.serialize(
          payload.reservedInstanceId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
