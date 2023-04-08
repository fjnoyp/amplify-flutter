// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.capacity_reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_allocation.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_instance_platform.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_tenancy.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/end_date_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_match_criteria.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i7;

part 'capacity_reservation.g.dart';

/// Describes a Capacity Reservation.
abstract class CapacityReservation
    with _i1.AWSEquatable<CapacityReservation>
    implements Built<CapacityReservation, CapacityReservationBuilder> {
  /// Describes a Capacity Reservation.
  factory CapacityReservation({
    String? capacityReservationId,
    String? ownerId,
    String? capacityReservationArn,
    String? availabilityZoneId,
    String? instanceType,
    _i2.CapacityReservationInstancePlatform? instancePlatform,
    String? availabilityZone,
    _i3.CapacityReservationTenancy? tenancy,
    int? totalInstanceCount,
    int? availableInstanceCount,
    bool? ebsOptimized,
    bool? ephemeralStorage,
    _i4.CapacityReservationState? state,
    DateTime? startDate,
    DateTime? endDate,
    _i5.EndDateType? endDateType,
    _i6.InstanceMatchCriteria? instanceMatchCriteria,
    DateTime? createDate,
    List<_i7.Tag>? tags,
    String? outpostArn,
    String? capacityReservationFleetId,
    String? placementGroupArn,
    List<_i8.CapacityAllocation>? capacityAllocations,
  }) {
    totalInstanceCount ??= 0;
    availableInstanceCount ??= 0;
    ebsOptimized ??= false;
    ephemeralStorage ??= false;
    return _$CapacityReservation._(
      capacityReservationId: capacityReservationId,
      ownerId: ownerId,
      capacityReservationArn: capacityReservationArn,
      availabilityZoneId: availabilityZoneId,
      instanceType: instanceType,
      instancePlatform: instancePlatform,
      availabilityZone: availabilityZone,
      tenancy: tenancy,
      totalInstanceCount: totalInstanceCount,
      availableInstanceCount: availableInstanceCount,
      ebsOptimized: ebsOptimized,
      ephemeralStorage: ephemeralStorage,
      state: state,
      startDate: startDate,
      endDate: endDate,
      endDateType: endDateType,
      instanceMatchCriteria: instanceMatchCriteria,
      createDate: createDate,
      tags: tags == null ? null : _i9.BuiltList(tags),
      outpostArn: outpostArn,
      capacityReservationFleetId: capacityReservationFleetId,
      placementGroupArn: placementGroupArn,
      capacityAllocations: capacityAllocations == null
          ? null
          : _i9.BuiltList(capacityAllocations),
    );
  }

  /// Describes a Capacity Reservation.
  factory CapacityReservation.build(
          [void Function(CapacityReservationBuilder) updates]) =
      _$CapacityReservation;

  const CapacityReservation._();

  static const List<_i10.SmithySerializer> serializers = [
    CapacityReservationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityReservationBuilder b) {
    b.totalInstanceCount = 0;
    b.availableInstanceCount = 0;
    b.ebsOptimized = false;
    b.ephemeralStorage = false;
  }

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// The ID of the Amazon Web Services account that owns the Capacity Reservation.
  String? get ownerId;

  /// The Amazon Resource Name (ARN) of the Capacity Reservation.
  String? get capacityReservationArn;

  /// The Availability Zone ID of the Capacity Reservation.
  String? get availabilityZoneId;

  /// The type of instance for which the Capacity Reservation reserves capacity.
  String? get instanceType;

  /// The type of operating system for which the Capacity Reservation reserves capacity.
  _i2.CapacityReservationInstancePlatform? get instancePlatform;

  /// The Availability Zone in which the capacity is reserved.
  String? get availabilityZone;

  /// Indicates the tenancy of the Capacity Reservation. A Capacity Reservation can have one of the following tenancy settings:
  ///
  /// *   `default` \- The Capacity Reservation is created on hardware that is shared with other Amazon Web Services accounts.
  ///
  /// *   `dedicated` \- The Capacity Reservation is created on single-tenant hardware that is dedicated to a single Amazon Web Services account.
  _i3.CapacityReservationTenancy? get tenancy;

  /// The total number of instances for which the Capacity Reservation reserves capacity.
  int get totalInstanceCount;

  /// The remaining capacity. Indicates the number of instances that can be launched in the Capacity Reservation.
  int get availableInstanceCount;

  /// Indicates whether the Capacity Reservation supports EBS-optimized instances. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS- optimized instance.
  bool get ebsOptimized;

  /// _Deprecated._
  bool get ephemeralStorage;

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
  _i4.CapacityReservationState? get state;

  /// The date and time at which the Capacity Reservation was started.
  DateTime? get startDate;

  /// The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. The Capacity Reservation's state changes to `expired` when it reaches its end date and time.
  DateTime? get endDate;

  /// Indicates the way in which the Capacity Reservation ends. A Capacity Reservation can have one of the following end types:
  ///
  /// *   `unlimited` \- The Capacity Reservation remains active until you explicitly cancel it.
  ///
  /// *   `limited` \- The Capacity Reservation expires automatically at a specified date and time.
  _i5.EndDateType? get endDateType;

  /// Indicates the type of instance launches that the Capacity Reservation accepts. The options include:
  ///
  /// *   `open` \- The Capacity Reservation accepts all instances that have matching attributes (instance type, platform, and Availability Zone). Instances that have matching attributes launch into the Capacity Reservation automatically without specifying any additional parameters.
  ///
  /// *   `targeted` \- The Capacity Reservation only accepts instances that have matching attributes (instance type, platform, and Availability Zone), and explicitly target the Capacity Reservation. This ensures that only permitted instances can use the reserved capacity.
  _i6.InstanceMatchCriteria? get instanceMatchCriteria;

  /// The date and time at which the Capacity Reservation was created.
  DateTime? get createDate;

  /// Any tags assigned to the Capacity Reservation.
  _i9.BuiltList<_i7.Tag>? get tags;

  /// The Amazon Resource Name (ARN) of the Outpost on which the Capacity Reservation was created.
  String? get outpostArn;

  /// The ID of the Capacity Reservation Fleet to which the Capacity Reservation belongs. Only valid for Capacity Reservations that were created by a Capacity Reservation Fleet.
  String? get capacityReservationFleetId;

  /// The Amazon Resource Name (ARN) of the cluster placement group in which the Capacity Reservation was created. For more information, see [Capacity Reservations for cluster placement groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cr-cpg.html) in the _Amazon EC2 User Guide_.
  String? get placementGroupArn;

  /// Information about instance capacity usage.
  _i9.BuiltList<_i8.CapacityAllocation>? get capacityAllocations;
  @override
  List<Object?> get props => [
        capacityReservationId,
        ownerId,
        capacityReservationArn,
        availabilityZoneId,
        instanceType,
        instancePlatform,
        availabilityZone,
        tenancy,
        totalInstanceCount,
        availableInstanceCount,
        ebsOptimized,
        ephemeralStorage,
        state,
        startDate,
        endDate,
        endDateType,
        instanceMatchCriteria,
        createDate,
        tags,
        outpostArn,
        capacityReservationFleetId,
        placementGroupArn,
        capacityAllocations,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityReservation');
    helper.add(
      'capacityReservationId',
      capacityReservationId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'capacityReservationArn',
      capacityReservationArn,
    );
    helper.add(
      'availabilityZoneId',
      availabilityZoneId,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'instancePlatform',
      instancePlatform,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'tenancy',
      tenancy,
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
      'ebsOptimized',
      ebsOptimized,
    );
    helper.add(
      'ephemeralStorage',
      ephemeralStorage,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'startDate',
      startDate,
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
      'instanceMatchCriteria',
      instanceMatchCriteria,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'capacityReservationFleetId',
      capacityReservationFleetId,
    );
    helper.add(
      'placementGroupArn',
      placementGroupArn,
    );
    helper.add(
      'capacityAllocations',
      capacityAllocations,
    );
    return helper.toString();
  }
}

class CapacityReservationEc2QuerySerializer
    extends _i10.StructuredSmithySerializer<CapacityReservation> {
  const CapacityReservationEc2QuerySerializer() : super('CapacityReservation');

  @override
  Iterable<Type> get types => const [
        CapacityReservation,
        _$CapacityReservation,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'capacityReservationId':
          if (value != null) {
            result.capacityReservationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'capacityReservationArn':
          if (value != null) {
            result.capacityReservationArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZoneId':
          if (value != null) {
            result.availabilityZoneId = (serializers.deserialize(
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
        case 'instancePlatform':
          if (value != null) {
            result.instancePlatform = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.CapacityReservationInstancePlatform),
            ) as _i2.CapacityReservationInstancePlatform);
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tenancy':
          if (value != null) {
            result.tenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CapacityReservationTenancy),
            ) as _i3.CapacityReservationTenancy);
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
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ephemeralStorage':
          result.ephemeralStorage = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.CapacityReservationState),
            ) as _i4.CapacityReservationState);
          }
          break;
        case 'startDate':
          if (value != null) {
            result.startDate = (serializers.deserialize(
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
        case 'endDateType':
          if (value != null) {
            result.endDateType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.EndDateType),
            ) as _i5.EndDateType);
          }
          break;
        case 'instanceMatchCriteria':
          if (value != null) {
            result.instanceMatchCriteria = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.InstanceMatchCriteria),
            ) as _i6.InstanceMatchCriteria);
          }
          break;
        case 'createDate':
          if (value != null) {
            result.createDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i10.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i10.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i7.Tag)],
              ),
            ) as _i9.BuiltList<_i7.Tag>));
          }
          break;
        case 'outpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'capacityReservationFleetId':
          if (value != null) {
            result.capacityReservationFleetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'placementGroupArn':
          if (value != null) {
            result.placementGroupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'capacityAllocationSet':
          if (value != null) {
            result.capacityAllocations
                .replace((const _i10.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i10.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i8.CapacityAllocation)],
              ),
            ) as _i9.BuiltList<_i8.CapacityAllocation>));
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
    final payload = (object as CapacityReservation);
    final result = <Object?>[
      const _i10.XmlElementName(
        'CapacityReservationResponse',
        _i10.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityReservationId != null) {
      result
        ..add(const _i10.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          payload.capacityReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i10.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityReservationArn != null) {
      result
        ..add(const _i10.XmlElementName('CapacityReservationArn'))
        ..add(serializers.serialize(
          payload.capacityReservationArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZoneId != null) {
      result
        ..add(const _i10.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          payload.availabilityZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i10.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instancePlatform != null) {
      result
        ..add(const _i10.XmlElementName('InstancePlatform'))
        ..add(serializers.serialize(
          payload.instancePlatform!,
          specifiedType:
              const FullType.nullable(_i2.CapacityReservationInstancePlatform),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i10.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tenancy != null) {
      result
        ..add(const _i10.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          payload.tenancy!,
          specifiedType:
              const FullType.nullable(_i3.CapacityReservationTenancy),
        ));
    }
    result
      ..add(const _i10.XmlElementName('TotalInstanceCount'))
      ..add(serializers.serialize(
        payload.totalInstanceCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i10.XmlElementName('AvailableInstanceCount'))
      ..add(serializers.serialize(
        payload.availableInstanceCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i10.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i10.XmlElementName('EphemeralStorage'))
      ..add(serializers.serialize(
        payload.ephemeralStorage,
        specifiedType: const FullType(bool),
      ));
    if (payload.state != null) {
      result
        ..add(const _i10.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i4.CapacityReservationState),
        ));
    }
    if (payload.startDate != null) {
      result
        ..add(const _i10.XmlElementName('StartDate'))
        ..add(serializers.serialize(
          payload.startDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.endDate != null) {
      result
        ..add(const _i10.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          payload.endDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.endDateType != null) {
      result
        ..add(const _i10.XmlElementName('EndDateType'))
        ..add(serializers.serialize(
          payload.endDateType!,
          specifiedType: const FullType.nullable(_i5.EndDateType),
        ));
    }
    if (payload.instanceMatchCriteria != null) {
      result
        ..add(const _i10.XmlElementName('InstanceMatchCriteria'))
        ..add(serializers.serialize(
          payload.instanceMatchCriteria!,
          specifiedType: const FullType.nullable(_i6.InstanceMatchCriteria),
        ));
    }
    if (payload.createDate != null) {
      result
        ..add(const _i10.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i10.XmlElementName('TagSet'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i7.Tag)],
          ),
        ));
    }
    if (payload.outpostArn != null) {
      result
        ..add(const _i10.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityReservationFleetId != null) {
      result
        ..add(const _i10.XmlElementName('CapacityReservationFleetId'))
        ..add(serializers.serialize(
          payload.capacityReservationFleetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.placementGroupArn != null) {
      result
        ..add(const _i10.XmlElementName('PlacementGroupArn'))
        ..add(serializers.serialize(
          payload.placementGroupArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityAllocations != null) {
      result
        ..add(const _i10.XmlElementName('CapacityAllocationSet'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.capacityAllocations!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i8.CapacityAllocation)],
          ),
        ));
    }
    return result;
  }
}
