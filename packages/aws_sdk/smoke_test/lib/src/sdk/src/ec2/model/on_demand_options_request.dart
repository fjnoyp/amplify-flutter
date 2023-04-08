// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.on_demand_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_options_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_on_demand_allocation_strategy.dart'
    as _i2;

part 'on_demand_options_request.g.dart';

/// Describes the configuration of On-Demand Instances in an EC2 Fleet.
abstract class OnDemandOptionsRequest
    with _i1.AWSEquatable<OnDemandOptionsRequest>
    implements Built<OnDemandOptionsRequest, OnDemandOptionsRequestBuilder> {
  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  factory OnDemandOptionsRequest({
    _i2.FleetOnDemandAllocationStrategy? allocationStrategy,
    _i3.CapacityReservationOptionsRequest? capacityReservationOptions,
    bool? singleInstanceType,
    bool? singleAvailabilityZone,
    int? minTargetCapacity,
    String? maxTotalPrice,
  }) {
    singleInstanceType ??= false;
    singleAvailabilityZone ??= false;
    minTargetCapacity ??= 0;
    return _$OnDemandOptionsRequest._(
      allocationStrategy: allocationStrategy,
      capacityReservationOptions: capacityReservationOptions,
      singleInstanceType: singleInstanceType,
      singleAvailabilityZone: singleAvailabilityZone,
      minTargetCapacity: minTargetCapacity,
      maxTotalPrice: maxTotalPrice,
    );
  }

  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  factory OnDemandOptionsRequest.build(
          [void Function(OnDemandOptionsRequestBuilder) updates]) =
      _$OnDemandOptionsRequest;

  const OnDemandOptionsRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    OnDemandOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OnDemandOptionsRequestBuilder b) {
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
  _i3.CapacityReservationOptionsRequest? get capacityReservationOptions;

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
    final helper = newBuiltValueToStringHelper('OnDemandOptionsRequest');
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

class OnDemandOptionsRequestEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<OnDemandOptionsRequest> {
  const OnDemandOptionsRequestEc2QuerySerializer()
      : super('OnDemandOptionsRequest');

  @override
  Iterable<Type> get types => const [
        OnDemandOptionsRequest,
        _$OnDemandOptionsRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  OnDemandOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OnDemandOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AllocationStrategy':
          if (value != null) {
            result.allocationStrategy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.FleetOnDemandAllocationStrategy),
            ) as _i2.FleetOnDemandAllocationStrategy);
          }
          break;
        case 'CapacityReservationOptions':
          if (value != null) {
            result.capacityReservationOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.CapacityReservationOptionsRequest),
            ) as _i3.CapacityReservationOptionsRequest));
          }
          break;
        case 'SingleInstanceType':
          result.singleInstanceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'SingleAvailabilityZone':
          result.singleAvailabilityZone = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'MinTargetCapacity':
          result.minTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'MaxTotalPrice':
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
    final payload = (object as OnDemandOptionsRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'OnDemandOptionsRequestResponse',
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
          specifiedType: const FullType(_i3.CapacityReservationOptionsRequest),
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
