// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_excess_capacity_termination_policy.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config_request.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_type.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_options_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_options_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification_request.dart'
    as _i7;

part 'create_fleet_request.g.dart';

abstract class CreateFleetRequest
    with _i1.HttpInput<CreateFleetRequest>, _i2.AWSEquatable<CreateFleetRequest>
    implements Built<CreateFleetRequest, CreateFleetRequestBuilder> {
  factory CreateFleetRequest({
    bool? dryRun,
    String? clientToken,
    _i3.SpotOptionsRequest? spotOptions,
    _i4.OnDemandOptionsRequest? onDemandOptions,
    _i5.FleetExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    required List<_i6.FleetLaunchTemplateConfigRequest> launchTemplateConfigs,
    required _i7.TargetCapacitySpecificationRequest targetCapacitySpecification,
    bool? terminateInstancesWithExpiration,
    _i8.FleetType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    bool? replaceUnhealthyInstances,
    List<_i9.TagSpecification>? tagSpecifications,
    String? context,
  }) {
    dryRun ??= false;
    terminateInstancesWithExpiration ??= false;
    replaceUnhealthyInstances ??= false;
    return _$CreateFleetRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      spotOptions: spotOptions,
      onDemandOptions: onDemandOptions,
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      launchTemplateConfigs: _i10.BuiltList(launchTemplateConfigs),
      targetCapacitySpecification: targetCapacitySpecification,
      terminateInstancesWithExpiration: terminateInstancesWithExpiration,
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      replaceUnhealthyInstances: replaceUnhealthyInstances,
      tagSpecifications:
          tagSpecifications == null ? null : _i10.BuiltList(tagSpecifications),
      context: context,
    );
  }

  factory CreateFleetRequest.build(
          [void Function(CreateFleetRequestBuilder) updates]) =
      _$CreateFleetRequest;

  const CreateFleetRequest._();

  factory CreateFleetRequest.fromRequest(
    CreateFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateFleetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFleetRequestBuilder b) {
    b.dryRun = false;
    b.terminateInstancesWithExpiration = false;
    b.replaceUnhealthyInstances = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Describes the configuration of Spot Instances in an EC2 Fleet.
  _i3.SpotOptionsRequest? get spotOptions;

  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  _i4.OnDemandOptionsRequest? get onDemandOptions;

  /// Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
  _i5.FleetExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The configuration for the EC2 Fleet.
  _i10.BuiltList<_i6.FleetLaunchTemplateConfigRequest>
      get launchTemplateConfigs;

  /// The number of units to request.
  _i7.TargetCapacitySpecificationRequest get targetCapacitySpecification;

  /// Indicates whether running instances should be terminated when the EC2 Fleet expires.
  bool get terminateInstancesWithExpiration;

  /// The fleet type. The default value is `maintain`.
  ///
  /// *   `maintain` \- The EC2 Fleet places an asynchronous request for your desired capacity, and continues to maintain your desired Spot capacity by replenishing interrupted Spot Instances.
  ///
  /// *   `request` \- The EC2 Fleet places an asynchronous one-time request for your desired capacity, but does submit Spot requests in alternative capacity pools if Spot capacity is unavailable, and does not maintain Spot capacity if Spot Instances are interrupted.
  ///
  /// *   `instant` \- The EC2 Fleet places a synchronous one-time request for your desired capacity, and returns errors for any instances that could not be launched.
  ///
  ///
  /// For more information, see [EC2 Fleet request types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-request-type.html) in the _Amazon EC2 User Guide_.
  _i8.FleetType? get type;

  /// The start date and time of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). The default is to start fulfilling the request immediately.
  DateTime? get validFrom;

  /// The end date and time of the request, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. If no value is specified, the request remains until you cancel it.
  DateTime? get validUntil;

  /// Indicates whether EC2 Fleet should replace unhealthy Spot Instances. Supported only for fleets of type `maintain`. For more information, see [EC2 Fleet health checks](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks) in the _Amazon EC2 User Guide_.
  bool get replaceUnhealthyInstances;

  /// The key-value pair for tagging the EC2 Fleet request on creation. For more information, see [Tagging your resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).
  ///
  /// If the fleet type is `instant`, specify a resource type of `fleet` to tag the fleet or `instance` to tag the instances at launch.
  ///
  /// If the fleet type is `maintain` or `request`, specify a resource type of `fleet` to tag the fleet. You cannot specify a resource type of `instance`. To tag instances at launch, specify the tags in a [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template).
  _i10.BuiltList<_i9.TagSpecification>? get tagSpecifications;

  /// Reserved.
  String? get context;
  @override
  CreateFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        spotOptions,
        onDemandOptions,
        excessCapacityTerminationPolicy,
        launchTemplateConfigs,
        targetCapacitySpecification,
        terminateInstancesWithExpiration,
        type,
        validFrom,
        validUntil,
        replaceUnhealthyInstances,
        tagSpecifications,
        context,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFleetRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
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
      'excessCapacityTerminationPolicy',
      excessCapacityTerminationPolicy,
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
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'context',
      context,
    );
    return helper.toString();
  }
}

class CreateFleetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateFleetRequest> {
  const CreateFleetRequestEc2QuerySerializer() : super('CreateFleetRequest');

  @override
  Iterable<Type> get types => const [
        CreateFleetRequest,
        _$CreateFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFleetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SpotOptions':
          if (value != null) {
            result.spotOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SpotOptionsRequest),
            ) as _i3.SpotOptionsRequest));
          }
          break;
        case 'OnDemandOptions':
          if (value != null) {
            result.onDemandOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.OnDemandOptionsRequest),
            ) as _i4.OnDemandOptionsRequest));
          }
          break;
        case 'ExcessCapacityTerminationPolicy':
          if (value != null) {
            result.excessCapacityTerminationPolicy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.FleetExcessCapacityTerminationPolicy),
            ) as _i5.FleetExcessCapacityTerminationPolicy);
          }
          break;
        case 'LaunchTemplateConfigs':
          result.launchTemplateConfigs
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i6.FleetLaunchTemplateConfigRequest)],
            ),
          ) as _i10.BuiltList<_i6.FleetLaunchTemplateConfigRequest>));
          break;
        case 'TargetCapacitySpecification':
          result.targetCapacitySpecification.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i7.TargetCapacitySpecificationRequest),
          ) as _i7.TargetCapacitySpecificationRequest));
          break;
        case 'TerminateInstancesWithExpiration':
          result.terminateInstancesWithExpiration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.FleetType),
            ) as _i8.FleetType);
          }
          break;
        case 'ValidFrom':
          if (value != null) {
            result.validFrom = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ValidUntil':
          if (value != null) {
            result.validUntil = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'ReplaceUnhealthyInstances':
          result.replaceUnhealthyInstances = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i9.TagSpecification)],
              ),
            ) as _i10.BuiltList<_i9.TagSpecification>));
          }
          break;
        case 'Context':
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
    final payload = (object as CreateFleetRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateFleetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotOptions != null) {
      result
        ..add(const _i1.XmlElementName('SpotOptions'))
        ..add(serializers.serialize(
          payload.spotOptions!,
          specifiedType: const FullType(_i3.SpotOptionsRequest),
        ));
    }
    if (payload.onDemandOptions != null) {
      result
        ..add(const _i1.XmlElementName('OnDemandOptions'))
        ..add(serializers.serialize(
          payload.onDemandOptions!,
          specifiedType: const FullType(_i4.OnDemandOptionsRequest),
        ));
    }
    if (payload.excessCapacityTerminationPolicy != null) {
      result
        ..add(const _i1.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          payload.excessCapacityTerminationPolicy!,
          specifiedType:
              const FullType.nullable(_i5.FleetExcessCapacityTerminationPolicy),
        ));
    }
    result
      ..add(const _i1.XmlElementName('LaunchTemplateConfigs'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.launchTemplateConfigs,
        specifiedType: const FullType.nullable(
          _i10.BuiltList,
          [FullType(_i6.FleetLaunchTemplateConfigRequest)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('TargetCapacitySpecification'))
      ..add(serializers.serialize(
        payload.targetCapacitySpecification,
        specifiedType: const FullType(_i7.TargetCapacitySpecificationRequest),
      ));
    result
      ..add(const _i1.XmlElementName('TerminateInstancesWithExpiration'))
      ..add(serializers.serialize(
        payload.terminateInstancesWithExpiration,
        specifiedType: const FullType(bool),
      ));
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i8.FleetType),
        ));
    }
    if (payload.validFrom != null) {
      result
        ..add(const _i1.XmlElementName('ValidFrom'))
        ..add(serializers.serialize(
          payload.validFrom!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.validUntil != null) {
      result
        ..add(const _i1.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          payload.validUntil!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i1.XmlElementName('ReplaceUnhealthyInstances'))
      ..add(serializers.serialize(
        payload.replaceUnhealthyInstances,
        specifiedType: const FullType(bool),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i9.TagSpecification)],
          ),
        ));
    }
    if (payload.context != null) {
      result
        ..add(const _i1.XmlElementName('Context'))
        ..add(serializers.serialize(
          payload.context!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
