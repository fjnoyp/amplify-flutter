// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_spot_maintenance_strategies_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance_request.dart'
    as _i2;

part 'fleet_spot_maintenance_strategies_request.g.dart';

/// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
abstract class FleetSpotMaintenanceStrategiesRequest
    with
        _i1.AWSEquatable<FleetSpotMaintenanceStrategiesRequest>
    implements
        Built<FleetSpotMaintenanceStrategiesRequest,
            FleetSpotMaintenanceStrategiesRequestBuilder> {
  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategiesRequest(
      {_i2.FleetSpotCapacityRebalanceRequest? capacityRebalance}) {
    return _$FleetSpotMaintenanceStrategiesRequest._(
        capacityRebalance: capacityRebalance);
  }

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategiesRequest.build(
      [void Function(FleetSpotMaintenanceStrategiesRequestBuilder)
          updates]) = _$FleetSpotMaintenanceStrategiesRequest;

  const FleetSpotMaintenanceStrategiesRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    FleetSpotMaintenanceStrategiesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetSpotMaintenanceStrategiesRequestBuilder b) {}

  /// The strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted.
  _i2.FleetSpotCapacityRebalanceRequest? get capacityRebalance;
  @override
  List<Object?> get props => [capacityRebalance];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetSpotMaintenanceStrategiesRequest');
    helper.add(
      'capacityRebalance',
      capacityRebalance,
    );
    return helper.toString();
  }
}

class FleetSpotMaintenanceStrategiesRequestEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<FleetSpotMaintenanceStrategiesRequest> {
  const FleetSpotMaintenanceStrategiesRequestEc2QuerySerializer()
      : super('FleetSpotMaintenanceStrategiesRequest');

  @override
  Iterable<Type> get types => const [
        FleetSpotMaintenanceStrategiesRequest,
        _$FleetSpotMaintenanceStrategiesRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetSpotMaintenanceStrategiesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetSpotMaintenanceStrategiesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CapacityRebalance':
          if (value != null) {
            result.capacityRebalance.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.FleetSpotCapacityRebalanceRequest),
            ) as _i2.FleetSpotCapacityRebalanceRequest));
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
    final payload = (object as FleetSpotMaintenanceStrategiesRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'FleetSpotMaintenanceStrategiesRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityRebalance != null) {
      result
        ..add(const _i3.XmlElementName('CapacityRebalance'))
        ..add(serializers.serialize(
          payload.capacityRebalance!,
          specifiedType: const FullType(_i2.FleetSpotCapacityRebalanceRequest),
        ));
    }
    return result;
  }
}
