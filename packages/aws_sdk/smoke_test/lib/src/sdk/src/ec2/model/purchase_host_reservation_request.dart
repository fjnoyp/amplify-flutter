// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.purchase_host_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'purchase_host_reservation_request.g.dart';

abstract class PurchaseHostReservationRequest
    with
        _i1.HttpInput<PurchaseHostReservationRequest>,
        _i2.AWSEquatable<PurchaseHostReservationRequest>
    implements
        Built<PurchaseHostReservationRequest,
            PurchaseHostReservationRequestBuilder> {
  factory PurchaseHostReservationRequest({
    String? clientToken,
    _i3.CurrencyCodeValues? currencyCode,
    required List<String> hostIdSet,
    String? limitPrice,
    required String offeringId,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    return _$PurchaseHostReservationRequest._(
      clientToken: clientToken,
      currencyCode: currencyCode,
      hostIdSet: _i5.BuiltList(hostIdSet),
      limitPrice: limitPrice,
      offeringId: offeringId,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory PurchaseHostReservationRequest.build(
          [void Function(PurchaseHostReservationRequestBuilder) updates]) =
      _$PurchaseHostReservationRequest;

  const PurchaseHostReservationRequest._();

  factory PurchaseHostReservationRequest.fromRequest(
    PurchaseHostReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PurchaseHostReservationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseHostReservationRequestBuilder b) {}

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The currency in which the `totalUpfrontPrice`, `LimitPrice`, and `totalHourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  _i3.CurrencyCodeValues? get currencyCode;

  /// The IDs of the Dedicated Hosts with which the reservation will be associated.
  _i5.BuiltList<String> get hostIdSet;

  /// The specified limit is checked against the total upfront cost of the reservation (calculated as the offering's upfront cost multiplied by the host count). If the total upfront cost is greater than the specified price limit, the request fails. This is used to ensure that the purchase does not exceed the expected upfront cost of the purchase. At this time, the only supported currency is `USD`. For example, to indicate a limit price of USD 100, specify 100.00.
  String? get limitPrice;

  /// The ID of the offering.
  String get offeringId;

  /// The tags to apply to the Dedicated Host Reservation during purchase.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  PurchaseHostReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        currencyCode,
        hostIdSet,
        limitPrice,
        offeringId,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PurchaseHostReservationRequest');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'hostIdSet',
      hostIdSet,
    );
    helper.add(
      'limitPrice',
      limitPrice,
    );
    helper.add(
      'offeringId',
      offeringId,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class PurchaseHostReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<PurchaseHostReservationRequest> {
  const PurchaseHostReservationRequestEc2QuerySerializer()
      : super('PurchaseHostReservationRequest');

  @override
  Iterable<Type> get types => const [
        PurchaseHostReservationRequest,
        _$PurchaseHostReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseHostReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseHostReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CurrencyCode':
          if (value != null) {
            result.currencyCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CurrencyCodeValues),
            ) as _i3.CurrencyCodeValues);
          }
          break;
        case 'HostIdSet':
          result.hostIdSet.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i5.BuiltList,
              [FullType(String)],
            ),
          ) as _i5.BuiltList<String>));
          break;
        case 'LimitPrice':
          if (value != null) {
            result.limitPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OfferingId':
          result.offeringId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
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
    final payload = (object as PurchaseHostReservationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'PurchaseHostReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.currencyCode != null) {
      result
        ..add(const _i1.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType.nullable(_i3.CurrencyCodeValues),
        ));
    }
    result
      ..add(const _i1.XmlElementName('HostIdSet'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.hostIdSet,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(String)],
        ),
      ));
    if (payload.limitPrice != null) {
      result
        ..add(const _i1.XmlElementName('LimitPrice'))
        ..add(serializers.serialize(
          payload.limitPrice!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('OfferingId'))
      ..add(serializers.serialize(
        payload.offeringId,
        specifiedType: const FullType(String),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
