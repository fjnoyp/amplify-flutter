// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_maintenance_strategies; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_capacity_rebalance.dart'
    as _i2;

part 'spot_maintenance_strategies.g.dart';

/// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
abstract class SpotMaintenanceStrategies
    with _i1.AWSEquatable<SpotMaintenanceStrategies>
    implements
        Built<SpotMaintenanceStrategies, SpotMaintenanceStrategiesBuilder> {
  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory SpotMaintenanceStrategies(
      {_i2.SpotCapacityRebalance? capacityRebalance}) {
    return _$SpotMaintenanceStrategies._(capacityRebalance: capacityRebalance);
  }

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  factory SpotMaintenanceStrategies.build(
          [void Function(SpotMaintenanceStrategiesBuilder) updates]) =
      _$SpotMaintenanceStrategies;

  const SpotMaintenanceStrategies._();

  static const List<_i3.SmithySerializer> serializers = [
    SpotMaintenanceStrategiesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotMaintenanceStrategiesBuilder b) {}

  /// The Spot Instance replacement strategy to use when Amazon EC2 emits a signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide for Linux Instances_.
  _i2.SpotCapacityRebalance? get capacityRebalance;
  @override
  List<Object?> get props => [capacityRebalance];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotMaintenanceStrategies');
    helper.add(
      'capacityRebalance',
      capacityRebalance,
    );
    return helper.toString();
  }
}

class SpotMaintenanceStrategiesEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SpotMaintenanceStrategies> {
  const SpotMaintenanceStrategiesEc2QuerySerializer()
      : super('SpotMaintenanceStrategies');

  @override
  Iterable<Type> get types => const [
        SpotMaintenanceStrategies,
        _$SpotMaintenanceStrategies,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotMaintenanceStrategies deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotMaintenanceStrategiesBuilder();
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
              specifiedType: const FullType(_i2.SpotCapacityRebalance),
            ) as _i2.SpotCapacityRebalance));
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
    final payload = (object as SpotMaintenanceStrategies);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SpotMaintenanceStrategiesResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityRebalance != null) {
      result
        ..add(const _i3.XmlElementName('CapacityRebalance'))
        ..add(serializers.serialize(
          payload.capacityRebalance!,
          specifiedType: const FullType(_i2.SpotCapacityRebalance),
        ));
    }
    return result;
  }
}
