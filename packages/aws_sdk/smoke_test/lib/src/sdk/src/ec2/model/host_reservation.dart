// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.host_reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/payment_option.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_state.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'host_reservation.g.dart';

/// Details about the Dedicated Host Reservation and associated Dedicated Hosts.
abstract class HostReservation
    with _i1.AWSEquatable<HostReservation>
    implements Built<HostReservation, HostReservationBuilder> {
  /// Details about the Dedicated Host Reservation and associated Dedicated Hosts.
  factory HostReservation({
    int? count,
    _i2.CurrencyCodeValues? currencyCode,
    int? duration,
    DateTime? end,
    List<String>? hostIdSet,
    String? hostReservationId,
    String? hourlyPrice,
    String? instanceFamily,
    String? offeringId,
    _i3.PaymentOption? paymentOption,
    DateTime? start,
    _i4.ReservationState? state,
    String? upfrontPrice,
    List<_i5.Tag>? tags,
  }) {
    count ??= 0;
    duration ??= 0;
    return _$HostReservation._(
      count: count,
      currencyCode: currencyCode,
      duration: duration,
      end: end,
      hostIdSet: hostIdSet == null ? null : _i6.BuiltList(hostIdSet),
      hostReservationId: hostReservationId,
      hourlyPrice: hourlyPrice,
      instanceFamily: instanceFamily,
      offeringId: offeringId,
      paymentOption: paymentOption,
      start: start,
      state: state,
      upfrontPrice: upfrontPrice,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// Details about the Dedicated Host Reservation and associated Dedicated Hosts.
  factory HostReservation.build(
      [void Function(HostReservationBuilder) updates]) = _$HostReservation;

  const HostReservation._();

  static const List<_i7.SmithySerializer> serializers = [
    HostReservationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostReservationBuilder b) {
    b.count = 0;
    b.duration = 0;
  }

  /// The number of Dedicated Hosts the reservation is associated with.
  int get count;

  /// The currency in which the `upfrontPrice` and `hourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  _i2.CurrencyCodeValues? get currencyCode;

  /// The length of the reservation's term, specified in seconds. Can be `31536000 (1 year)` | `94608000 (3 years)`.
  int get duration;

  /// The date and time that the reservation ends.
  DateTime? get end;

  /// The IDs of the Dedicated Hosts associated with the reservation.
  _i6.BuiltList<String>? get hostIdSet;

  /// The ID of the reservation that specifies the associated Dedicated Hosts.
  String? get hostReservationId;

  /// The hourly price of the reservation.
  String? get hourlyPrice;

  /// The instance family of the Dedicated Host Reservation. The instance family on the Dedicated Host must be the same in order for it to benefit from the reservation.
  String? get instanceFamily;

  /// The ID of the reservation. This remains the same regardless of which Dedicated Hosts are associated with it.
  String? get offeringId;

  /// The payment option selected for this reservation.
  _i3.PaymentOption? get paymentOption;

  /// The date and time that the reservation started.
  DateTime? get start;

  /// The state of the reservation.
  _i4.ReservationState? get state;

  /// The upfront price of the reservation.
  String? get upfrontPrice;

  /// Any tags assigned to the Dedicated Host Reservation.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  List<Object?> get props => [
        count,
        currencyCode,
        duration,
        end,
        hostIdSet,
        hostReservationId,
        hourlyPrice,
        instanceFamily,
        offeringId,
        paymentOption,
        start,
        state,
        upfrontPrice,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostReservation');
    helper.add(
      'count',
      count,
    );
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'duration',
      duration,
    );
    helper.add(
      'end',
      end,
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
      'offeringId',
      offeringId,
    );
    helper.add(
      'paymentOption',
      paymentOption,
    );
    helper.add(
      'start',
      start,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'upfrontPrice',
      upfrontPrice,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class HostReservationEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<HostReservation> {
  const HostReservationEc2QuerySerializer() : super('HostReservation');

  @override
  Iterable<Type> get types => const [
        HostReservation,
        _$HostReservation,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HostReservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostReservationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'count':
          result.count = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
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
        case 'end':
          if (value != null) {
            result.end = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'hostIdSet':
          if (value != null) {
            result.hostIdSet.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
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
        case 'offeringId':
          if (value != null) {
            result.offeringId = (serializers.deserialize(
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
        case 'start':
          if (value != null) {
            result.start = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReservationState),
            ) as _i4.ReservationState);
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as HostReservation);
    final result = <Object?>[
      const _i7.XmlElementName(
        'HostReservationResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i7.XmlElementName('Count'))
      ..add(serializers.serialize(
        payload.count,
        specifiedType: const FullType(int),
      ));
    if (payload.currencyCode != null) {
      result
        ..add(const _i7.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType.nullable(_i2.CurrencyCodeValues),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Duration'))
      ..add(serializers.serialize(
        payload.duration,
        specifiedType: const FullType(int),
      ));
    if (payload.end != null) {
      result
        ..add(const _i7.XmlElementName('End'))
        ..add(serializers.serialize(
          payload.end!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.hostIdSet != null) {
      result
        ..add(const _i7.XmlElementName('HostIdSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.hostIdSet!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.hostReservationId != null) {
      result
        ..add(const _i7.XmlElementName('HostReservationId'))
        ..add(serializers.serialize(
          payload.hostReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hourlyPrice != null) {
      result
        ..add(const _i7.XmlElementName('HourlyPrice'))
        ..add(serializers.serialize(
          payload.hourlyPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceFamily != null) {
      result
        ..add(const _i7.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          payload.instanceFamily!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.offeringId != null) {
      result
        ..add(const _i7.XmlElementName('OfferingId'))
        ..add(serializers.serialize(
          payload.offeringId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.paymentOption != null) {
      result
        ..add(const _i7.XmlElementName('PaymentOption'))
        ..add(serializers.serialize(
          payload.paymentOption!,
          specifiedType: const FullType.nullable(_i3.PaymentOption),
        ));
    }
    if (payload.start != null) {
      result
        ..add(const _i7.XmlElementName('Start'))
        ..add(serializers.serialize(
          payload.start!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i4.ReservationState),
        ));
    }
    if (payload.upfrontPrice != null) {
      result
        ..add(const _i7.XmlElementName('UpfrontPrice'))
        ..add(serializers.serialize(
          payload.upfrontPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
