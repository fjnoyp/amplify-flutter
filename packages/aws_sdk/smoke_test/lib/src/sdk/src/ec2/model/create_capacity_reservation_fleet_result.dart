// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_capacity_reservation_fleet_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_tenancy.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_instance_match_criteria.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;

part 'create_capacity_reservation_fleet_result.g.dart';

abstract class CreateCapacityReservationFleetResult
    with
        _i1.AWSEquatable<CreateCapacityReservationFleetResult>
    implements
        Built<CreateCapacityReservationFleetResult,
            CreateCapacityReservationFleetResultBuilder> {
  factory CreateCapacityReservationFleetResult({
    String? capacityReservationFleetId,
    _i2.CapacityReservationFleetState? state,
    int? totalTargetCapacity,
    double? totalFulfilledCapacity,
    _i3.FleetInstanceMatchCriteria? instanceMatchCriteria,
    String? allocationStrategy,
    DateTime? createTime,
    DateTime? endDate,
    _i4.FleetCapacityReservationTenancy? tenancy,
    List<_i5.FleetCapacityReservation>? fleetCapacityReservations,
    List<_i6.Tag>? tags,
  }) {
    totalTargetCapacity ??= 0;
    totalFulfilledCapacity ??= 0;
    return _$CreateCapacityReservationFleetResult._(
      capacityReservationFleetId: capacityReservationFleetId,
      state: state,
      totalTargetCapacity: totalTargetCapacity,
      totalFulfilledCapacity: totalFulfilledCapacity,
      instanceMatchCriteria: instanceMatchCriteria,
      allocationStrategy: allocationStrategy,
      createTime: createTime,
      endDate: endDate,
      tenancy: tenancy,
      fleetCapacityReservations: fleetCapacityReservations == null
          ? null
          : _i7.BuiltList(fleetCapacityReservations),
      tags: tags == null ? null : _i7.BuiltList(tags),
    );
  }

  factory CreateCapacityReservationFleetResult.build(
      [void Function(CreateCapacityReservationFleetResultBuilder)
          updates]) = _$CreateCapacityReservationFleetResult;

  const CreateCapacityReservationFleetResult._();

  /// Constructs a [CreateCapacityReservationFleetResult] from a [payload] and [response].
  factory CreateCapacityReservationFleetResult.fromResponse(
    CreateCapacityReservationFleetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i8.SmithySerializer> serializers = [
    CreateCapacityReservationFleetResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCapacityReservationFleetResultBuilder b) {
    b.totalTargetCapacity = 0;
    b.totalFulfilledCapacity = 0;
  }

  /// The ID of the Capacity Reservation Fleet.
  String? get capacityReservationFleetId;

  /// The status of the Capacity Reservation Fleet.
  _i2.CapacityReservationFleetState? get state;

  /// The total number of capacity units for which the Capacity Reservation Fleet reserves capacity.
  int get totalTargetCapacity;

  /// The requested capacity units that have been successfully reserved.
  double get totalFulfilledCapacity;

  /// The instance matching criteria for the Capacity Reservation Fleet.
  _i3.FleetInstanceMatchCriteria? get instanceMatchCriteria;

  /// The allocation strategy used by the Capacity Reservation Fleet.
  String? get allocationStrategy;

  /// The date and time at which the Capacity Reservation Fleet was created.
  DateTime? get createTime;

  /// The date and time at which the Capacity Reservation Fleet expires.
  DateTime? get endDate;

  /// Indicates the tenancy of Capacity Reservation Fleet.
  _i4.FleetCapacityReservationTenancy? get tenancy;

  /// Information about the individual Capacity Reservations in the Capacity Reservation Fleet.
  _i7.BuiltList<_i5.FleetCapacityReservation>? get fleetCapacityReservations;

  /// The tags assigned to the Capacity Reservation Fleet.
  _i7.BuiltList<_i6.Tag>? get tags;
  @override
  List<Object?> get props => [
        capacityReservationFleetId,
        state,
        totalTargetCapacity,
        totalFulfilledCapacity,
        instanceMatchCriteria,
        allocationStrategy,
        createTime,
        endDate,
        tenancy,
        fleetCapacityReservations,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateCapacityReservationFleetResult');
    helper.add(
      'capacityReservationFleetId',
      capacityReservationFleetId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'totalTargetCapacity',
      totalTargetCapacity,
    );
    helper.add(
      'totalFulfilledCapacity',
      totalFulfilledCapacity,
    );
    helper.add(
      'instanceMatchCriteria',
      instanceMatchCriteria,
    );
    helper.add(
      'allocationStrategy',
      allocationStrategy,
    );
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'endDate',
      endDate,
    );
    helper.add(
      'tenancy',
      tenancy,
    );
    helper.add(
      'fleetCapacityReservations',
      fleetCapacityReservations,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CreateCapacityReservationFleetResultEc2QuerySerializer extends _i8
    .StructuredSmithySerializer<CreateCapacityReservationFleetResult> {
  const CreateCapacityReservationFleetResultEc2QuerySerializer()
      : super('CreateCapacityReservationFleetResult');

  @override
  Iterable<Type> get types => const [
        CreateCapacityReservationFleetResult,
        _$CreateCapacityReservationFleetResult,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCapacityReservationFleetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCapacityReservationFleetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'capacityReservationFleetId':
          if (value != null) {
            result.capacityReservationFleetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CapacityReservationFleetState),
            ) as _i2.CapacityReservationFleetState);
          }
          break;
        case 'totalTargetCapacity':
          result.totalTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'totalFulfilledCapacity':
          result.totalFulfilledCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'instanceMatchCriteria':
          if (value != null) {
            result.instanceMatchCriteria = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FleetInstanceMatchCriteria),
            ) as _i3.FleetInstanceMatchCriteria);
          }
          break;
        case 'allocationStrategy':
          if (value != null) {
            result.allocationStrategy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'endDate':
          if (value != null) {
            result.endDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'tenancy':
          if (value != null) {
            result.tenancy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.FleetCapacityReservationTenancy),
            ) as _i4.FleetCapacityReservationTenancy);
          }
          break;
        case 'fleetCapacityReservationSet':
          if (value != null) {
            result.fleetCapacityReservations
                .replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i5.FleetCapacityReservation)],
              ),
            ) as _i7.BuiltList<_i5.FleetCapacityReservation>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.Tag)],
              ),
            ) as _i7.BuiltList<_i6.Tag>));
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
    final payload = (object as CreateCapacityReservationFleetResult);
    final result = <Object?>[
      const _i8.XmlElementName(
        'CreateCapacityReservationFleetResultResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityReservationFleetId != null) {
      result
        ..add(const _i8.XmlElementName('CapacityReservationFleetId'))
        ..add(serializers.serialize(
          payload.capacityReservationFleetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i8.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.CapacityReservationFleetState),
        ));
    }
    result
      ..add(const _i8.XmlElementName('TotalTargetCapacity'))
      ..add(serializers.serialize(
        payload.totalTargetCapacity,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i8.XmlElementName('TotalFulfilledCapacity'))
      ..add(serializers.serialize(
        payload.totalFulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    if (payload.instanceMatchCriteria != null) {
      result
        ..add(const _i8.XmlElementName('InstanceMatchCriteria'))
        ..add(serializers.serialize(
          payload.instanceMatchCriteria!,
          specifiedType:
              const FullType.nullable(_i3.FleetInstanceMatchCriteria),
        ));
    }
    if (payload.allocationStrategy != null) {
      result
        ..add(const _i8.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          payload.allocationStrategy!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createTime != null) {
      result
        ..add(const _i8.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.endDate != null) {
      result
        ..add(const _i8.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          payload.endDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tenancy != null) {
      result
        ..add(const _i8.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          payload.tenancy!,
          specifiedType:
              const FullType.nullable(_i4.FleetCapacityReservationTenancy),
        ));
    }
    if (payload.fleetCapacityReservations != null) {
      result
        ..add(const _i8.XmlElementName('FleetCapacityReservationSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fleetCapacityReservations!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.FleetCapacityReservation)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i8.XmlElementName('TagSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i6.Tag)],
          ),
        ));
    }
    return result;
  }
}
