// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_spot_fleet_request_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/excess_capacity_termination_policy.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_config.dart'
    as _i4;

part 'modify_spot_fleet_request_request.g.dart';

/// Contains the parameters for ModifySpotFleetRequest.
abstract class ModifySpotFleetRequestRequest
    with
        _i1.HttpInput<ModifySpotFleetRequestRequest>,
        _i2.AWSEquatable<ModifySpotFleetRequestRequest>
    implements
        Built<ModifySpotFleetRequestRequest,
            ModifySpotFleetRequestRequestBuilder> {
  /// Contains the parameters for ModifySpotFleetRequest.
  factory ModifySpotFleetRequestRequest({
    _i3.ExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    List<_i4.LaunchTemplateConfig>? launchTemplateConfigs,
    required String spotFleetRequestId,
    int? targetCapacity,
    int? onDemandTargetCapacity,
    String? context,
  }) {
    targetCapacity ??= 0;
    onDemandTargetCapacity ??= 0;
    return _$ModifySpotFleetRequestRequest._(
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i5.BuiltList(launchTemplateConfigs),
      spotFleetRequestId: spotFleetRequestId,
      targetCapacity: targetCapacity,
      onDemandTargetCapacity: onDemandTargetCapacity,
      context: context,
    );
  }

  /// Contains the parameters for ModifySpotFleetRequest.
  factory ModifySpotFleetRequestRequest.build(
          [void Function(ModifySpotFleetRequestRequestBuilder) updates]) =
      _$ModifySpotFleetRequestRequest;

  const ModifySpotFleetRequestRequest._();

  factory ModifySpotFleetRequestRequest.fromRequest(
    ModifySpotFleetRequestRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifySpotFleetRequestRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySpotFleetRequestRequestBuilder b) {
    b.targetCapacity = 0;
    b.onDemandTargetCapacity = 0;
  }

  /// Indicates whether running Spot Instances should be terminated if the target capacity of the Spot Fleet request is decreased below the current size of the Spot Fleet.
  _i3.ExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The launch template and overrides. You can only use this parameter if you specified a launch template (`LaunchTemplateConfigs`) in your Spot Fleet request. If you specified `LaunchSpecifications` in your Spot Fleet request, then omit this parameter.
  _i5.BuiltList<_i4.LaunchTemplateConfig>? get launchTemplateConfigs;

  /// The ID of the Spot Fleet request.
  String get spotFleetRequestId;

  /// The size of the fleet.
  int get targetCapacity;

  /// The number of On-Demand Instances in the fleet.
  int get onDemandTargetCapacity;

  /// Reserved.
  String? get context;
  @override
  ModifySpotFleetRequestRequest getPayload() => this;
  @override
  List<Object?> get props => [
        excessCapacityTerminationPolicy,
        launchTemplateConfigs,
        spotFleetRequestId,
        targetCapacity,
        onDemandTargetCapacity,
        context,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySpotFleetRequestRequest');
    helper.add(
      'excessCapacityTerminationPolicy',
      excessCapacityTerminationPolicy,
    );
    helper.add(
      'launchTemplateConfigs',
      launchTemplateConfigs,
    );
    helper.add(
      'spotFleetRequestId',
      spotFleetRequestId,
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
      'context',
      context,
    );
    return helper.toString();
  }
}

class ModifySpotFleetRequestRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifySpotFleetRequestRequest> {
  const ModifySpotFleetRequestRequestEc2QuerySerializer()
      : super('ModifySpotFleetRequestRequest');

  @override
  Iterable<Type> get types => const [
        ModifySpotFleetRequestRequest,
        _$ModifySpotFleetRequestRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySpotFleetRequestRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySpotFleetRequestRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'excessCapacityTerminationPolicy':
          if (value != null) {
            result.excessCapacityTerminationPolicy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.ExcessCapacityTerminationPolicy),
            ) as _i3.ExcessCapacityTerminationPolicy);
          }
          break;
        case 'LaunchTemplateConfig':
          if (value != null) {
            result.launchTemplateConfigs
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.LaunchTemplateConfig)],
              ),
            ) as _i5.BuiltList<_i4.LaunchTemplateConfig>));
          }
          break;
        case 'spotFleetRequestId':
          result.spotFleetRequestId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'targetCapacity':
          result.targetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'OnDemandTargetCapacity':
          result.onDemandTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as ModifySpotFleetRequestRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifySpotFleetRequestRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.excessCapacityTerminationPolicy != null) {
      result
        ..add(const _i1.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          payload.excessCapacityTerminationPolicy!,
          specifiedType:
              const FullType.nullable(_i3.ExcessCapacityTerminationPolicy),
        ));
    }
    if (payload.launchTemplateConfigs != null) {
      result
        ..add(const _i1.XmlElementName('LaunchTemplateConfig'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.launchTemplateConfigs!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.LaunchTemplateConfig)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SpotFleetRequestId'))
      ..add(serializers.serialize(
        payload.spotFleetRequestId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('TargetCapacity'))
      ..add(serializers.serialize(
        payload.targetCapacity,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('OnDemandTargetCapacity'))
      ..add(serializers.serialize(
        payload.onDemandTargetCapacity,
        specifiedType: const FullType(int),
      ));
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
