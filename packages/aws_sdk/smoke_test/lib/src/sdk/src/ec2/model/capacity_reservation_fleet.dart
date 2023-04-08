// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.capacity_reservation_fleet; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_instance_match_criteria.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;

part 'capacity_reservation_fleet.g.dart';

/// Information about a Capacity Reservation Fleet.
abstract class CapacityReservationFleet
    with _i1.AWSEquatable<CapacityReservationFleet>
    implements
        Built<CapacityReservationFleet, CapacityReservationFleetBuilder> {
  /// Information about a Capacity Reservation Fleet.
  factory CapacityReservationFleet({
    String? capacityReservationFleetId,
    String? capacityReservationFleetArn,
    _i2.CapacityReservationFleetState? state,
    int? totalTargetCapacity,
    double? totalFulfilledCapacity,
    _i3.FleetCapacityReservationTenancy? tenancy,
    DateTime? endDate,
    DateTime? createTime,
    _i4.FleetInstanceMatchCriteria? instanceMatchCriteria,
    String? allocationStrategy,
    List<_i5.FleetCapacityReservation>? instanceTypeSpecifications,
    List<_i6.Tag>? tags,
  }) {
    totalTargetCapacity ??= 0;
    totalFulfilledCapacity ??= 0;
    return _$CapacityReservationFleet._(
      capacityReservationFleetId: capacityReservationFleetId,
      capacityReservationFleetArn: capacityReservationFleetArn,
      state: state,
      totalTargetCapacity: totalTargetCapacity,
      totalFulfilledCapacity: totalFulfilledCapacity,
      tenancy: tenancy,
      endDate: endDate,
      createTime: createTime,
      instanceMatchCriteria: instanceMatchCriteria,
      allocationStrategy: allocationStrategy,
      instanceTypeSpecifications: instanceTypeSpecifications == null
          ? null
          : _i7.BuiltList(instanceTypeSpecifications),
      tags: tags == null ? null : _i7.BuiltList(tags),
    );
  }

  /// Information about a Capacity Reservation Fleet.
  factory CapacityReservationFleet.build(
          [void Function(CapacityReservationFleetBuilder) updates]) =
      _$CapacityReservationFleet;

  const CapacityReservationFleet._();

  static const List<_i8.SmithySerializer> serializers = [
    CapacityReservationFleetEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityReservationFleetBuilder b) {
    b.totalTargetCapacity = 0;
    b.totalFulfilledCapacity = 0;
  }

  /// The ID of the Capacity Reservation Fleet.
  String? get capacityReservationFleetId;

  /// The ARN of the Capacity Reservation Fleet.
  String? get capacityReservationFleetArn;

  /// The state of the Capacity Reservation Fleet. Possible states include:
  ///
  /// *   `submitted` \- The Capacity Reservation Fleet request has been submitted and Amazon Elastic Compute Cloud is preparing to create the Capacity Reservations.
  ///
  /// *   `modifying` \- The Capacity Reservation Fleet is being modified. The Fleet remains in this state until the modification is complete.
  ///
  /// *   `active` \- The Capacity Reservation Fleet has fulfilled its total target capacity and it is attempting to maintain this capacity. The Fleet remains in this state until it is modified or deleted.
  ///
  /// *   `partially_fulfilled` \- The Capacity Reservation Fleet has partially fulfilled its total target capacity. There is insufficient Amazon EC2 to fulfill the total target capacity. The Fleet is attempting to asynchronously fulfill its total target capacity.
  ///
  /// *   `expiring` \- The Capacity Reservation Fleet has reach its end date and it is in the process of expiring. One or more of its Capacity reservations might still be active.
  ///
  /// *   `expired` \- The Capacity Reservation Fleet has reach its end date. The Fleet and its Capacity Reservations are expired. The Fleet can't create new Capacity Reservations.
  ///
  /// *   `cancelling` \- The Capacity Reservation Fleet is in the process of being cancelled. One or more of its Capacity reservations might still be active.
  ///
  /// *   `cancelled` \- The Capacity Reservation Fleet has been manually cancelled. The Fleet and its Capacity Reservations are cancelled and the Fleet can't create new Capacity Reservations.
  ///
  /// *   `failed` \- The Capacity Reservation Fleet failed to reserve capacity for the specified instance types.
  _i2.CapacityReservationFleetState? get state;

  /// The total number of capacity units for which the Capacity Reservation Fleet reserves capacity. For more information, see [Total target capacity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity) in the Amazon EC2 User Guide.
  int get totalTargetCapacity;

  /// The capacity units that have been fulfilled.
  double get totalFulfilledCapacity;

  /// The tenancy of the Capacity Reservation Fleet. Tenancies include:
  ///
  /// *   `default` \- The Capacity Reservation Fleet is created on hardware that is shared with other Amazon Web Services accounts.
  ///
  /// *   `dedicated` \- The Capacity Reservation Fleet is created on single-tenant hardware that is dedicated to a single Amazon Web Services account.
  _i3.FleetCapacityReservationTenancy? get tenancy;

  /// The date and time at which the Capacity Reservation Fleet expires.
  DateTime? get endDate;

  /// The date and time at which the Capacity Reservation Fleet was created.
  DateTime? get createTime;

  /// Indicates the type of instance launches that the Capacity Reservation Fleet accepts. All Capacity Reservations in the Fleet inherit this instance matching criteria.
  ///
  /// Currently, Capacity Reservation Fleets support `open` instance matching criteria only. This means that instances that have matching attributes (instance type, platform, and Availability Zone) run in the Capacity Reservations automatically. Instances do not need to explicitly target a Capacity Reservation Fleet to use its reserved capacity.
  _i4.FleetInstanceMatchCriteria? get instanceMatchCriteria;

  /// The strategy used by the Capacity Reservation Fleet to determine which of the specified instance types to use. For more information, see For more information, see [Allocation strategy](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#allocation-strategy) in the Amazon EC2 User Guide.
  String? get allocationStrategy;

  /// Information about the instance types for which to reserve the capacity.
  _i7.BuiltList<_i5.FleetCapacityReservation>? get instanceTypeSpecifications;

  /// The tags assigned to the Capacity Reservation Fleet.
  _i7.BuiltList<_i6.Tag>? get tags;
  @override
  List<Object?> get props => [
        capacityReservationFleetId,
        capacityReservationFleetArn,
        state,
        totalTargetCapacity,
        totalFulfilledCapacity,
        tenancy,
        endDate,
        createTime,
        instanceMatchCriteria,
        allocationStrategy,
        instanceTypeSpecifications,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityReservationFleet');
    helper.add(
      'capacityReservationFleetId',
      capacityReservationFleetId,
    );
    helper.add(
      'capacityReservationFleetArn',
      capacityReservationFleetArn,
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
      'tenancy',
      tenancy,
    );
    helper.add(
      'endDate',
      endDate,
    );
    helper.add(
      'createTime',
      createTime,
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
      'instanceTypeSpecifications',
      instanceTypeSpecifications,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CapacityReservationFleetEc2QuerySerializer
    extends _i8.StructuredSmithySerializer<CapacityReservationFleet> {
  const CapacityReservationFleetEc2QuerySerializer()
      : super('CapacityReservationFleet');

  @override
  Iterable<Type> get types => const [
        CapacityReservationFleet,
        _$CapacityReservationFleet,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationFleet deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationFleetBuilder();
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
        case 'capacityReservationFleetArn':
          if (value != null) {
            result.capacityReservationFleetArn = (serializers.deserialize(
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
        case 'tenancy':
          if (value != null) {
            result.tenancy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.FleetCapacityReservationTenancy),
            ) as _i3.FleetCapacityReservationTenancy);
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
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'instanceMatchCriteria':
          if (value != null) {
            result.instanceMatchCriteria = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.FleetInstanceMatchCriteria),
            ) as _i4.FleetInstanceMatchCriteria);
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
        case 'instanceTypeSpecificationSet':
          if (value != null) {
            result.instanceTypeSpecifications
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
    final payload = (object as CapacityReservationFleet);
    final result = <Object?>[
      const _i8.XmlElementName(
        'CapacityReservationFleetResponse',
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
    if (payload.capacityReservationFleetArn != null) {
      result
        ..add(const _i8.XmlElementName('CapacityReservationFleetArn'))
        ..add(serializers.serialize(
          payload.capacityReservationFleetArn!,
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
    if (payload.tenancy != null) {
      result
        ..add(const _i8.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          payload.tenancy!,
          specifiedType:
              const FullType.nullable(_i3.FleetCapacityReservationTenancy),
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
    if (payload.createTime != null) {
      result
        ..add(const _i8.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.instanceMatchCriteria != null) {
      result
        ..add(const _i8.XmlElementName('InstanceMatchCriteria'))
        ..add(serializers.serialize(
          payload.instanceMatchCriteria!,
          specifiedType:
              const FullType.nullable(_i4.FleetInstanceMatchCriteria),
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
    if (payload.instanceTypeSpecifications != null) {
      result
        ..add(const _i8.XmlElementName('InstanceTypeSpecificationSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceTypeSpecifications!,
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
