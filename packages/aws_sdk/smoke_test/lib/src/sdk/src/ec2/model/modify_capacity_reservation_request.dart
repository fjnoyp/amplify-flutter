// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_capacity_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/end_date_type.dart' as _i3;

part 'modify_capacity_reservation_request.g.dart';

abstract class ModifyCapacityReservationRequest
    with
        _i1.HttpInput<ModifyCapacityReservationRequest>,
        _i2.AWSEquatable<ModifyCapacityReservationRequest>
    implements
        Built<ModifyCapacityReservationRequest,
            ModifyCapacityReservationRequestBuilder> {
  factory ModifyCapacityReservationRequest({
    required String capacityReservationId,
    int? instanceCount,
    DateTime? endDate,
    _i3.EndDateType? endDateType,
    bool? accept,
    bool? dryRun,
    String? additionalInfo,
  }) {
    instanceCount ??= 0;
    accept ??= false;
    dryRun ??= false;
    return _$ModifyCapacityReservationRequest._(
      capacityReservationId: capacityReservationId,
      instanceCount: instanceCount,
      endDate: endDate,
      endDateType: endDateType,
      accept: accept,
      dryRun: dryRun,
      additionalInfo: additionalInfo,
    );
  }

  factory ModifyCapacityReservationRequest.build(
          [void Function(ModifyCapacityReservationRequestBuilder) updates]) =
      _$ModifyCapacityReservationRequest;

  const ModifyCapacityReservationRequest._();

  factory ModifyCapacityReservationRequest.fromRequest(
    ModifyCapacityReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyCapacityReservationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyCapacityReservationRequestBuilder b) {
    b.instanceCount = 0;
    b.accept = false;
    b.dryRun = false;
  }

  /// The ID of the Capacity Reservation.
  String get capacityReservationId;

  /// The number of instances for which to reserve capacity. The number of instances can't be increased or decreased by more than `1000` in a single request.
  int get instanceCount;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to `expired` when it reaches its end date and time.
  ///
  /// The Capacity Reservation is cancelled within an hour from the specified time. For example, if you specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to end between 13:30:55 and 14:30:55 on 5/31/2019.
  ///
  /// You must provide an `EndDate` value if `EndDateType` is `limited`. Omit `EndDate` if `EndDateType` is `unlimited`.
  DateTime? get endDate;

  /// Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:
  ///
  /// *   `unlimited` \- The Capacity Reservation remains active until you explicitly cancel it. Do not provide an `EndDate` value if `EndDateType` is `unlimited`.
  ///
  /// *   `limited` \- The Capacity Reservation expires automatically at a specified date and time. You must provide an `EndDate` value if `EndDateType` is `limited`.
  _i3.EndDateType? get endDateType;

  /// Reserved. Capacity Reservations you have created are accepted by default.
  bool get accept;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Reserved for future use.
  String? get additionalInfo;
  @override
  ModifyCapacityReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        capacityReservationId,
        instanceCount,
        endDate,
        endDateType,
        accept,
        dryRun,
        additionalInfo,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyCapacityReservationRequest');
    helper.add(
      'capacityReservationId',
      capacityReservationId,
    );
    helper.add(
      'instanceCount',
      instanceCount,
    );
    helper.add(
      'endDate',
      endDate,
    );
    helper.add(
      'endDateType',
      endDateType,
    );
    helper.add(
      'accept',
      accept,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'additionalInfo',
      additionalInfo,
    );
    return helper.toString();
  }
}

class ModifyCapacityReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyCapacityReservationRequest> {
  const ModifyCapacityReservationRequestEc2QuerySerializer()
      : super('ModifyCapacityReservationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyCapacityReservationRequest,
        _$ModifyCapacityReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyCapacityReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyCapacityReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CapacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'InstanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'EndDate':
          if (value != null) {
            result.endDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'EndDateType':
          if (value != null) {
            result.endDateType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EndDateType),
            ) as _i3.EndDateType);
          }
          break;
        case 'Accept':
          result.accept = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'AdditionalInfo':
          if (value != null) {
            result.additionalInfo = (serializers.deserialize(
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
    final payload = (object as ModifyCapacityReservationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyCapacityReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('CapacityReservationId'))
      ..add(serializers.serialize(
        payload.capacityReservationId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.endDate != null) {
      result
        ..add(const _i1.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          payload.endDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.endDateType != null) {
      result
        ..add(const _i1.XmlElementName('EndDateType'))
        ..add(serializers.serialize(
          payload.endDateType!,
          specifiedType: const FullType.nullable(_i3.EndDateType),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Accept'))
      ..add(serializers.serialize(
        payload.accept,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.additionalInfo != null) {
      result
        ..add(const _i1.XmlElementName('AdditionalInfo'))
        ..add(serializers.serialize(
          payload.additionalInfo!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
