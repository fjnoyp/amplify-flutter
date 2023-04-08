// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_host_reservation_purchase_preview_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/purchase.dart' as _i3;

part 'get_host_reservation_purchase_preview_result.g.dart';

abstract class GetHostReservationPurchasePreviewResult
    with
        _i1.AWSEquatable<GetHostReservationPurchasePreviewResult>
    implements
        Built<GetHostReservationPurchasePreviewResult,
            GetHostReservationPurchasePreviewResultBuilder> {
  factory GetHostReservationPurchasePreviewResult({
    _i2.CurrencyCodeValues? currencyCode,
    List<_i3.Purchase>? purchase,
    String? totalHourlyPrice,
    String? totalUpfrontPrice,
  }) {
    return _$GetHostReservationPurchasePreviewResult._(
      currencyCode: currencyCode,
      purchase: purchase == null ? null : _i4.BuiltList(purchase),
      totalHourlyPrice: totalHourlyPrice,
      totalUpfrontPrice: totalUpfrontPrice,
    );
  }

  factory GetHostReservationPurchasePreviewResult.build(
      [void Function(GetHostReservationPurchasePreviewResultBuilder)
          updates]) = _$GetHostReservationPurchasePreviewResult;

  const GetHostReservationPurchasePreviewResult._();

  /// Constructs a [GetHostReservationPurchasePreviewResult] from a [payload] and [response].
  factory GetHostReservationPurchasePreviewResult.fromResponse(
    GetHostReservationPurchasePreviewResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    GetHostReservationPurchasePreviewResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetHostReservationPurchasePreviewResultBuilder b) {}

  /// The currency in which the `totalUpfrontPrice` and `totalHourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  _i2.CurrencyCodeValues? get currencyCode;

  /// The purchase information of the Dedicated Host reservation and the Dedicated Hosts associated with it.
  _i4.BuiltList<_i3.Purchase>? get purchase;

  /// The potential total hourly price of the reservation per hour.
  String? get totalHourlyPrice;

  /// The potential total upfront price. This is billed immediately.
  String? get totalUpfrontPrice;
  @override
  List<Object?> get props => [
        currencyCode,
        purchase,
        totalHourlyPrice,
        totalUpfrontPrice,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetHostReservationPurchasePreviewResult');
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'purchase',
      purchase,
    );
    helper.add(
      'totalHourlyPrice',
      totalHourlyPrice,
    );
    helper.add(
      'totalUpfrontPrice',
      totalUpfrontPrice,
    );
    return helper.toString();
  }
}

class GetHostReservationPurchasePreviewResultEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<GetHostReservationPurchasePreviewResult> {
  const GetHostReservationPurchasePreviewResultEc2QuerySerializer()
      : super('GetHostReservationPurchasePreviewResult');

  @override
  Iterable<Type> get types => const [
        GetHostReservationPurchasePreviewResult,
        _$GetHostReservationPurchasePreviewResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetHostReservationPurchasePreviewResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetHostReservationPurchasePreviewResultBuilder();
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
        case 'purchase':
          if (value != null) {
            result.purchase.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Purchase)],
              ),
            ) as _i4.BuiltList<_i3.Purchase>));
          }
          break;
        case 'totalHourlyPrice':
          if (value != null) {
            result.totalHourlyPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'totalUpfrontPrice':
          if (value != null) {
            result.totalUpfrontPrice = (serializers.deserialize(
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
    final payload = (object as GetHostReservationPurchasePreviewResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'GetHostReservationPurchasePreviewResultResponse',
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
    if (payload.purchase != null) {
      result
        ..add(const _i5.XmlElementName('Purchase'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.purchase!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Purchase)],
          ),
        ));
    }
    if (payload.totalHourlyPrice != null) {
      result
        ..add(const _i5.XmlElementName('TotalHourlyPrice'))
        ..add(serializers.serialize(
          payload.totalHourlyPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.totalUpfrontPrice != null) {
      result
        ..add(const _i5.XmlElementName('TotalUpfrontPrice'))
        ..add(serializers.serialize(
          payload.totalUpfrontPrice!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
