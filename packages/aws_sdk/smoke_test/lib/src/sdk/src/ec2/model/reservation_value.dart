// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reservation_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'reservation_value.g.dart';

/// The cost associated with the Reserved Instance.
abstract class ReservationValue
    with _i1.AWSEquatable<ReservationValue>
    implements Built<ReservationValue, ReservationValueBuilder> {
  /// The cost associated with the Reserved Instance.
  factory ReservationValue({
    String? hourlyPrice,
    String? remainingTotalValue,
    String? remainingUpfrontValue,
  }) {
    return _$ReservationValue._(
      hourlyPrice: hourlyPrice,
      remainingTotalValue: remainingTotalValue,
      remainingUpfrontValue: remainingUpfrontValue,
    );
  }

  /// The cost associated with the Reserved Instance.
  factory ReservationValue.build(
      [void Function(ReservationValueBuilder) updates]) = _$ReservationValue;

  const ReservationValue._();

  static const List<_i2.SmithySerializer> serializers = [
    ReservationValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservationValueBuilder b) {}

  /// The hourly rate of the reservation.
  String? get hourlyPrice;

  /// The balance of the total value (the sum of remainingUpfrontValue + hourlyPrice * number of hours remaining).
  String? get remainingTotalValue;

  /// The remaining upfront cost of the reservation.
  String? get remainingUpfrontValue;
  @override
  List<Object?> get props => [
        hourlyPrice,
        remainingTotalValue,
        remainingUpfrontValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservationValue');
    helper.add(
      'hourlyPrice',
      hourlyPrice,
    );
    helper.add(
      'remainingTotalValue',
      remainingTotalValue,
    );
    helper.add(
      'remainingUpfrontValue',
      remainingUpfrontValue,
    );
    return helper.toString();
  }
}

class ReservationValueEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReservationValue> {
  const ReservationValueEc2QuerySerializer() : super('ReservationValue');

  @override
  Iterable<Type> get types => const [
        ReservationValue,
        _$ReservationValue,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservationValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservationValueBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'hourlyPrice':
          if (value != null) {
            result.hourlyPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'remainingTotalValue':
          if (value != null) {
            result.remainingTotalValue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'remainingUpfrontValue':
          if (value != null) {
            result.remainingUpfrontValue = (serializers.deserialize(
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
    final payload = (object as ReservationValue);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ReservationValueResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.hourlyPrice != null) {
      result
        ..add(const _i2.XmlElementName('HourlyPrice'))
        ..add(serializers.serialize(
          payload.hourlyPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.remainingTotalValue != null) {
      result
        ..add(const _i2.XmlElementName('RemainingTotalValue'))
        ..add(serializers.serialize(
          payload.remainingTotalValue!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.remainingUpfrontValue != null) {
      result
        ..add(const _i2.XmlElementName('RemainingUpfrontValue'))
        ..add(serializers.serialize(
          payload.remainingUpfrontValue!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
