// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_capacity_reservation_usage_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_usage.dart' as _i3;

part 'get_capacity_reservation_usage_result.g.dart';

abstract class GetCapacityReservationUsageResult
    with
        _i1.AWSEquatable<GetCapacityReservationUsageResult>
    implements
        Built<GetCapacityReservationUsageResult,
            GetCapacityReservationUsageResultBuilder> {
  factory GetCapacityReservationUsageResult({
    String? nextToken,
    String? capacityReservationId,
    String? instanceType,
    int? totalInstanceCount,
    int? availableInstanceCount,
    _i2.CapacityReservationState? state,
    List<_i3.InstanceUsage>? instanceUsages,
  }) {
    totalInstanceCount ??= 0;
    availableInstanceCount ??= 0;
    return _$GetCapacityReservationUsageResult._(
      nextToken: nextToken,
      capacityReservationId: capacityReservationId,
      instanceType: instanceType,
      totalInstanceCount: totalInstanceCount,
      availableInstanceCount: availableInstanceCount,
      state: state,
      instanceUsages:
          instanceUsages == null ? null : _i4.BuiltList(instanceUsages),
    );
  }

  factory GetCapacityReservationUsageResult.build(
          [void Function(GetCapacityReservationUsageResultBuilder) updates]) =
      _$GetCapacityReservationUsageResult;

  const GetCapacityReservationUsageResult._();

  /// Constructs a [GetCapacityReservationUsageResult] from a [payload] and [response].
  factory GetCapacityReservationUsageResult.fromResponse(
    GetCapacityReservationUsageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    GetCapacityReservationUsageResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCapacityReservationUsageResultBuilder b) {
    b.totalInstanceCount = 0;
    b.availableInstanceCount = 0;
  }

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// The type of instance for which the Capacity Reservation reserves capacity.
  String? get instanceType;

  /// The number of instances for which the Capacity Reservation reserves capacity.
  int get totalInstanceCount;

  /// The remaining capacity. Indicates the number of instances that can be launched in the Capacity Reservation.
  int get availableInstanceCount;

  /// The current state of the Capacity Reservation. A Capacity Reservation can be in one of the following states:
  ///
  /// *   `active` \- The Capacity Reservation is active and the capacity is available for your use.
  ///
  /// *   `expired` \- The Capacity Reservation expired automatically at the date and time specified in your request. The reserved capacity is no longer available for your use.
  ///
  /// *   `cancelled` \- The Capacity Reservation was cancelled. The reserved capacity is no longer available for your use.
  ///
  /// *   `pending` \- The Capacity Reservation request was successful but the capacity provisioning is still pending.
  ///
  /// *   `failed` \- The Capacity Reservation request has failed. A request might fail due to invalid request parameters, capacity constraints, or instance limit constraints. Failed requests are retained for 60 minutes.
  _i2.CapacityReservationState? get state;

  /// Information about the Capacity Reservation usage.
  _i4.BuiltList<_i3.InstanceUsage>? get instanceUsages;
  @override
  List<Object?> get props => [
        nextToken,
        capacityReservationId,
        instanceType,
        totalInstanceCount,
        availableInstanceCount,
        state,
        instanceUsages,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetCapacityReservationUsageResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'capacityReservationId',
      capacityReservationId,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'totalInstanceCount',
      totalInstanceCount,
    );
    helper.add(
      'availableInstanceCount',
      availableInstanceCount,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'instanceUsages',
      instanceUsages,
    );
    return helper.toString();
  }
}

class GetCapacityReservationUsageResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<GetCapacityReservationUsageResult> {
  const GetCapacityReservationUsageResultEc2QuerySerializer()
      : super('GetCapacityReservationUsageResult');

  @override
  Iterable<Type> get types => const [
        GetCapacityReservationUsageResult,
        _$GetCapacityReservationUsageResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetCapacityReservationUsageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCapacityReservationUsageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'capacityReservationId':
          if (value != null) {
            result.capacityReservationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'totalInstanceCount':
          result.totalInstanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'availableInstanceCount':
          result.availableInstanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CapacityReservationState),
            ) as _i2.CapacityReservationState);
          }
          break;
        case 'instanceUsageSet':
          if (value != null) {
            result.instanceUsages.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.InstanceUsage)],
              ),
            ) as _i4.BuiltList<_i3.InstanceUsage>));
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
    final payload = (object as GetCapacityReservationUsageResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'GetCapacityReservationUsageResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i5.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityReservationId != null) {
      result
        ..add(const _i5.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          payload.capacityReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i5.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('TotalInstanceCount'))
      ..add(serializers.serialize(
        payload.totalInstanceCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i5.XmlElementName('AvailableInstanceCount'))
      ..add(serializers.serialize(
        payload.availableInstanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.state != null) {
      result
        ..add(const _i5.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.CapacityReservationState),
        ));
    }
    if (payload.instanceUsages != null) {
      result
        ..add(const _i5.XmlElementName('InstanceUsageSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceUsages!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.InstanceUsage)],
          ),
        ));
    }
    return result;
  }
}
