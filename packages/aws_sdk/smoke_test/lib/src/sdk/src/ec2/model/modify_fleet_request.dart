// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_excess_capacity_termination_policy.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_config_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_specification_request.dart'
    as _i5;

part 'modify_fleet_request.g.dart';

abstract class ModifyFleetRequest
    with _i1.HttpInput<ModifyFleetRequest>, _i2.AWSEquatable<ModifyFleetRequest>
    implements Built<ModifyFleetRequest, ModifyFleetRequestBuilder> {
  factory ModifyFleetRequest({
    bool? dryRun,
    _i3.FleetExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    List<_i4.FleetLaunchTemplateConfigRequest>? launchTemplateConfigs,
    required String fleetId,
    _i5.TargetCapacitySpecificationRequest? targetCapacitySpecification,
    String? context,
  }) {
    dryRun ??= false;
    return _$ModifyFleetRequest._(
      dryRun: dryRun,
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i6.BuiltList(launchTemplateConfigs),
      fleetId: fleetId,
      targetCapacitySpecification: targetCapacitySpecification,
      context: context,
    );
  }

  factory ModifyFleetRequest.build(
          [void Function(ModifyFleetRequestBuilder) updates]) =
      _$ModifyFleetRequest;

  const ModifyFleetRequest._();

  factory ModifyFleetRequest.fromRequest(
    ModifyFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyFleetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyFleetRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
  _i3.FleetExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The launch template and overrides.
  _i6.BuiltList<_i4.FleetLaunchTemplateConfigRequest>?
      get launchTemplateConfigs;

  /// The ID of the EC2 Fleet.
  String get fleetId;

  /// The size of the EC2 Fleet.
  _i5.TargetCapacitySpecificationRequest? get targetCapacitySpecification;

  /// Reserved.
  String? get context;
  @override
  ModifyFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        excessCapacityTerminationPolicy,
        launchTemplateConfigs,
        fleetId,
        targetCapacitySpecification,
        context,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyFleetRequest');
    helper.add(
      'dryRun',
      dryRun,
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
      'fleetId',
      fleetId,
    );
    helper.add(
      'targetCapacitySpecification',
      targetCapacitySpecification,
    );
    helper.add(
      'context',
      context,
    );
    return helper.toString();
  }
}

class ModifyFleetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyFleetRequest> {
  const ModifyFleetRequestEc2QuerySerializer() : super('ModifyFleetRequest');

  @override
  Iterable<Type> get types => const [
        ModifyFleetRequest,
        _$ModifyFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyFleetRequestBuilder();
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
        case 'ExcessCapacityTerminationPolicy':
          if (value != null) {
            result.excessCapacityTerminationPolicy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.FleetExcessCapacityTerminationPolicy),
            ) as _i3.FleetExcessCapacityTerminationPolicy);
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
                _i6.BuiltList,
                [FullType(_i4.FleetLaunchTemplateConfigRequest)],
              ),
            ) as _i6.BuiltList<_i4.FleetLaunchTemplateConfigRequest>));
          }
          break;
        case 'FleetId':
          result.fleetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TargetCapacitySpecification':
          if (value != null) {
            result.targetCapacitySpecification.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.TargetCapacitySpecificationRequest),
            ) as _i5.TargetCapacitySpecificationRequest));
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
    final payload = (object as ModifyFleetRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyFleetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.excessCapacityTerminationPolicy != null) {
      result
        ..add(const _i1.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          payload.excessCapacityTerminationPolicy!,
          specifiedType:
              const FullType.nullable(_i3.FleetExcessCapacityTerminationPolicy),
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
            _i6.BuiltList,
            [FullType(_i4.FleetLaunchTemplateConfigRequest)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('FleetId'))
      ..add(serializers.serialize(
        payload.fleetId,
        specifiedType: const FullType(String),
      ));
    if (payload.targetCapacitySpecification != null) {
      result
        ..add(const _i1.XmlElementName('TargetCapacitySpecification'))
        ..add(serializers.serialize(
          payload.targetCapacitySpecification!,
          specifiedType: const FullType(_i5.TargetCapacitySpecificationRequest),
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
