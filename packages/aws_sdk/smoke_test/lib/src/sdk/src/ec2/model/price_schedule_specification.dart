// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.price_schedule_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;

part 'price_schedule_specification.g.dart';

/// Describes the price for a Reserved Instance.
abstract class PriceScheduleSpecification
    with _i1.AWSEquatable<PriceScheduleSpecification>
    implements
        Built<PriceScheduleSpecification, PriceScheduleSpecificationBuilder> {
  /// Describes the price for a Reserved Instance.
  factory PriceScheduleSpecification({
    _i2.CurrencyCodeValues? currencyCode,
    double? price,
    _i3.Int64? term,
  }) {
    price ??= 0;
    term ??= _i3.Int64.ZERO;
    return _$PriceScheduleSpecification._(
      currencyCode: currencyCode,
      price: price,
      term: term,
    );
  }

  /// Describes the price for a Reserved Instance.
  factory PriceScheduleSpecification.build(
          [void Function(PriceScheduleSpecificationBuilder) updates]) =
      _$PriceScheduleSpecification;

  const PriceScheduleSpecification._();

  static const List<_i4.SmithySerializer> serializers = [
    PriceScheduleSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PriceScheduleSpecificationBuilder b) {
    b.price = 0;
    b.term = _i3.Int64.ZERO;
  }

  /// The currency for transacting the Reserved Instance resale. At this time, the only supported currency is `USD`.
  _i2.CurrencyCodeValues? get currencyCode;

  /// The fixed price for the term.
  double get price;

  /// The number of months remaining in the reservation. For example, 2 is the second to the last month before the capacity reservation expires.
  _i3.Int64 get term;
  @override
  List<Object?> get props => [
        currencyCode,
        price,
        term,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PriceScheduleSpecification');
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

class PriceScheduleSpecificationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<PriceScheduleSpecification> {
  const PriceScheduleSpecificationEc2QuerySerializer()
      : super('PriceScheduleSpecification');

  @override
  Iterable<Type> get types => const [
        PriceScheduleSpecification,
        _$PriceScheduleSpecification,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PriceScheduleSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceScheduleSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final payload = (object as PriceScheduleSpecification);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PriceScheduleSpecificationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
