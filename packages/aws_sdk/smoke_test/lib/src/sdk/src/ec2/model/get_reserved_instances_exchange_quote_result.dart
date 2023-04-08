// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_reserved_instances_exchange_quote_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_value.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_reservation_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/target_reservation_value.dart'
    as _i4;

part 'get_reserved_instances_exchange_quote_result.g.dart';

/// Contains the output of GetReservedInstancesExchangeQuote.
abstract class GetReservedInstancesExchangeQuoteResult
    with
        _i1.AWSEquatable<GetReservedInstancesExchangeQuoteResult>
    implements
        Built<GetReservedInstancesExchangeQuoteResult,
            GetReservedInstancesExchangeQuoteResultBuilder> {
  /// Contains the output of GetReservedInstancesExchangeQuote.
  factory GetReservedInstancesExchangeQuoteResult({
    String? currencyCode,
    bool? isValidExchange,
    DateTime? outputReservedInstancesWillExpireAt,
    String? paymentDue,
    _i2.ReservationValue? reservedInstanceValueRollup,
    List<_i3.ReservedInstanceReservationValue>? reservedInstanceValueSet,
    _i2.ReservationValue? targetConfigurationValueRollup,
    List<_i4.TargetReservationValue>? targetConfigurationValueSet,
    String? validationFailureReason,
  }) {
    isValidExchange ??= false;
    return _$GetReservedInstancesExchangeQuoteResult._(
      currencyCode: currencyCode,
      isValidExchange: isValidExchange,
      outputReservedInstancesWillExpireAt: outputReservedInstancesWillExpireAt,
      paymentDue: paymentDue,
      reservedInstanceValueRollup: reservedInstanceValueRollup,
      reservedInstanceValueSet: reservedInstanceValueSet == null
          ? null
          : _i5.BuiltList(reservedInstanceValueSet),
      targetConfigurationValueRollup: targetConfigurationValueRollup,
      targetConfigurationValueSet: targetConfigurationValueSet == null
          ? null
          : _i5.BuiltList(targetConfigurationValueSet),
      validationFailureReason: validationFailureReason,
    );
  }

  /// Contains the output of GetReservedInstancesExchangeQuote.
  factory GetReservedInstancesExchangeQuoteResult.build(
      [void Function(GetReservedInstancesExchangeQuoteResultBuilder)
          updates]) = _$GetReservedInstancesExchangeQuoteResult;

  const GetReservedInstancesExchangeQuoteResult._();

  /// Constructs a [GetReservedInstancesExchangeQuoteResult] from a [payload] and [response].
  factory GetReservedInstancesExchangeQuoteResult.fromResponse(
    GetReservedInstancesExchangeQuoteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    GetReservedInstancesExchangeQuoteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetReservedInstancesExchangeQuoteResultBuilder b) {
    b.isValidExchange = false;
  }

  /// The currency of the transaction.
  String? get currencyCode;

  /// If `true`, the exchange is valid. If `false`, the exchange cannot be completed.
  bool get isValidExchange;

  /// The new end date of the reservation term.
  DateTime? get outputReservedInstancesWillExpireAt;

  /// The total true upfront charge for the exchange.
  String? get paymentDue;

  /// The cost associated with the Reserved Instance.
  _i2.ReservationValue? get reservedInstanceValueRollup;

  /// The configuration of your Convertible Reserved Instances.
  _i5.BuiltList<_i3.ReservedInstanceReservationValue>?
      get reservedInstanceValueSet;

  /// The cost associated with the Reserved Instance.
  _i2.ReservationValue? get targetConfigurationValueRollup;

  /// The values of the target Convertible Reserved Instances.
  _i5.BuiltList<_i4.TargetReservationValue>? get targetConfigurationValueSet;

  /// Describes the reason why the exchange cannot be completed.
  String? get validationFailureReason;
  @override
  List<Object?> get props => [
        currencyCode,
        isValidExchange,
        outputReservedInstancesWillExpireAt,
        paymentDue,
        reservedInstanceValueRollup,
        reservedInstanceValueSet,
        targetConfigurationValueRollup,
        targetConfigurationValueSet,
        validationFailureReason,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetReservedInstancesExchangeQuoteResult');
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'isValidExchange',
      isValidExchange,
    );
    helper.add(
      'outputReservedInstancesWillExpireAt',
      outputReservedInstancesWillExpireAt,
    );
    helper.add(
      'paymentDue',
      paymentDue,
    );
    helper.add(
      'reservedInstanceValueRollup',
      reservedInstanceValueRollup,
    );
    helper.add(
      'reservedInstanceValueSet',
      reservedInstanceValueSet,
    );
    helper.add(
      'targetConfigurationValueRollup',
      targetConfigurationValueRollup,
    );
    helper.add(
      'targetConfigurationValueSet',
      targetConfigurationValueSet,
    );
    helper.add(
      'validationFailureReason',
      validationFailureReason,
    );
    return helper.toString();
  }
}

class GetReservedInstancesExchangeQuoteResultEc2QuerySerializer extends _i6
    .StructuredSmithySerializer<GetReservedInstancesExchangeQuoteResult> {
  const GetReservedInstancesExchangeQuoteResultEc2QuerySerializer()
      : super('GetReservedInstancesExchangeQuoteResult');

  @override
  Iterable<Type> get types => const [
        GetReservedInstancesExchangeQuoteResult,
        _$GetReservedInstancesExchangeQuoteResult,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetReservedInstancesExchangeQuoteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetReservedInstancesExchangeQuoteResultBuilder();
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
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'isValidExchange':
          result.isValidExchange = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'outputReservedInstancesWillExpireAt':
          if (value != null) {
            result.outputReservedInstancesWillExpireAt =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'paymentDue':
          if (value != null) {
            result.paymentDue = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'reservedInstanceValueRollup':
          if (value != null) {
            result.reservedInstanceValueRollup.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReservationValue),
            ) as _i2.ReservationValue));
          }
          break;
        case 'reservedInstanceValueSet':
          if (value != null) {
            result.reservedInstanceValueSet
                .replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.ReservedInstanceReservationValue)],
              ),
            ) as _i5.BuiltList<_i3.ReservedInstanceReservationValue>));
          }
          break;
        case 'targetConfigurationValueRollup':
          if (value != null) {
            result.targetConfigurationValueRollup
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReservationValue),
            ) as _i2.ReservationValue));
          }
          break;
        case 'targetConfigurationValueSet':
          if (value != null) {
            result.targetConfigurationValueSet
                .replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.TargetReservationValue)],
              ),
            ) as _i5.BuiltList<_i4.TargetReservationValue>));
          }
          break;
        case 'validationFailureReason':
          if (value != null) {
            result.validationFailureReason = (serializers.deserialize(
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
    final payload = (object as GetReservedInstancesExchangeQuoteResult);
    final result = <Object?>[
      const _i6.XmlElementName(
        'GetReservedInstancesExchangeQuoteResultResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.currencyCode != null) {
      result
        ..add(const _i6.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i6.XmlElementName('IsValidExchange'))
      ..add(serializers.serialize(
        payload.isValidExchange,
        specifiedType: const FullType(bool),
      ));
    if (payload.outputReservedInstancesWillExpireAt != null) {
      result
        ..add(const _i6.XmlElementName('OutputReservedInstancesWillExpireAt'))
        ..add(serializers.serialize(
          payload.outputReservedInstancesWillExpireAt!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.paymentDue != null) {
      result
        ..add(const _i6.XmlElementName('PaymentDue'))
        ..add(serializers.serialize(
          payload.paymentDue!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.reservedInstanceValueRollup != null) {
      result
        ..add(const _i6.XmlElementName('ReservedInstanceValueRollup'))
        ..add(serializers.serialize(
          payload.reservedInstanceValueRollup!,
          specifiedType: const FullType(_i2.ReservationValue),
        ));
    }
    if (payload.reservedInstanceValueSet != null) {
      result
        ..add(const _i6.XmlElementName('ReservedInstanceValueSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.reservedInstanceValueSet!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.ReservedInstanceReservationValue)],
          ),
        ));
    }
    if (payload.targetConfigurationValueRollup != null) {
      result
        ..add(const _i6.XmlElementName('TargetConfigurationValueRollup'))
        ..add(serializers.serialize(
          payload.targetConfigurationValueRollup!,
          specifiedType: const FullType(_i2.ReservationValue),
        ));
    }
    if (payload.targetConfigurationValueSet != null) {
      result
        ..add(const _i6.XmlElementName('TargetConfigurationValueSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.targetConfigurationValueSet!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TargetReservationValue)],
          ),
        ));
    }
    if (payload.validationFailureReason != null) {
      result
        ..add(const _i6.XmlElementName('ValidationFailureReason'))
        ..add(serializers.serialize(
          payload.validationFailureReason!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
