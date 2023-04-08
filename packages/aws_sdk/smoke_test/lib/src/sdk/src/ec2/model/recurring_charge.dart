// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.recurring_charge; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge_frequency.dart'
    as _i2;

part 'recurring_charge.g.dart';

/// Describes a recurring charge.
abstract class RecurringCharge
    with _i1.AWSEquatable<RecurringCharge>
    implements Built<RecurringCharge, RecurringChargeBuilder> {
  /// Describes a recurring charge.
  factory RecurringCharge({
    double? amount,
    _i2.RecurringChargeFrequency? frequency,
  }) {
    amount ??= 0;
    return _$RecurringCharge._(
      amount: amount,
      frequency: frequency,
    );
  }

  /// Describes a recurring charge.
  factory RecurringCharge.build(
      [void Function(RecurringChargeBuilder) updates]) = _$RecurringCharge;

  const RecurringCharge._();

  static const List<_i3.SmithySerializer> serializers = [
    RecurringChargeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecurringChargeBuilder b) {
    b.amount = 0;
  }

  /// The amount of the recurring charge.
  double get amount;

  /// The frequency of the recurring charge.
  _i2.RecurringChargeFrequency? get frequency;
  @override
  List<Object?> get props => [
        amount,
        frequency,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecurringCharge');
    helper.add(
      'amount',
      amount,
    );
    helper.add(
      'frequency',
      frequency,
    );
    return helper.toString();
  }
}

class RecurringChargeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RecurringCharge> {
  const RecurringChargeEc2QuerySerializer() : super('RecurringCharge');

  @override
  Iterable<Type> get types => const [
        RecurringCharge,
        _$RecurringCharge,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RecurringCharge deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecurringChargeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'amount':
          result.amount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'frequency':
          if (value != null) {
            result.frequency = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RecurringChargeFrequency),
            ) as _i2.RecurringChargeFrequency);
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
    final payload = (object as RecurringCharge);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RecurringChargeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Amount'))
      ..add(serializers.serialize(
        payload.amount,
        specifiedType: const FullType(double),
      ));
    if (payload.frequency != null) {
      result
        ..add(const _i3.XmlElementName('Frequency'))
        ..add(serializers.serialize(
          payload.frequency!,
          specifiedType: const FullType.nullable(_i2.RecurringChargeFrequency),
        ));
    }
    return result;
  }
}
