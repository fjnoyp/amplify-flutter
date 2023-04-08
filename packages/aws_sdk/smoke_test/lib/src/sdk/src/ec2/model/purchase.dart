// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.purchase; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/payment_option.dart' as _i3;

part 'purchase.g.dart';

/// Describes the result of the purchase.
abstract class Purchase
    with _i1.AWSEquatable<Purchase>
    implements Built<Purchase, PurchaseBuilder> {
  /// Describes the result of the purchase.
  factory Purchase({
    _i2.CurrencyCodeValues? currencyCode,
    int? duration,
    List<String>? hostIdSet,
    String? hostReservationId,
    String? hourlyPrice,
    String? instanceFamily,
    _i3.PaymentOption? paymentOption,
    String? upfrontPrice,
  }) {
    duration ??= 0;
    return _$Purchase._(
      currencyCode: currencyCode,
      duration: duration,
      hostIdSet: hostIdSet == null ? null : _i4.BuiltList(hostIdSet),
      hostReservationId: hostReservationId,
      hourlyPrice: hourlyPrice,
      instanceFamily: instanceFamily,
      paymentOption: paymentOption,
      upfrontPrice: upfrontPrice,
    );
  }

  /// Describes the result of the purchase.
  factory Purchase.build([void Function(PurchaseBuilder) updates]) = _$Purchase;

  const Purchase._();

  static const List<_i5.SmithySerializer> serializers = [
    PurchaseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseBuilder b) {
    b.duration = 0;
  }

  /// The currency in which the `UpfrontPrice` and `HourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  _i2.CurrencyCodeValues? get currencyCode;

  /// The duration of the reservation's term in seconds.
  int get duration;

  /// The IDs of the Dedicated Hosts associated with the reservation.
  _i4.BuiltList<String>? get hostIdSet;

  /// The ID of the reservation.
  String? get hostReservationId;

  /// The hourly price of the reservation per hour.
  String? get hourlyPrice;

  /// The instance family on the Dedicated Host that the reservation can be associated with.
  String? get instanceFamily;

  /// The payment option for the reservation.
  _i3.PaymentOption? get paymentOption;

  /// The upfront price of the reservation.
  String? get upfrontPrice;
  @override
  List<Object?> get props => [
        currencyCode,
        duration,
        hostIdSet,
        hostReservationId,
        hourlyPrice,
        instanceFamily,
        paymentOption,
        upfrontPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Purchase');
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'duration',
      duration,
    );
    helper.add(
      'hostIdSet',
      hostIdSet,
    );
    helper.add(
      'hostReservationId',
      hostReservationId,
    );
    helper.add(
      'hourlyPrice',
      hourlyPrice,
    );
    helper.add(
      'instanceFamily',
      instanceFamily,
    );
    helper.add(
      'paymentOption',
      paymentOption,
    );
    helper.add(
      'upfrontPrice',
      upfrontPrice,
    );
    return helper.toString();
  }
}

class PurchaseEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<Purchase> {
  const PurchaseEc2QuerySerializer() : super('Purchase');

  @override
  Iterable<Type> get types => const [
        Purchase,
        _$Purchase,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Purchase deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseBuilder();
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
        case 'duration':
          result.duration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'hostIdSet':
          if (value != null) {
            result.hostIdSet.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'hostReservationId':
          if (value != null) {
            result.hostReservationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'hourlyPrice':
          if (value != null) {
            result.hourlyPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceFamily':
          if (value != null) {
            result.instanceFamily = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'paymentOption':
          if (value != null) {
            result.paymentOption = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PaymentOption),
            ) as _i3.PaymentOption);
          }
          break;
        case 'upfrontPrice':
          if (value != null) {
            result.upfrontPrice = (serializers.deserialize(
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
    final payload = (object as Purchase);
    final result = <Object?>[
      const _i5.XmlElementName(
        'PurchaseResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.currencyCode != null) {
      result
        ..add(const _i5.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType.nullable(_i2.CurrencyCodeValues),
        ));
    }
    result
      ..add(const _i5.XmlElementName('Duration'))
      ..add(serializers.serialize(
        payload.duration,
        specifiedType: const FullType(int),
      ));
    if (payload.hostIdSet != null) {
      result
        ..add(const _i5.XmlElementName('HostIdSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.hostIdSet!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.hostReservationId != null) {
      result
        ..add(const _i5.XmlElementName('HostReservationId'))
        ..add(serializers.serialize(
          payload.hostReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hourlyPrice != null) {
      result
        ..add(const _i5.XmlElementName('HourlyPrice'))
        ..add(serializers.serialize(
          payload.hourlyPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceFamily != null) {
      result
        ..add(const _i5.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          payload.instanceFamily!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.paymentOption != null) {
      result
        ..add(const _i5.XmlElementName('PaymentOption'))
        ..add(serializers.serialize(
          payload.paymentOption!,
          specifiedType: const FullType.nullable(_i3.PaymentOption),
        ));
    }
    if (payload.upfrontPrice != null) {
      result
        ..add(const _i5.XmlElementName('UpfrontPrice'))
        ..add(serializers.serialize(
          payload.upfrontPrice!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
