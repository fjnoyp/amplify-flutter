// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i13;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleet_error.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fleets_instances.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_activity_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_excess_capacity_termination_policy.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_state_code.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_type.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_options.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_options.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification.dart'
    as _i6;

part 'fleet_data.g.dart';

/// Describes an EC2 Fleet.
abstract class FleetData
    with _i1.AWSEquatable<FleetData>
    implements Built<FleetData, FleetDataBuilder> {
  /// Describes an EC2 Fleet.
  factory FleetData({
    _i2.FleetActivityStatus? activityStatus,
    DateTime? createTime,
    String? fleetId,
    _i3.FleetStateCode? fleetState,
    String? clientToken,
    _i4.FleetExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    double? fulfilledCapacity,
    double? fulfilledOnDemandCapacity,
    List<_i5.FleetLaunchTemplateConfig>? launchTemplateConfigs,
    _i6.TargetCapacitySpecification? targetCapacitySpecification,
    bool? terminateInstancesWithExpiration,
    _i7.FleetType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    bool? replaceUnhealthyInstances,
    _i8.SpotOptions? spotOptions,
    _i9.OnDemandOptions? onDemandOptions,
    List<_i10.Tag>? tags,
    List<_i11.DescribeFleetError>? errors,
    List<_i12.DescribeFleetsInstances>? instances,
    String? context,
  }) {
    fulfilledCapacity ??= 0;
    fulfilledOnDemandCapacity ??= 0;
    terminateInstancesWithExpiration ??= false;
    replaceUnhealthyInstances ??= false;
    return _$FleetData._(
      activityStatus: activityStatus,
      createTime: createTime,
      fleetId: fleetId,
      fleetState: fleetState,
      clientToken: clientToken,
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      fulfilledCapacity: fulfilledCapacity,
      fulfilledOnDemandCapacity: fulfilledOnDemandCapacity,
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i13.BuiltList(launchTemplateConfigs),
      targetCapacitySpecification: targetCapacitySpecification,
      terminateInstancesWithExpiration: terminateInstancesWithExpiration,
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      replaceUnhealthyInstances: replaceUnhealthyInstances,
      spotOptions: spotOptions,
      onDemandOptions: onDemandOptions,
      tags: tags == null ? null : _i13.BuiltList(tags),
      errors: errors == null ? null : _i13.BuiltList(errors),
      instances: instances == null ? null : _i13.BuiltList(instances),
      context: context,
    );
  }

  /// Describes an EC2 Fleet.
  factory FleetData.build([void Function(FleetDataBuilder) updates]) =
      _$FleetData;

  const FleetData._();

  static const List<_i14.SmithySerializer> serializers = [
    FleetDataEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetDataBuilder b) {
    b.fulfilledCapacity = 0;
    b.fulfilledOnDemandCapacity = 0;
    b.terminateInstancesWithExpiration = false;
    b.replaceUnhealthyInstances = false;
  }

  /// The progress of the EC2 Fleet. If there is an error, the status is `error`. After all requests are placed, the status is `pending_fulfillment`. If the size of the EC2 Fleet is equal to or greater than its target capacity, the status is `fulfilled`. If the size of the EC2 Fleet is decreased, the status is `pending_termination` while instances are terminating.
  _i2.FleetActivityStatus? get activityStatus;

  /// The creation date and time of the EC2 Fleet.
  DateTime? get createTime;

  /// The ID of the EC2 Fleet.
  String? get fleetId;

  /// The state of the EC2 Fleet.
  _i3.FleetStateCode? get fleetState;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraints: Maximum 64 ASCII characters
  String? get clientToken;

  /// Indicates whether running instances should be terminated if the target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
  _i4.FleetExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The number of units fulfilled by this request compared to the set target capacity.
  double get fulfilledCapacity;

  /// The number of units fulfilled by this request compared to the set target On-Demand capacity.
  double get fulfilledOnDemandCapacity;

  /// The launch template and overrides.
  _i13.BuiltList<_i5.FleetLaunchTemplateConfig>? get launchTemplateConfigs;

  /// The number of units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  _i6.TargetCapacitySpecification? get targetCapacitySpecification;

  /// Indicates whether running instances should be terminated when the EC2 Fleet expires.
  bool get terminateInstancesWithExpiration;

  /// The type of request. Indicates whether the EC2 Fleet only `requests` the target capacity, or also attempts to `maintain` it. If you request a certain target capacity, EC2 Fleet only places the required requests; it does not attempt to replenish instances if capacity is diminished, and it does not submit requests in alternative capacity pools if capacity is unavailable. To maintain a certain target capacity, EC2 Fleet places the required requests to meet this target capacity. It also automatically replenishes any interrupted Spot Instances. Default: `maintain`.
  _i7.FleetType? get type;

  /// The start date and time of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). The default is to start fulfilling the request immediately.
  DateTime? get validFrom;

  /// The end date and time of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). At this point, no new instance requests are placed or able to fulfill the request. The default end date is 7 days from the current date.
  DateTime? get validUntil;

  /// Indicates whether EC2 Fleet should replace unhealthy Spot Instances. Supported only for fleets of type `maintain`. For more information, see [EC2 Fleet health checks](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks) in the _Amazon EC2 User Guide_.
  bool get replaceUnhealthyInstances;

  /// The configuration of Spot Instances in an EC2 Fleet.
  _i8.SpotOptions? get spotOptions;

  /// The allocation strategy of On-Demand Instances in an EC2 Fleet.
  _i9.OnDemandOptions? get onDemandOptions;

  /// The tags for an EC2 Fleet resource.
  _i13.BuiltList<_i10.Tag>? get tags;

  /// Information about the instances that could not be launched by the fleet. Valid only when **Type** is set to `instant`.
  _i13.BuiltList<_i11.DescribeFleetError>? get errors;

  /// Information about the instances that were launched by the fleet. Valid only when **Type** is set to `instant`.
  _i13.BuiltList<_i12.DescribeFleetsInstances>? get instances;

  /// Reserved.
  String? get context;
  @override
  List<Object?> get props => [
        activityStatus,
        createTime,
        fleetId,
        fleetState,
        clientToken,
        excessCapacityTerminationPolicy,
        fulfilledCapacity,
        fulfilledOnDemandCapacity,
        launchTemplateConfigs,
        targetCapacitySpecification,
        terminateInstancesWithExpiration,
        type,
        validFrom,
        validUntil,
        replaceUnhealthyInstances,
        spotOptions,
        onDemandOptions,
        tags,
        errors,
        instances,
        context,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FleetData');
    helper.add(
      'activityStatus',
      activityStatus,
    );
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'fleetId',
      fleetId,
    );
    helper.add(
      'fleetState',
      fleetState,
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
      'fulfilledOnDemandCapacity',
      fulfilledOnDemandCapacity,
    );
    helper.add(
      'launchTemplateConfigs',
      launchTemplateConfigs,
    );
    helper.add(
      'targetCapacitySpecification',
      targetCapacitySpecification,
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
      'spotOptions',
      spotOptions,
    );
    helper.add(
      'onDemandOptions',
      onDemandOptions,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'errors',
      errors,
    );
    helper.add(
      'instances',
      instances,
    );
    helper.add(
      'context',
      context,
    );
    return helper.toString();
  }
}

class FleetDataEc2QuerySerializer
    extends _i14.StructuredSmithySerializer<FleetData> {
  const FleetDataEc2QuerySerializer() : super('FleetData');

  @override
  Iterable<Type> get types => const [
        FleetData,
        _$FleetData,
      ];
  @override
  Iterable<_i14.ShapeId> get supportedProtocols => const [
        _i14.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'activityStatus':
          if (value != null) {
            result.activityStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FleetActivityStatus),
            ) as _i2.FleetActivityStatus);
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
        case 'fleetId':
          if (value != null) {
            result.fleetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'fleetState':
          if (value != null) {
            result.fleetState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FleetStateCode),
            ) as _i3.FleetStateCode);
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
                  const FullType(_i4.FleetExcessCapacityTerminationPolicy),
            ) as _i4.FleetExcessCapacityTerminationPolicy);
          }
          break;
        case 'fulfilledCapacity':
          result.fulfilledCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'fulfilledOnDemandCapacity':
          result.fulfilledOnDemandCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
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
                [FullType(_i5.FleetLaunchTemplateConfig)],
              ),
            ) as _i13.BuiltList<_i5.FleetLaunchTemplateConfig>));
          }
          break;
        case 'targetCapacitySpecification':
          if (value != null) {
            result.targetCapacitySpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.TargetCapacitySpecification),
            ) as _i6.TargetCapacitySpecification));
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
              specifiedType: const FullType(_i7.FleetType),
            ) as _i7.FleetType);
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
        case 'spotOptions':
          if (value != null) {
            result.spotOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.SpotOptions),
            ) as _i8.SpotOptions));
          }
          break;
        case 'onDemandOptions':
          if (value != null) {
            result.onDemandOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.OnDemandOptions),
            ) as _i9.OnDemandOptions));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i10.Tag)],
              ),
            ) as _i13.BuiltList<_i10.Tag>));
          }
          break;
        case 'errorSet':
          if (value != null) {
            result.errors.replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i11.DescribeFleetError)],
              ),
            ) as _i13.BuiltList<_i11.DescribeFleetError>));
          }
          break;
        case 'fleetInstanceSet':
          if (value != null) {
            result.instances.replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i12.DescribeFleetsInstances)],
              ),
            ) as _i13.BuiltList<_i12.DescribeFleetsInstances>));
          }
          break;
        case 'context':
          if (value != null) {
            result.context = (serializers.deserialize(
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
    final payload = (object as FleetData);
    final result = <Object?>[
      const _i14.XmlElementName(
        'FleetDataResponse',
        _i14.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.activityStatus != null) {
      result
        ..add(const _i14.XmlElementName('ActivityStatus'))
        ..add(serializers.serialize(
          payload.activityStatus!,
          specifiedType: const FullType.nullable(_i2.FleetActivityStatus),
        ));
    }
    if (payload.createTime != null) {
      result
        ..add(const _i14.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.fleetId != null) {
      result
        ..add(const _i14.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          payload.fleetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fleetState != null) {
      result
        ..add(const _i14.XmlElementName('FleetState'))
        ..add(serializers.serialize(
          payload.fleetState!,
          specifiedType: const FullType.nullable(_i3.FleetStateCode),
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
              const FullType.nullable(_i4.FleetExcessCapacityTerminationPolicy),
        ));
    }
    result
      ..add(const _i14.XmlElementName('FulfilledCapacity'))
      ..add(serializers.serialize(
        payload.fulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i14.XmlElementName('FulfilledOnDemandCapacity'))
      ..add(serializers.serialize(
        payload.fulfilledOnDemandCapacity,
        specifiedType: const FullType(double),
      ));
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
            [FullType(_i5.FleetLaunchTemplateConfig)],
          ),
        ));
    }
    if (payload.targetCapacitySpecification != null) {
      result
        ..add(const _i14.XmlElementName('TargetCapacitySpecification'))
        ..add(serializers.serialize(
          payload.targetCapacitySpecification!,
          specifiedType: const FullType(_i6.TargetCapacitySpecification),
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
          specifiedType: const FullType.nullable(_i7.FleetType),
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
    if (payload.spotOptions != null) {
      result
        ..add(const _i14.XmlElementName('SpotOptions'))
        ..add(serializers.serialize(
          payload.spotOptions!,
          specifiedType: const FullType(_i8.SpotOptions),
        ));
    }
    if (payload.onDemandOptions != null) {
      result
        ..add(const _i14.XmlElementName('OnDemandOptions'))
        ..add(serializers.serialize(
          payload.onDemandOptions!,
          specifiedType: const FullType(_i9.OnDemandOptions),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i14.XmlElementName('TagSet'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i10.Tag)],
          ),
        ));
    }
    if (payload.errors != null) {
      result
        ..add(const _i14.XmlElementName('ErrorSet'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.errors!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i11.DescribeFleetError)],
          ),
        ));
    }
    if (payload.instances != null) {
      result
        ..add(const _i14.XmlElementName('FleetInstanceSet'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instances!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i12.DescribeFleetsInstances)],
          ),
        ));
    }
    if (payload.context != null) {
      result
        ..add(const _i14.XmlElementName('Context'))
        ..add(serializers.serialize(
          payload.context!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
