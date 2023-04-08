// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_fleet_request_config_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i13;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_strategy.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/excess_capacity_termination_policy.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_type.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_config.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/load_balancers_config.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_allocation_strategy.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_launch_specification.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_maintenance_strategies.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_unit_type.dart'
    as _i11;

part 'spot_fleet_request_config_data.g.dart';

/// Describes the configuration of a Spot Fleet request.
abstract class SpotFleetRequestConfigData
    with _i1.AWSEquatable<SpotFleetRequestConfigData>
    implements
        Built<SpotFleetRequestConfigData, SpotFleetRequestConfigDataBuilder> {
  /// Describes the configuration of a Spot Fleet request.
  factory SpotFleetRequestConfigData({
    _i2.AllocationStrategy? allocationStrategy,
    _i3.OnDemandAllocationStrategy? onDemandAllocationStrategy,
    _i4.SpotMaintenanceStrategies? spotMaintenanceStrategies,
    String? clientToken,
    _i5.ExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    double? fulfilledCapacity,
    double? onDemandFulfilledCapacity,
    required String iamFleetRole,
    List<_i6.SpotFleetLaunchSpecification>? launchSpecifications,
    List<_i7.LaunchTemplateConfig>? launchTemplateConfigs,
    String? spotPrice,
    int? targetCapacity,
    int? onDemandTargetCapacity,
    String? onDemandMaxTotalPrice,
    String? spotMaxTotalPrice,
    bool? terminateInstancesWithExpiration,
    _i8.FleetType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    bool? replaceUnhealthyInstances,
    _i9.InstanceInterruptionBehavior? instanceInterruptionBehavior,
    _i10.LoadBalancersConfig? loadBalancersConfig,
    int? instancePoolsToUseCount,
    String? context,
    _i11.TargetCapacityUnitType? targetCapacityUnitType,
    List<_i12.TagSpecification>? tagSpecifications,
  }) {
    fulfilledCapacity ??= 0;
    onDemandFulfilledCapacity ??= 0;
    targetCapacity ??= 0;
    onDemandTargetCapacity ??= 0;
    terminateInstancesWithExpiration ??= false;
    replaceUnhealthyInstances ??= false;
    instancePoolsToUseCount ??= 0;
    return _$SpotFleetRequestConfigData._(
      allocationStrategy: allocationStrategy,
      onDemandAllocationStrategy: onDemandAllocationStrategy,
      spotMaintenanceStrategies: spotMaintenanceStrategies,
      clientToken: clientToken,
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      fulfilledCapacity: fulfilledCapacity,
      onDemandFulfilledCapacity: onDemandFulfilledCapacity,
      iamFleetRole: iamFleetRole,
      launchSpecifications: launchSpecifications == null
          ? null
          : _i13.BuiltList(launchSpecifications),
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i13.BuiltList(launchTemplateConfigs),
      spotPrice: spotPrice,
      targetCapacity: targetCapacity,
      onDemandTargetCapacity: onDemandTargetCapacity,
      onDemandMaxTotalPrice: onDemandMaxTotalPrice,
      spotMaxTotalPrice: spotMaxTotalPrice,
      terminateInstancesWithExpiration: terminateInstancesWithExpiration,
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      replaceUnhealthyInstances: replaceUnhealthyInstances,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
      loadBalancersConfig: loadBalancersConfig,
      instancePoolsToUseCount: instancePoolsToUseCount,
      context: context,
      targetCapacityUnitType: targetCapacityUnitType,
      tagSpecifications:
          tagSpecifications == null ? null : _i13.BuiltList(tagSpecifications),
    );
  }

  /// Describes the configuration of a Spot Fleet request.
  factory SpotFleetRequestConfigData.build(
          [void Function(SpotFleetRequestConfigDataBuilder) updates]) =
      _$SpotFleetRequestConfigData;

  const SpotFleetRequestConfigData._();

  static const List<_i14.SmithySerializer> serializers = [
    SpotFleetRequestConfigDataEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotFleetRequestConfigDataBuilder b) {
    b.fulfilledCapacity = 0;
    b.onDemandFulfilledCapacity = 0;
    b.targetCapacity = 0;
    b.onDemandTargetCapacity = 0;
    b.terminateInstancesWithExpiration = false;
    b.replaceUnhealthyInstances = false;
    b.instancePoolsToUseCount = 0;
  }

  /// The strategy that determines how to allocate the target Spot Instance capacity across the Spot Instance pools specified by the Spot Fleet launch configuration. For more information, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-allocation-strategy.html) in the _Amazon EC2 User Guide for Linux Instances_.
  ///
  /// `lowestPrice` \- Spot Fleet launches instances from the lowest-price Spot Instance pool that has available capacity. If the cheapest pool doesn't have available capacity, the Spot Instances come from the next cheapest pool that has available capacity. If a pool runs out of capacity before fulfilling your desired capacity, Spot Fleet will continue to fulfill your request by drawing from the next cheapest pool. To ensure that your desired capacity is met, you might receive Spot Instances from several pools.
  ///
  /// `diversified` \- Spot Fleet launches instances from all of the Spot Instance pools that you specify.
  ///
  /// `capacityOptimized` (recommended) - Spot Fleet launches instances from Spot Instance pools with optimal capacity for the number of instances that are launching. To give certain instance types a higher chance of launching first, use `capacityOptimizedPrioritized`. Set a priority for each instance type by using the `Priority` parameter for `LaunchTemplateOverrides`. You can assign the same priority to different `LaunchTemplateOverrides`. EC2 implements the priorities on a best-effort basis, but optimizes for capacity first. `capacityOptimizedPrioritized` is supported only if your Spot Fleet uses a launch template. Note that if the `OnDemandAllocationStrategy` is set to `prioritized`, the same priority is applied when fulfilling On-Demand capacity.
  ///
  /// Default: `lowestPrice`
  _i2.AllocationStrategy? get allocationStrategy;

  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. If you specify `lowestPrice`, Spot Fleet uses price to determine the order, launching the lowest price first. If you specify `prioritized`, Spot Fleet uses the priority that you assign to each Spot Fleet launch template override, launching the highest priority first. If you do not specify a value, Spot Fleet defaults to `lowestPrice`.
  _i3.OnDemandAllocationStrategy? get onDemandAllocationStrategy;

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  _i4.SpotMaintenanceStrategies? get spotMaintenanceStrategies;

  /// A unique, case-sensitive identifier that you provide to ensure the idempotency of your listings. This helps to avoid duplicate listings. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Indicates whether running Spot Instances should be terminated if you decrease the target capacity of the Spot Fleet request below the current size of the Spot Fleet.
  _i5.ExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The number of units fulfilled by this request compared to the set target capacity. You cannot set this value.
  double get fulfilledCapacity;

  /// The number of On-Demand units fulfilled by this request compared to the set target On-Demand capacity.
  double get onDemandFulfilledCapacity;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that grants the Spot Fleet the permission to request, launch, terminate, and tag instances on your behalf. For more information, see [Spot Fleet prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html#spot-fleet-prerequisites) in the _Amazon EC2 User Guide for Linux Instances_. Spot Fleet can terminate Spot Instances on your behalf when you cancel its Spot Fleet request using [CancelSpotFleetRequests](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CancelSpotFleetRequests) or when the Spot Fleet request expires, if you set `TerminateInstancesWithExpiration`.
  String get iamFleetRole;

  /// The launch specifications for the Spot Fleet request. If you specify `LaunchSpecifications`, you can't specify `LaunchTemplateConfigs`. If you include On-Demand capacity in your request, you must use `LaunchTemplateConfigs`.
  _i13.BuiltList<_i6.SpotFleetLaunchSpecification>? get launchSpecifications;

  /// The launch template and overrides. If you specify `LaunchTemplateConfigs`, you can't specify `LaunchSpecifications`. If you include On-Demand capacity in your request, you must use `LaunchTemplateConfigs`.
  _i13.BuiltList<_i7.LaunchTemplateConfig>? get launchTemplateConfigs;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The number of units to request for the Spot Fleet. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  int get targetCapacity;

  /// The number of On-Demand units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  int get onDemandTargetCapacity;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay. You can use the `onDemandMaxTotalPrice` parameter, the `spotMaxTotalPrice` parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, Spot Fleet will launch instances until it reaches the maximum amount you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  String? get onDemandMaxTotalPrice;

  /// The maximum amount per hour for Spot Instances that you're willing to pay. You can use the `spotdMaxTotalPrice` parameter, the `onDemandMaxTotalPrice` parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, Spot Fleet will launch instances until it reaches the maximum amount you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  String? get spotMaxTotalPrice;

  /// Indicates whether running Spot Instances are terminated when the Spot Fleet request expires.
  bool get terminateInstancesWithExpiration;

  /// The type of request. Indicates whether the Spot Fleet only requests the target capacity or also attempts to maintain it. When this value is `request`, the Spot Fleet only places the required requests. It does not attempt to replenish Spot Instances if capacity is diminished, nor does it submit requests in alternative Spot pools if capacity is not available. When this value is `maintain`, the Spot Fleet maintains the target capacity. The Spot Fleet places the required requests to meet capacity and automatically replenishes any interrupted instances. Default: `maintain`. `instant` is listed but is not used by Spot Fleet.
  _i8.FleetType? get type;

  /// The start date and time of the request, in UTC format (_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). By default, Amazon EC2 starts fulfilling the request immediately.
  DateTime? get validFrom;

  /// The end date and time of the request, in UTC format (_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). After the end date and time, no new Spot Instance requests are placed or able to fulfill the request. If no value is specified, the Spot Fleet request remains until you cancel it.
  DateTime? get validUntil;

  /// Indicates whether Spot Fleet should replace unhealthy instances.
  bool get replaceUnhealthyInstances;

  /// The behavior when a Spot Instance is interrupted. The default is `terminate`.
  _i9.InstanceInterruptionBehavior? get instanceInterruptionBehavior;

  /// One or more Classic Load Balancers and target groups to attach to the Spot Fleet request. Spot Fleet registers the running Spot Instances with the specified Classic Load Balancers and target groups.
  ///
  /// With Network Load Balancers, Spot Fleet cannot register instances that have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1.
  _i10.LoadBalancersConfig? get loadBalancersConfig;

  /// The number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot **AllocationStrategy** is set to `lowest-price`. Spot Fleet selects the cheapest Spot pools and evenly allocates your target Spot capacity across the number of Spot pools that you specify.
  ///
  /// Note that Spot Fleet attempts to draw Spot Instances from the number of pools that you specify on a best effort basis. If a pool runs out of Spot capacity before fulfilling your target capacity, Spot Fleet will continue to fulfill your request by drawing from the next cheapest pool. To ensure that your target capacity is met, you might receive Spot Instances from more than the number of pools that you specified. Similarly, if most of the pools have no Spot capacity, you might receive your full target capacity from fewer than the number of pools that you specified.
  int get instancePoolsToUseCount;

  /// Reserved.
  String? get context;

  /// The unit for the target capacity.
  ///
  /// Default: `units` (translates to number of instances)
  _i11.TargetCapacityUnitType? get targetCapacityUnitType;

  /// The key-value pair for tagging the Spot Fleet request on creation. The value for `ResourceType` must be `spot-fleet-request`, otherwise the Spot Fleet request fails. To tag instances at launch, specify the tags in the [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template) (valid only if you use `LaunchTemplateConfigs`) or in the `[SpotFleetTagSpecification](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetTagSpecification.html)` (valid only if you use `LaunchSpecifications`). For information about tagging after launch, see [Tagging Your Resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).
  _i13.BuiltList<_i12.TagSpecification>? get tagSpecifications;
  @override
  List<Object?> get props => [
        allocationStrategy,
        onDemandAllocationStrategy,
        spotMaintenanceStrategies,
        clientToken,
        excessCapacityTerminationPolicy,
        fulfilledCapacity,
        onDemandFulfilledCapacity,
        iamFleetRole,
        launchSpecifications,
        launchTemplateConfigs,
        spotPrice,
        targetCapacity,
        onDemandTargetCapacity,
        onDemandMaxTotalPrice,
        spotMaxTotalPrice,
        terminateInstancesWithExpiration,
        type,
        validFrom,
        validUntil,
        replaceUnhealthyInstances,
        instanceInterruptionBehavior,
        loadBalancersConfig,
        instancePoolsToUseCount,
        context,
        targetCapacityUnitType,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotFleetRequestConfigData');
    helper.add(
      'allocationStrategy',
      allocationStrategy,
    );
    helper.add(
      'onDemandAllocationStrategy',
      onDemandAllocationStrategy,
    );
    helper.add(
      'spotMaintenanceStrategies',
      spotMaintenanceStrategies,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'excessCapacityTerminationPolicy',
      excessCapacityTerminationPolicy,
    );
    helper.add(
      'fulfilledCapacity',
      fulfilledCapacity,
    );
    helper.add(
      'onDemandFulfilledCapacity',
      onDemandFulfilledCapacity,
    );
    helper.add(
      'iamFleetRole',
      iamFleetRole,
    );
    helper.add(
      'launchSpecifications',
      launchSpecifications,
    );
    helper.add(
      'launchTemplateConfigs',
      launchTemplateConfigs,
    );
    helper.add(
      'spotPrice',
      spotPrice,
    );
    helper.add(
      'targetCapacity',
      targetCapacity,
    );
    helper.add(
      'onDemandTargetCapacity',
      onDemandTargetCapacity,
    );
    helper.add(
      'onDemandMaxTotalPrice',
      onDemandMaxTotalPrice,
    );
    helper.add(
      'spotMaxTotalPrice',
      spotMaxTotalPrice,
    );
    helper.add(
      'terminateInstancesWithExpiration',
      terminateInstancesWithExpiration,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'validFrom',
      validFrom,
    );
    helper.add(
      'validUntil',
      validUntil,
    );
    helper.add(
      'replaceUnhealthyInstances',
      replaceUnhealthyInstances,
    );
    helper.add(
      'instanceInterruptionBehavior',
      instanceInterruptionBehavior,
    );
    helper.add(
      'loadBalancersConfig',
      loadBalancersConfig,
    );
    helper.add(
      'instancePoolsToUseCount',
      instancePoolsToUseCount,
    );
    helper.add(
      'context',
      context,
    );
    helper.add(
      'targetCapacityUnitType',
      targetCapacityUnitType,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class SpotFleetRequestConfigDataEc2QuerySerializer
    extends _i14.StructuredSmithySerializer<SpotFleetRequestConfigData> {
  const SpotFleetRequestConfigDataEc2QuerySerializer()
      : super('SpotFleetRequestConfigData');

  @override
  Iterable<Type> get types => const [
        SpotFleetRequestConfigData,
        _$SpotFleetRequestConfigData,
      ];
  @override
  Iterable<_i14.ShapeId> get supportedProtocols => const [
        _i14.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotFleetRequestConfigData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotFleetRequestConfigDataBuilder();
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
              specifiedType: const FullType(_i2.AllocationStrategy),
            ) as _i2.AllocationStrategy);
          }
          break;
        case 'onDemandAllocationStrategy':
          if (value != null) {
            result.onDemandAllocationStrategy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.OnDemandAllocationStrategy),
            ) as _i3.OnDemandAllocationStrategy);
          }
          break;
        case 'spotMaintenanceStrategies':
          if (value != null) {
            result.spotMaintenanceStrategies.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.SpotMaintenanceStrategies),
            ) as _i4.SpotMaintenanceStrategies));
          }
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'excessCapacityTerminationPolicy':
          if (value != null) {
            result.excessCapacityTerminationPolicy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.ExcessCapacityTerminationPolicy),
            ) as _i5.ExcessCapacityTerminationPolicy);
          }
          break;
        case 'fulfilledCapacity':
          result.fulfilledCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'onDemandFulfilledCapacity':
          result.onDemandFulfilledCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'iamFleetRole':
          result.iamFleetRole = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'launchSpecifications':
          if (value != null) {
            result.launchSpecifications
                .replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i6.SpotFleetLaunchSpecification)],
              ),
            ) as _i13.BuiltList<_i6.SpotFleetLaunchSpecification>));
          }
          break;
        case 'launchTemplateConfigs':
          if (value != null) {
            result.launchTemplateConfigs
                .replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i7.LaunchTemplateConfig)],
              ),
            ) as _i13.BuiltList<_i7.LaunchTemplateConfig>));
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
        case 'targetCapacity':
          result.targetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'onDemandTargetCapacity':
          result.onDemandTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'onDemandMaxTotalPrice':
          if (value != null) {
            result.onDemandMaxTotalPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'spotMaxTotalPrice':
          if (value != null) {
            result.spotMaxTotalPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'terminateInstancesWithExpiration':
          result.terminateInstancesWithExpiration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.FleetType),
            ) as _i8.FleetType);
          }
          break;
        case 'validFrom':
          if (value != null) {
            result.validFrom = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'validUntil':
          if (value != null) {
            result.validUntil = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'replaceUnhealthyInstances':
          result.replaceUnhealthyInstances = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'instanceInterruptionBehavior':
          if (value != null) {
            result.instanceInterruptionBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.InstanceInterruptionBehavior),
            ) as _i9.InstanceInterruptionBehavior);
          }
          break;
        case 'loadBalancersConfig':
          if (value != null) {
            result.loadBalancersConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.LoadBalancersConfig),
            ) as _i10.LoadBalancersConfig));
          }
          break;
        case 'instancePoolsToUseCount':
          result.instancePoolsToUseCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'context':
          if (value != null) {
            result.context = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'targetCapacityUnitType':
          if (value != null) {
            result.targetCapacityUnitType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i11.TargetCapacityUnitType),
            ) as _i11.TargetCapacityUnitType);
          }
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i12.TagSpecification)],
              ),
            ) as _i13.BuiltList<_i12.TagSpecification>));
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
    final payload = (object as SpotFleetRequestConfigData);
    final result = <Object?>[
      const _i14.XmlElementName(
        'SpotFleetRequestConfigDataResponse',
        _i14.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationStrategy != null) {
      result
        ..add(const _i14.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          payload.allocationStrategy!,
          specifiedType: const FullType.nullable(_i2.AllocationStrategy),
        ));
    }
    if (payload.onDemandAllocationStrategy != null) {
      result
        ..add(const _i14.XmlElementName('OnDemandAllocationStrategy'))
        ..add(serializers.serialize(
          payload.onDemandAllocationStrategy!,
          specifiedType:
              const FullType.nullable(_i3.OnDemandAllocationStrategy),
        ));
    }
    if (payload.spotMaintenanceStrategies != null) {
      result
        ..add(const _i14.XmlElementName('SpotMaintenanceStrategies'))
        ..add(serializers.serialize(
          payload.spotMaintenanceStrategies!,
          specifiedType: const FullType(_i4.SpotMaintenanceStrategies),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i14.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.excessCapacityTerminationPolicy != null) {
      result
        ..add(const _i14.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          payload.excessCapacityTerminationPolicy!,
          specifiedType:
              const FullType.nullable(_i5.ExcessCapacityTerminationPolicy),
        ));
    }
    result
      ..add(const _i14.XmlElementName('FulfilledCapacity'))
      ..add(serializers.serialize(
        payload.fulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i14.XmlElementName('OnDemandFulfilledCapacity'))
      ..add(serializers.serialize(
        payload.onDemandFulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i14.XmlElementName('IamFleetRole'))
      ..add(serializers.serialize(
        payload.iamFleetRole,
        specifiedType: const FullType(String),
      ));
    if (payload.launchSpecifications != null) {
      result
        ..add(const _i14.XmlElementName('LaunchSpecifications'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.launchSpecifications!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i6.SpotFleetLaunchSpecification)],
          ),
        ));
    }
    if (payload.launchTemplateConfigs != null) {
      result
        ..add(const _i14.XmlElementName('LaunchTemplateConfigs'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.launchTemplateConfigs!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i7.LaunchTemplateConfig)],
          ),
        ));
    }
    if (payload.spotPrice != null) {
      result
        ..add(const _i14.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          payload.spotPrice!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i14.XmlElementName('TargetCapacity'))
      ..add(serializers.serialize(
        payload.targetCapacity,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i14.XmlElementName('OnDemandTargetCapacity'))
      ..add(serializers.serialize(
        payload.onDemandTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (payload.onDemandMaxTotalPrice != null) {
      result
        ..add(const _i14.XmlElementName('OnDemandMaxTotalPrice'))
        ..add(serializers.serialize(
          payload.onDemandMaxTotalPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotMaxTotalPrice != null) {
      result
        ..add(const _i14.XmlElementName('SpotMaxTotalPrice'))
        ..add(serializers.serialize(
          payload.spotMaxTotalPrice!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i14.XmlElementName('TerminateInstancesWithExpiration'))
      ..add(serializers.serialize(
        payload.terminateInstancesWithExpiration,
        specifiedType: const FullType(bool),
      ));
    if (payload.type != null) {
      result
        ..add(const _i14.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i8.FleetType),
        ));
    }
    if (payload.validFrom != null) {
      result
        ..add(const _i14.XmlElementName('ValidFrom'))
        ..add(serializers.serialize(
          payload.validFrom!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.validUntil != null) {
      result
        ..add(const _i14.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          payload.validUntil!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i14.XmlElementName('ReplaceUnhealthyInstances'))
      ..add(serializers.serialize(
        payload.replaceUnhealthyInstances,
        specifiedType: const FullType(bool),
      ));
    if (payload.instanceInterruptionBehavior != null) {
      result
        ..add(const _i14.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          payload.instanceInterruptionBehavior!,
          specifiedType:
              const FullType.nullable(_i9.InstanceInterruptionBehavior),
        ));
    }
    if (payload.loadBalancersConfig != null) {
      result
        ..add(const _i14.XmlElementName('LoadBalancersConfig'))
        ..add(serializers.serialize(
          payload.loadBalancersConfig!,
          specifiedType: const FullType(_i10.LoadBalancersConfig),
        ));
    }
    result
      ..add(const _i14.XmlElementName('InstancePoolsToUseCount'))
      ..add(serializers.serialize(
        payload.instancePoolsToUseCount,
        specifiedType: const FullType(int),
      ));
    if (payload.context != null) {
      result
        ..add(const _i14.XmlElementName('Context'))
        ..add(serializers.serialize(
          payload.context!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.targetCapacityUnitType != null) {
      result
        ..add(const _i14.XmlElementName('TargetCapacityUnitType'))
        ..add(serializers.serialize(
          payload.targetCapacityUnitType!,
          specifiedType: const FullType.nullable(_i11.TargetCapacityUnitType),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i14.XmlElementName('TagSpecification'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i12.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
