// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_capacity_reservation_usage_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetCapacityReservationUsageStrategy
    extends _i1.SmithyEnum<FleetCapacityReservationUsageStrategy> {
  const FleetCapacityReservationUsageStrategy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FleetCapacityReservationUsageStrategy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const useCapacityReservationsFirst =
      FleetCapacityReservationUsageStrategy._(
    0,
    'USE_CAPACITY_RESERVATIONS_FIRST',
    'use-capacity-reservations-first',
  );

  /// All values of [FleetCapacityReservationUsageStrategy].
  static const values = <FleetCapacityReservationUsageStrategy>[
    FleetCapacityReservationUsageStrategy.useCapacityReservationsFirst
  ];

  static const List<_i1.SmithySerializer<FleetCapacityReservationUsageStrategy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'FleetCapacityReservationUsageStrategy',
      values: values,
      sdkUnknown: FleetCapacityReservationUsageStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetCapacityReservationUsageStrategyHelpers
    on List<FleetCapacityReservationUsageStrategy> {
  /// Returns the value of [FleetCapacityReservationUsageStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetCapacityReservationUsageStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetCapacityReservationUsageStrategy] whose value matches [value].
  FleetCapacityReservationUsageStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
