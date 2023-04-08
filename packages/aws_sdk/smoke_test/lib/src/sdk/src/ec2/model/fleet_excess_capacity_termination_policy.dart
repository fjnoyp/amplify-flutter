// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_excess_capacity_termination_policy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetExcessCapacityTerminationPolicy
    extends _i1.SmithyEnum<FleetExcessCapacityTerminationPolicy> {
  const FleetExcessCapacityTerminationPolicy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FleetExcessCapacityTerminationPolicy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const noTermination = FleetExcessCapacityTerminationPolicy._(
    0,
    'NO_TERMINATION',
    'no-termination',
  );

  static const termination = FleetExcessCapacityTerminationPolicy._(
    1,
    'TERMINATION',
    'termination',
  );

  /// All values of [FleetExcessCapacityTerminationPolicy].
  static const values = <FleetExcessCapacityTerminationPolicy>[
    FleetExcessCapacityTerminationPolicy.noTermination,
    FleetExcessCapacityTerminationPolicy.termination,
  ];

  static const List<_i1.SmithySerializer<FleetExcessCapacityTerminationPolicy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'FleetExcessCapacityTerminationPolicy',
      values: values,
      sdkUnknown: FleetExcessCapacityTerminationPolicy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetExcessCapacityTerminationPolicyHelpers
    on List<FleetExcessCapacityTerminationPolicy> {
  /// Returns the value of [FleetExcessCapacityTerminationPolicy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetExcessCapacityTerminationPolicy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetExcessCapacityTerminationPolicy] whose value matches [value].
  FleetExcessCapacityTerminationPolicy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
