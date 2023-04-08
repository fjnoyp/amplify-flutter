// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.target_reservation_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_value.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/target_configuration.dart'
    as _i3;

part 'target_reservation_value.g.dart';

/// The total value of the new Convertible Reserved Instances.
abstract class TargetReservationValue
    with _i1.AWSEquatable<TargetReservationValue>
    implements Built<TargetReservationValue, TargetReservationValueBuilder> {
  /// The total value of the new Convertible Reserved Instances.
  factory TargetReservationValue({
    _i2.ReservationValue? reservationValue,
    _i3.TargetConfiguration? targetConfiguration,
  }) {
    return _$TargetReservationValue._(
      reservationValue: reservationValue,
      targetConfiguration: targetConfiguration,
    );
  }

  /// The total value of the new Convertible Reserved Instances.
  factory TargetReservationValue.build(
          [void Function(TargetReservationValueBuilder) updates]) =
      _$TargetReservationValue;

  const TargetReservationValue._();

  static const List<_i4.SmithySerializer> serializers = [
    TargetReservationValueEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TargetReservationValueBuilder b) {}

  /// The total value of the Convertible Reserved Instances that make up the exchange. This is the sum of the list value, remaining upfront price, and additional upfront cost of the exchange.
  _i2.ReservationValue? get reservationValue;

  /// The configuration of the Convertible Reserved Instances that make up the exchange.
  _i3.TargetConfiguration? get targetConfiguration;
  @override
  List<Object?> get props => [
        reservationValue,
        targetConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetReservationValue');
    helper.add(
      'reservationValue',
      reservationValue,
    );
    helper.add(
      'targetConfiguration',
      targetConfiguration,
    );
    return helper.toString();
  }
}

class TargetReservationValueEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TargetReservationValue> {
  const TargetReservationValueEc2QuerySerializer()
      : super('TargetReservationValue');

  @override
  Iterable<Type> get types => const [
        TargetReservationValue,
        _$TargetReservationValue,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetReservationValue deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetReservationValueBuilder();
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
        case 'targetConfiguration':
          if (value != null) {
            result.targetConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TargetConfiguration),
            ) as _i3.TargetConfiguration));
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
    final payload = (object as TargetReservationValue);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TargetReservationValueResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservationValue != null) {
      result
        ..add(const _i4.XmlElementName('ReservationValue'))
        ..add(serializers.serialize(
          payload.reservationValue!,
          specifiedType: const FullType(_i2.ReservationValue),
        ));
    }
    if (payload.targetConfiguration != null) {
      result
        ..add(const _i4.XmlElementName('TargetConfiguration'))
        ..add(serializers.serialize(
          payload.targetConfiguration!,
          specifiedType: const FullType(_i3.TargetConfiguration),
        ));
    }
    return result;
  }
}
