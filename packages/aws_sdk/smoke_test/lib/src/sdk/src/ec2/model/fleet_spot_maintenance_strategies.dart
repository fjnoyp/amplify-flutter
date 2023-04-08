// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_spot_maintenance_strategies; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_capacity_rebalance.dart'
    as _i2;

part 'fleet_spot_maintenance_strategies.g.dart';

/// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
abstract class FleetSpotMaintenanceStrategies
    with
        _i1.AWSEquatable<FleetSpotMaintenanceStrategies>
    implements
        Built<FleetSpotMaintenanceStrategies,
            FleetSpotMaintenanceStrategiesBuilder> {
  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategies(
      {_i2.FleetSpotCapacityRebalance? capacityRebalance}) {
    return _$FleetSpotMaintenanceStrategies._(
        capacityRebalance: capacityRebalance);
  }

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory FleetSpotMaintenanceStrategies.build(
          [void Function(FleetSpotMaintenanceStrategiesBuilder) updates]) =
      _$FleetSpotMaintenanceStrategies;

  const FleetSpotMaintenanceStrategies._();

  static const List<_i3.SmithySerializer> serializers = [
    FleetSpotMaintenanceStrategiesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetSpotMaintenanceStrategiesBuilder b) {}

  /// The strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted.
  _i2.FleetSpotCapacityRebalance? get capacityRebalance;
  @override
  List<Object?> get props => [capacityRebalance];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetSpotMaintenanceStrategies');
    helper.add(
      'capacityRebalance',
      capacityRebalance,
    );
    return helper.toString();
  }
}

class FleetSpotMaintenanceStrategiesEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FleetSpotMaintenanceStrategies> {
  const FleetSpotMaintenanceStrategiesEc2QuerySerializer()
      : super('FleetSpotMaintenanceStrategies');

  @override
  Iterable<Type> get types => const [
        FleetSpotMaintenanceStrategies,
        _$FleetSpotMaintenanceStrategies,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetSpotMaintenanceStrategies deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetSpotMaintenanceStrategiesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'capacityRebalance':
          if (value != null) {
            result.capacityRebalance.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FleetSpotCapacityRebalance),
            ) as _i2.FleetSpotCapacityRebalance));
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
    final payload = (object as FleetSpotMaintenanceStrategies);
    final result = <Object?>[
      const _i3.XmlElementName(
        'FleetSpotMaintenanceStrategiesResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityRebalance != null) {
      result
        ..add(const _i3.XmlElementName('CapacityRebalance'))
        ..add(serializers.serialize(
          payload.capacityRebalance!,
          specifiedType: const FullType(_i2.FleetSpotCapacityRebalance),
        ));
    }
    return result;
  }
}
