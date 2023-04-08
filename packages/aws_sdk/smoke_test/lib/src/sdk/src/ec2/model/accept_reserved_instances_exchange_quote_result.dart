// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accept_reserved_instances_exchange_quote_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'accept_reserved_instances_exchange_quote_result.g.dart';

/// The result of the exchange and whether it was `successful`.
abstract class AcceptReservedInstancesExchangeQuoteResult
    with
        _i1.AWSEquatable<AcceptReservedInstancesExchangeQuoteResult>
    implements
        Built<AcceptReservedInstancesExchangeQuoteResult,
            AcceptReservedInstancesExchangeQuoteResultBuilder> {
  /// The result of the exchange and whether it was `successful`.
  factory AcceptReservedInstancesExchangeQuoteResult({String? exchangeId}) {
    return _$AcceptReservedInstancesExchangeQuoteResult._(
        exchangeId: exchangeId);
  }

  /// The result of the exchange and whether it was `successful`.
  factory AcceptReservedInstancesExchangeQuoteResult.build(
      [void Function(AcceptReservedInstancesExchangeQuoteResultBuilder)
          updates]) = _$AcceptReservedInstancesExchangeQuoteResult;

  const AcceptReservedInstancesExchangeQuoteResult._();

  /// Constructs a [AcceptReservedInstancesExchangeQuoteResult] from a [payload] and [response].
  factory AcceptReservedInstancesExchangeQuoteResult.fromResponse(
    AcceptReservedInstancesExchangeQuoteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    AcceptReservedInstancesExchangeQuoteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceptReservedInstancesExchangeQuoteResultBuilder b) {}

  /// The ID of the successful exchange.
  String? get exchangeId;
  @override
  List<Object?> get props => [exchangeId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AcceptReservedInstancesExchangeQuoteResult');
    helper.add(
      'exchangeId',
      exchangeId,
    );
    return helper.toString();
  }
}

class AcceptReservedInstancesExchangeQuoteResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<AcceptReservedInstancesExchangeQuoteResult> {
  const AcceptReservedInstancesExchangeQuoteResultEc2QuerySerializer()
      : super('AcceptReservedInstancesExchangeQuoteResult');

  @override
  Iterable<Type> get types => const [
        AcceptReservedInstancesExchangeQuoteResult,
        _$AcceptReservedInstancesExchangeQuoteResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptReservedInstancesExchangeQuoteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptReservedInstancesExchangeQuoteResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'exchangeId':
          if (value != null) {
            result.exchangeId = (serializers.deserialize(
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
    final payload = (object as AcceptReservedInstancesExchangeQuoteResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AcceptReservedInstancesExchangeQuoteResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.exchangeId != null) {
      result
        ..add(const _i2.XmlElementName('ExchangeId'))
        ..add(serializers.serialize(
          payload.exchangeId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
