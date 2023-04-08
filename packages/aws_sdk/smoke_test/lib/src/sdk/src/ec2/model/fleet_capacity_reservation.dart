// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_capacity_reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_instance_platform.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;

part 'fleet_capacity_reservation.g.dart';

/// Information about a Capacity Reservation in a Capacity Reservation Fleet.
abstract class FleetCapacityReservation
    with _i1.AWSEquatable<FleetCapacityReservation>
    implements
        Built<FleetCapacityReservation, FleetCapacityReservationBuilder> {
  /// Information about a Capacity Reservation in a Capacity Reservation Fleet.
  factory FleetCapacityReservation({
    String? capacityReservationId,
    String? availabilityZoneId,
    _i2.InstanceType? instanceType,
    _i3.CapacityReservationInstancePlatform? instancePlatform,
    String? availabilityZone,
    int? totalInstanceCount,
    double? fulfilledCapacity,
    bool? ebsOptimized,
    DateTime? createDate,
    double? weight,
    int? priority,
  }) {
    totalInstanceCount ??= 0;
    fulfilledCapacity ??= 0;
    ebsOptimized ??= false;
    return _$FleetCapacityReservation._(
      capacityReservationId: capacityReservationId,
      availabilityZoneId: availabilityZoneId,
      instanceType: instanceType,
      instancePlatform: instancePlatform,
      availabilityZone: availabilityZone,
      totalInstanceCount: totalInstanceCount,
      fulfilledCapacity: fulfilledCapacity,
      ebsOptimized: ebsOptimized,
      createDate: createDate,
      weight: weight,
      priority: priority,
    );
  }

  /// Information about a Capacity Reservation in a Capacity Reservation Fleet.
  factory FleetCapacityReservation.build(
          [void Function(FleetCapacityReservationBuilder) updates]) =
      _$FleetCapacityReservation;

  const FleetCapacityReservation._();

  static const List<_i4.SmithySerializer> serializers = [
    FleetCapacityReservationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetCapacityReservationBuilder b) {
    b.totalInstanceCount = 0;
    b.fulfilledCapacity = 0;
    b.ebsOptimized = false;
  }

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// The ID of the Availability Zone in which the Capacity Reservation reserves capacity.
  String? get availabilityZoneId;

  /// The instance type for which the Capacity Reservation reserves capacity.
  _i2.InstanceType? get instanceType;

  /// The type of operating system for which the Capacity Reservation reserves capacity.
  _i3.CapacityReservationInstancePlatform? get instancePlatform;

  /// The Availability Zone in which the Capacity Reservation reserves capacity.
  String? get availabilityZone;

  /// The total number of instances for which the Capacity Reservation reserves capacity.
  int get totalInstanceCount;

  /// The number of capacity units fulfilled by the Capacity Reservation. For more information, see [Total target capacity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity) in the Amazon EC2 User Guide.
  double get fulfilledCapacity;

  /// Indicates whether the Capacity Reservation reserves capacity for EBS-optimized instance types.
  bool get ebsOptimized;

  /// The date and time at which the Capacity Reservation was created.
  DateTime? get createDate;

  /// The weight of the instance type in the Capacity Reservation Fleet. For more information, see [Instance type weight](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-weight) in the Amazon EC2 User Guide.
  double? get weight;

  /// The priority of the instance type in the Capacity Reservation Fleet. For more information, see [Instance type priority](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority) in the Amazon EC2 User Guide.
  int? get priority;
  @override
  List<Object?> get props => [
        capacityReservationId,
        availabilityZoneId,
        instanceType,
        instancePlatform,
        availabilityZone,
        totalInstanceCount,
        fulfilledCapacity,
        ebsOptimized,
        createDate,
        weight,
        priority,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FleetCapacityReservation');
    helper.add(
      'capacityReservationId',
      capacityReservationId,
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
      'totalInstanceCount',
      totalInstanceCount,
    );
    helper.add(
      'fulfilledCapacity',
      fulfilledCapacity,
    );
    helper.add(
      'ebsOptimized',
      ebsOptimized,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'weight',
      weight,
    );
    helper.add(
      'priority',
      priority,
    );
    return helper.toString();
  }
}

class FleetCapacityReservationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<FleetCapacityReservation> {
  const FleetCapacityReservationEc2QuerySerializer()
      : super('FleetCapacityReservation');

  @override
  Iterable<Type> get types => const [
        FleetCapacityReservation,
        _$FleetCapacityReservation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetCapacityReservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetCapacityReservationBuilder();
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
              specifiedType: const FullType(_i2.InstanceType),
            ) as _i2.InstanceType);
          }
          break;
        case 'instancePlatform':
          if (value != null) {
            result.instancePlatform = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.CapacityReservationInstancePlatform),
            ) as _i3.CapacityReservationInstancePlatform);
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
        case 'totalInstanceCount':
          result.totalInstanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'fulfilledCapacity':
          result.fulfilledCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'createDate':
          if (value != null) {
            result.createDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'weight':
          if (value != null) {
            result.weight = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'priority':
          if (value != null) {
            result.priority = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as FleetCapacityReservation);
    final result = <Object?>[
      const _i4.XmlElementName(
        'FleetCapacityReservationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityReservationId != null) {
      result
        ..add(const _i4.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          payload.capacityReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZoneId != null) {
      result
        ..add(const _i4.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          payload.availabilityZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i4.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (payload.instancePlatform != null) {
      result
        ..add(const _i4.XmlElementName('InstancePlatform'))
        ..add(serializers.serialize(
          payload.instancePlatform!,
          specifiedType:
              const FullType.nullable(_i3.CapacityReservationInstancePlatform),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i4.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('TotalInstanceCount'))
      ..add(serializers.serialize(
        payload.totalInstanceCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i4.XmlElementName('FulfilledCapacity'))
      ..add(serializers.serialize(
        payload.fulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i4.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (payload.createDate != null) {
      result
        ..add(const _i4.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.weight != null) {
      result
        ..add(const _i4.XmlElementName('Weight'))
        ..add(serializers.serialize(
          payload.weight!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.priority != null) {
      result
        ..add(const _i4.XmlElementName('Priority'))
        ..add(serializers.serialize(
          payload.priority!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
