// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_spot_capacity_rebalance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_replacement_strategy.dart'
    as _i2;

part 'fleet_spot_capacity_rebalance_request.g.dart';

/// The Spot Instance replacement strategy to use when Amazon EC2 emits a rebalance notification signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide_.
abstract class FleetSpotCapacityRebalanceRequest
    with
        _i1.AWSEquatable<FleetSpotCapacityRebalanceRequest>
    implements
        Built<FleetSpotCapacityRebalanceRequest,
            FleetSpotCapacityRebalanceRequestBuilder> {
  /// The Spot Instance replacement strategy to use when Amazon EC2 emits a rebalance notification signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide_.
  factory FleetSpotCapacityRebalanceRequest({
    _i2.FleetReplacementStrategy? replacementStrategy,
    int? terminationDelay,
  }) {
    terminationDelay ??= 0;
    return _$FleetSpotCapacityRebalanceRequest._(
      replacementStrategy: replacementStrategy,
      terminationDelay: terminationDelay,
    );
  }

  /// The Spot Instance replacement strategy to use when Amazon EC2 emits a rebalance notification signal that your Spot Instance is at an elevated risk of being interrupted. For more information, see [Capacity rebalancing](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-capacity-rebalance.html) in the _Amazon EC2 User Guide_.
  factory FleetSpotCapacityRebalanceRequest.build(
          [void Function(FleetSpotCapacityRebalanceRequestBuilder) updates]) =
      _$FleetSpotCapacityRebalanceRequest;

  const FleetSpotCapacityRebalanceRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    FleetSpotCapacityRebalanceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetSpotCapacityRebalanceRequestBuilder b) {
    b.terminationDelay = 0;
  }

  /// The replacement strategy to use. Only available for fleets of type `maintain`.
  ///
  /// `launch` \- EC2 Fleet launches a replacement Spot Instance when a rebalance notification is emitted for an existing Spot Instance in the fleet. EC2 Fleet does not terminate the instances that receive a rebalance notification. You can terminate the old instances, or you can leave them running. You are charged for all instances while they are running.
  ///
  /// `launch-before-terminate` \- EC2 Fleet launches a replacement Spot Instance when a rebalance notification is emitted for an existing Spot Instance in the fleet, and then, after a delay that you specify (in `TerminationDelay`), terminates the instances that received a rebalance notification.
  _i2.FleetReplacementStrategy? get replacementStrategy;

  /// The amount of time (in seconds) that Amazon EC2 waits before terminating the old Spot Instance after launching a new replacement Spot Instance.
  ///
  /// Required when `ReplacementStrategy` is set to `launch-before-terminate`.
  ///
  /// Not valid when `ReplacementStrategy` is set to `launch`.
  ///
  /// Valid values: Minimum value of `120` seconds. Maximum value of `7200` seconds.
  int get terminationDelay;
  @override
  List<Object?> get props => [
        replacementStrategy,
        terminationDelay,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetSpotCapacityRebalanceRequest');
    helper.add(
      'replacementStrategy',
      replacementStrategy,
    );
    helper.add(
      'terminationDelay',
      terminationDelay,
    );
    return helper.toString();
  }
}

class FleetSpotCapacityRebalanceRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FleetSpotCapacityRebalanceRequest> {
  const FleetSpotCapacityRebalanceRequestEc2QuerySerializer()
      : super('FleetSpotCapacityRebalanceRequest');

  @override
  Iterable<Type> get types => const [
        FleetSpotCapacityRebalanceRequest,
        _$FleetSpotCapacityRebalanceRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetSpotCapacityRebalanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetSpotCapacityRebalanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ReplacementStrategy':
          if (value != null) {
            result.replacementStrategy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FleetReplacementStrategy),
            ) as _i2.FleetReplacementStrategy);
          }
          break;
        case 'TerminationDelay':
          result.terminationDelay = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as FleetSpotCapacityRebalanceRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'FleetSpotCapacityRebalanceRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.replacementStrategy != null) {
      result
        ..add(const _i3.XmlElementName('ReplacementStrategy'))
        ..add(serializers.serialize(
          payload.replacementStrategy!,
          specifiedType: const FullType.nullable(_i2.FleetReplacementStrategy),
        ));
    }
    result
      ..add(const _i3.XmlElementName('TerminationDelay'))
      ..add(serializers.serialize(
        payload.terminationDelay,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
