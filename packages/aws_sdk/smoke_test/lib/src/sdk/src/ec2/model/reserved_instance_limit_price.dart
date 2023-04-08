// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instance_limit_price; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;

part 'reserved_instance_limit_price.g.dart';

/// Describes the limit price of a Reserved Instance offering.
abstract class ReservedInstanceLimitPrice
    with _i1.AWSEquatable<ReservedInstanceLimitPrice>
    implements
        Built<ReservedInstanceLimitPrice, ReservedInstanceLimitPriceBuilder> {
  /// Describes the limit price of a Reserved Instance offering.
  factory ReservedInstanceLimitPrice({
    double? amount,
    _i2.CurrencyCodeValues? currencyCode,
  }) {
    amount ??= 0;
    return _$ReservedInstanceLimitPrice._(
      amount: amount,
      currencyCode: currencyCode,
    );
  }

  /// Describes the limit price of a Reserved Instance offering.
  factory ReservedInstanceLimitPrice.build(
          [void Function(ReservedInstanceLimitPriceBuilder) updates]) =
      _$ReservedInstanceLimitPrice;

  const ReservedInstanceLimitPrice._();

  static const List<_i3.SmithySerializer> serializers = [
    ReservedInstanceLimitPriceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstanceLimitPriceBuilder b) {
    b.amount = 0;
  }

  /// Used for Reserved Instance Marketplace offerings. Specifies the limit price on the total order (instanceCount * price).
  double get amount;

  /// The currency in which the `limitPrice` amount is specified. At this time, the only supported currency is `USD`.
  _i2.CurrencyCodeValues? get currencyCode;
  @override
  List<Object?> get props => [
        amount,
        currencyCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstanceLimitPrice');
    helper.add(
      'amount',
      amount,
    );
    helper.add(
      'currencyCode',
      currencyCode,
    );
    return helper.toString();
  }
}

class ReservedInstanceLimitPriceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ReservedInstanceLimitPrice> {
  const ReservedInstanceLimitPriceEc2QuerySerializer()
      : super('ReservedInstanceLimitPrice');

  @override
  Iterable<Type> get types => const [
        ReservedInstanceLimitPrice,
        _$ReservedInstanceLimitPrice,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstanceLimitPrice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstanceLimitPriceBuilder();
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
        case 'currencyCode':
          if (value != null) {
            result.currencyCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CurrencyCodeValues),
            ) as _i2.CurrencyCodeValues);
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
    final payload = (object as ReservedInstanceLimitPrice);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ReservedInstanceLimitPriceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Amount'))
      ..add(serializers.serialize(
        payload.amount,
        specifiedType: const FullType(double),
      ));
    if (payload.currencyCode != null) {
      result
        ..add(const _i3.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType.nullable(_i2.CurrencyCodeValues),
        ));
    }
    return result;
  }
}
