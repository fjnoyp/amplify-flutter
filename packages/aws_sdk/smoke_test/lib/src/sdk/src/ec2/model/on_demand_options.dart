// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.on_demand_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_options.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_on_demand_allocation_strategy.dart'
    as _i2;

part 'on_demand_options.g.dart';

/// Describes the configuration of On-Demand Instances in an EC2 Fleet.
abstract class OnDemandOptions
    with _i1.AWSEquatable<OnDemandOptions>
    implements Built<OnDemandOptions, OnDemandOptionsBuilder> {
  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  factory OnDemandOptions({
    _i2.FleetOnDemandAllocationStrategy? allocationStrategy,
    _i3.CapacityReservationOptions? capacityReservationOptions,
    bool? singleInstanceType,
    bool? singleAvailabilityZone,
    int? minTargetCapacity,
    String? maxTotalPrice,
  }) {
    singleInstanceType ??= false;
    singleAvailabilityZone ??= false;
    minTargetCapacity ??= 0;
    return _$OnDemandOptions._(
      allocationStrategy: allocationStrategy,
      capacityReservationOptions: capacityReservationOptions,
      singleInstanceType: singleInstanceType,
      singleAvailabilityZone: singleAvailabilityZone,
      minTargetCapacity: minTargetCapacity,
      maxTotalPrice: maxTotalPrice,
    );
  }

  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  factory OnDemandOptions.build(
      [void Function(OnDemandOptionsBuilder) updates]) = _$OnDemandOptions;

  const OnDemandOptions._();

  static const List<_i4.SmithySerializer> serializers = [
    OnDemandOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OnDemandOptionsBuilder b) {
    b.singleInstanceType = false;
    b.singleAvailabilityZone = false;
    b.minTargetCapacity = 0;
  }

  /// The strategy that determines the order of the launch template overrides to use in fulfilling On-Demand capacity.
  ///
  /// `lowest-price` \- EC2 Fleet uses price to determine the order, launching the lowest price first.
  ///
  /// `prioritized` \- EC2 Fleet uses the priority that you assigned to each launch template override, launching the highest priority first.
  ///
  /// Default: `lowest-price`
  _i2.FleetOnDemandAllocationStrategy? get allocationStrategy;

  /// The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// Supported only for fleets of type `instant`.
  _i3.CapacityReservationOptions? get capacityReservationOptions;

  /// Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleInstanceType;

  /// Indicates that the fleet launches all On-Demand Instances into a single Availability Zone.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleAvailabilityZone;

  /// The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
  ///
  /// Supported only for fleets of type `instant`.
  ///
  /// At least one of the following must be specified: `SingleAvailabilityZone` | `SingleInstanceType`
  int get minTargetCapacity;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay.
  String? get maxTotalPrice;
  @override
  List<Object?> get props => [
        allocationStrategy,
        capacityReservationOptions,
        singleInstanceType,
        singleAvailabilityZone,
        minTargetCapacity,
        maxTotalPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OnDemandOptions');
    helper.add(
      'allocationStrategy',
      allocationStrategy,
    );
    helper.add(
      'capacityReservationOptions',
      capacityReservationOptions,
    );
    helper.add(
      'singleInstanceType',
      singleInstanceType,
    );
    helper.add(
      'singleAvailabilityZone',
      singleAvailabilityZone,
    );
    helper.add(
      'minTargetCapacity',
      minTargetCapacity,
    );
    helper.add(
      'maxTotalPrice',
      maxTotalPrice,
    );
    return helper.toString();
  }
}

class OnDemandOptionsEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<OnDemandOptions> {
  const OnDemandOptionsEc2QuerySerializer() : super('OnDemandOptions');

  @override
  Iterable<Type> get types => const [
        OnDemandOptions,
        _$OnDemandOptions,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  OnDemandOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OnDemandOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'allocationStrategy':
          if (value != null) {
            result.allocationStrategy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.FleetOnDemandAllocationStrategy),
            ) as _i2.FleetOnDemandAllocationStrategy);
          }
          break;
        case 'capacityReservationOptions':
          if (value != null) {
            result.capacityReservationOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CapacityReservationOptions),
            ) as _i3.CapacityReservationOptions));
          }
          break;
        case 'singleInstanceType':
          result.singleInstanceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'singleAvailabilityZone':
          result.singleAvailabilityZone = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'minTargetCapacity':
          result.minTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'maxTotalPrice':
          if (value != null) {
            result.maxTotalPrice = (serializers.deserialize(
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
    final payload = (object as OnDemandOptions);
    final result = <Object?>[
      const _i4.XmlElementName(
        'OnDemandOptionsResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationStrategy != null) {
      result
        ..add(const _i4.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          payload.allocationStrategy!,
          specifiedType:
              const FullType.nullable(_i2.FleetOnDemandAllocationStrategy),
        ));
    }
    if (payload.capacityReservationOptions != null) {
      result
        ..add(const _i4.XmlElementName('CapacityReservationOptions'))
        ..add(serializers.serialize(
          payload.capacityReservationOptions!,
          specifiedType: const FullType(_i3.CapacityReservationOptions),
        ));
    }
    result
      ..add(const _i4.XmlElementName('SingleInstanceType'))
      ..add(serializers.serialize(
        payload.singleInstanceType,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i4.XmlElementName('SingleAvailabilityZone'))
      ..add(serializers.serialize(
        payload.singleAvailabilityZone,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i4.XmlElementName('MinTargetCapacity'))
      ..add(serializers.serialize(
        payload.minTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (payload.maxTotalPrice != null) {
      result
        ..add(const _i4.XmlElementName('MaxTotalPrice'))
        ..add(serializers.serialize(
          payload.maxTotalPrice!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
