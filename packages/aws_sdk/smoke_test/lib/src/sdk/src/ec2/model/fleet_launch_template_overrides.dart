// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_launch_template_overrides; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_response.dart'
    as _i3;

part 'fleet_launch_template_overrides.g.dart';

/// Describes overrides for a launch template.
abstract class FleetLaunchTemplateOverrides
    with
        _i1.AWSEquatable<FleetLaunchTemplateOverrides>
    implements
        Built<FleetLaunchTemplateOverrides,
            FleetLaunchTemplateOverridesBuilder> {
  /// Describes overrides for a launch template.
  factory FleetLaunchTemplateOverrides({
    _i2.InstanceType? instanceType,
    String? maxPrice,
    String? subnetId,
    String? availabilityZone,
    double? weightedCapacity,
    double? priority,
    _i3.PlacementResponse? placement,
    _i4.InstanceRequirements? instanceRequirements,
    String? imageId,
  }) {
    weightedCapacity ??= 0;
    priority ??= 0;
    return _$FleetLaunchTemplateOverrides._(
      instanceType: instanceType,
      maxPrice: maxPrice,
      subnetId: subnetId,
      availabilityZone: availabilityZone,
      weightedCapacity: weightedCapacity,
      priority: priority,
      placement: placement,
      instanceRequirements: instanceRequirements,
      imageId: imageId,
    );
  }

  /// Describes overrides for a launch template.
  factory FleetLaunchTemplateOverrides.build(
          [void Function(FleetLaunchTemplateOverridesBuilder) updates]) =
      _$FleetLaunchTemplateOverrides;

  const FleetLaunchTemplateOverrides._();

  static const List<_i5.SmithySerializer> serializers = [
    FleetLaunchTemplateOverridesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetLaunchTemplateOverridesBuilder b) {
    b.weightedCapacity = 0;
    b.priority = 0;
  }

  /// The instance type.
  ///
  /// If you specify `InstanceType`, you can't specify `InstanceRequirements`.
  _i2.InstanceType? get instanceType;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get maxPrice;

  /// The ID of the subnet in which to launch the instances.
  String? get subnetId;

  /// The Availability Zone in which to launch the instances.
  String? get availabilityZone;

  /// The number of units provided by the specified instance type.
  double get weightedCapacity;

  /// The priority for the launch template override. The highest priority is launched first.
  ///
  /// If the On-Demand `AllocationStrategy` is set to `prioritized`, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity.
  ///
  /// If the Spot `AllocationStrategy` is set to `capacity-optimized-prioritized`, EC2 Fleet uses priority on a best-effort basis to determine which launch template override to use in fulfilling Spot capacity, but optimizes for capacity first.
  ///
  /// Valid values are whole numbers starting at `0`. The lower the number, the higher the priority. If no number is set, the override has the lowest priority. You can set the same priority for different launch template overrides.
  double get priority;

  /// The location where the instance launched, if applicable.
  _i3.PlacementResponse? get placement;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceType`.
  _i4.InstanceRequirements? get instanceRequirements;

  /// The ID of the AMI. An AMI is required to launch an instance. The AMI ID must be specified here or in the launch template.
  String? get imageId;
  @override
  List<Object?> get props => [
        instanceType,
        maxPrice,
        subnetId,
        availabilityZone,
        weightedCapacity,
        priority,
        placement,
        instanceRequirements,
        imageId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FleetLaunchTemplateOverrides');
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'maxPrice',
      maxPrice,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'weightedCapacity',
      weightedCapacity,
    );
    helper.add(
      'priority',
      priority,
    );
    helper.add(
      'placement',
      placement,
    );
    helper.add(
      'instanceRequirements',
      instanceRequirements,
    );
    helper.add(
      'imageId',
      imageId,
    );
    return helper.toString();
  }
}

class FleetLaunchTemplateOverridesEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<FleetLaunchTemplateOverrides> {
  const FleetLaunchTemplateOverridesEc2QuerySerializer()
      : super('FleetLaunchTemplateOverrides');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateOverrides,
        _$FleetLaunchTemplateOverrides,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateOverrides deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateOverridesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceType),
            ) as _i2.InstanceType);
          }
          break;
        case 'maxPrice':
          if (value != null) {
            result.maxPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'weightedCapacity':
          result.weightedCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'priority':
          result.priority = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PlacementResponse),
            ) as _i3.PlacementResponse));
          }
          break;
        case 'instanceRequirements':
          if (value != null) {
            result.instanceRequirements.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.InstanceRequirements),
            ) as _i4.InstanceRequirements));
          }
          break;
        case 'imageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
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
    final payload = (object as FleetLaunchTemplateOverrides);
    final result = <Object?>[
      const _i5.XmlElementName(
        'FleetLaunchTemplateOverridesResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceType != null) {
      result
        ..add(const _i5.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (payload.maxPrice != null) {
      result
        ..add(const _i5.XmlElementName('MaxPrice'))
        ..add(serializers.serialize(
          payload.maxPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i5.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i5.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('WeightedCapacity'))
      ..add(serializers.serialize(
        payload.weightedCapacity,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i5.XmlElementName('Priority'))
      ..add(serializers.serialize(
        payload.priority,
        specifiedType: const FullType(double),
      ));
    if (payload.placement != null) {
      result
        ..add(const _i5.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i3.PlacementResponse),
        ));
    }
    if (payload.instanceRequirements != null) {
      result
        ..add(const _i5.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          payload.instanceRequirements!,
          specifiedType: const FullType(_i4.InstanceRequirements),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i5.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
