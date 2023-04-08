// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.price_schedule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;

part 'price_schedule.g.dart';

/// Describes the price for a Reserved Instance.
abstract class PriceSchedule
    with _i1.AWSEquatable<PriceSchedule>
    implements Built<PriceSchedule, PriceScheduleBuilder> {
  /// Describes the price for a Reserved Instance.
  factory PriceSchedule({
    bool? active,
    _i2.CurrencyCodeValues? currencyCode,
    double? price,
    _i3.Int64? term,
  }) {
    active ??= false;
    price ??= 0;
    term ??= _i3.Int64.ZERO;
    return _$PriceSchedule._(
      active: active,
      currencyCode: currencyCode,
      price: price,
      term: term,
    );
  }

  /// Describes the price for a Reserved Instance.
  factory PriceSchedule.build([void Function(PriceScheduleBuilder) updates]) =
      _$PriceSchedule;

  const PriceSchedule._();

  static const List<_i4.SmithySerializer> serializers = [
    PriceScheduleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PriceScheduleBuilder b) {
    b.active = false;
    b.price = 0;
    b.term = _i3.Int64.ZERO;
  }

  /// The current price schedule, as determined by the term remaining for the Reserved Instance in the listing.
  ///
  /// A specific price schedule is always in effect, but only one price schedule can be active at any time. Take, for example, a Reserved Instance listing that has five months remaining in its term. When you specify price schedules for five months and two months, this means that schedule 1, covering the first three months of the remaining term, will be active during months 5, 4, and 3. Then schedule 2, covering the last two months of the term, will be active for months 2 and 1.
  bool get active;

  /// The currency for transacting the Reserved Instance resale. At this time, the only supported currency is `USD`.
  _i2.CurrencyCodeValues? get currencyCode;

  /// The fixed price for the term.
  double get price;

  /// The number of months remaining in the reservation. For example, 2 is the second to the last month before the capacity reservation expires.
  _i3.Int64 get term;
  @override
  List<Object?> get props => [
        active,
        currencyCode,
        price,
        term,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PriceSchedule');
    helper.add(
      'active',
      active,
    );
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'price',
      price,
    );
    helper.add(
      'term',
      term,
    );
    return helper.toString();
  }
}

class PriceScheduleEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<PriceSchedule> {
  const PriceScheduleEc2QuerySerializer() : super('PriceSchedule');

  @override
  Iterable<Type> get types => const [
        PriceSchedule,
        _$PriceSchedule,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PriceSchedule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceScheduleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'active':
          result.active = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'currencyCode':
          if (value != null) {
            result.currencyCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CurrencyCodeValues),
            ) as _i2.CurrencyCodeValues);
          }
          break;
        case 'price':
          result.price = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'term':
          result.term = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
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
    final payload = (object as PriceSchedule);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PriceScheduleResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Active'))
      ..add(serializers.serialize(
        payload.active,
        specifiedType: const FullType(bool),
      ));
    if (payload.currencyCode != null) {
      result
        ..add(const _i4.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType.nullable(_i2.CurrencyCodeValues),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Price'))
      ..add(serializers.serialize(
        payload.price,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i4.XmlElementName('Term'))
      ..add(serializers.serialize(
        payload.term,
        specifiedType: const FullType(_i3.Int64),
      ));
    return result;
  }
}
