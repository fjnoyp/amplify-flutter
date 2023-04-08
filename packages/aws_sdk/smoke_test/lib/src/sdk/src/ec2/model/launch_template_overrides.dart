// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_overrides; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;

part 'launch_template_overrides.g.dart';

/// Describes overrides for a launch template.
abstract class LaunchTemplateOverrides
    with _i1.AWSEquatable<LaunchTemplateOverrides>
    implements Built<LaunchTemplateOverrides, LaunchTemplateOverridesBuilder> {
  /// Describes overrides for a launch template.
  factory LaunchTemplateOverrides({
    _i2.InstanceType? instanceType,
    String? spotPrice,
    String? subnetId,
    String? availabilityZone,
    double? weightedCapacity,
    double? priority,
    _i3.InstanceRequirements? instanceRequirements,
  }) {
    weightedCapacity ??= 0;
    priority ??= 0;
    return _$LaunchTemplateOverrides._(
      instanceType: instanceType,
      spotPrice: spotPrice,
      subnetId: subnetId,
      availabilityZone: availabilityZone,
      weightedCapacity: weightedCapacity,
      priority: priority,
      instanceRequirements: instanceRequirements,
    );
  }

  /// Describes overrides for a launch template.
  factory LaunchTemplateOverrides.build(
          [void Function(LaunchTemplateOverridesBuilder) updates]) =
      _$LaunchTemplateOverrides;

  const LaunchTemplateOverrides._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateOverridesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateOverridesBuilder b) {
    b.weightedCapacity = 0;
    b.priority = 0;
  }

  /// The instance type.
  _i2.InstanceType? get instanceType;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The ID of the subnet in which to launch the instances.
  String? get subnetId;

  /// The Availability Zone in which to launch the instances.
  String? get availabilityZone;

  /// The number of units provided by the specified instance type.
  double get weightedCapacity;

  /// The priority for the launch template override. The highest priority is launched first.
  ///
  /// If `OnDemandAllocationStrategy` is set to `prioritized`, Spot Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity.
  ///
  /// If the Spot `AllocationStrategy` is set to `capacityOptimizedPrioritized`, Spot Fleet uses priority on a best-effort basis to determine which launch template override to use in fulfilling Spot capacity, but optimizes for capacity first.
  ///
  /// Valid values are whole numbers starting at `0`. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. You can set the same priority for different launch template overrides.
  double get priority;

  /// The instance requirements. When you specify instance requirements, Amazon EC2 will identify instance types with the provided requirements, and then use your On-Demand and Spot allocation strategies to launch instances from these instance types, in the same way as when you specify a list of instance types.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceType`.
  _i3.InstanceRequirements? get instanceRequirements;
  @override
  List<Object?> get props => [
        instanceType,
        spotPrice,
        subnetId,
        availabilityZone,
        weightedCapacity,
        priority,
        instanceRequirements,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateOverrides');
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'spotPrice',
      spotPrice,
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
      'instanceRequirements',
      instanceRequirements,
    );
    return helper.toString();
  }
}

class LaunchTemplateOverridesEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LaunchTemplateOverrides> {
  const LaunchTemplateOverridesEc2QuerySerializer()
      : super('LaunchTemplateOverrides');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateOverrides,
        _$LaunchTemplateOverrides,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateOverrides deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateOverridesBuilder();
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
        case 'spotPrice':
          if (value != null) {
            result.spotPrice = (serializers.deserialize(
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
        case 'instanceRequirements':
          if (value != null) {
            result.instanceRequirements.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InstanceRequirements),
            ) as _i3.InstanceRequirements));
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
    final payload = (object as LaunchTemplateOverrides);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateOverridesResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceType != null) {
      result
        ..add(const _i4.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (payload.spotPrice != null) {
      result
        ..add(const _i4.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          payload.spotPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i4.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
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
      ..add(const _i4.XmlElementName('WeightedCapacity'))
      ..add(serializers.serialize(
        payload.weightedCapacity,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i4.XmlElementName('Priority'))
      ..add(serializers.serialize(
        payload.priority,
        specifiedType: const FullType(double),
      ));
    if (payload.instanceRequirements != null) {
      result
        ..add(const _i4.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          payload.instanceRequirements!,
          specifiedType: const FullType(_i3.InstanceRequirements),
        ));
    }
    return result;
  }
}
