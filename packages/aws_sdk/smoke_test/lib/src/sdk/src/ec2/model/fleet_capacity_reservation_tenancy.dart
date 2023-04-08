// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_capacity_reservation_tenancy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetCapacityReservationTenancy
    extends _i1.SmithyEnum<FleetCapacityReservationTenancy> {
  const FleetCapacityReservationTenancy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FleetCapacityReservationTenancy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const default$ = FleetCapacityReservationTenancy._(
    0,
    'default',
    'default',
  );

  /// All values of [FleetCapacityReservationTenancy].
  static const values = <FleetCapacityReservationTenancy>[
    FleetCapacityReservationTenancy.default$
  ];

  static const List<_i1.SmithySerializer<FleetCapacityReservationTenancy>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'FleetCapacityReservationTenancy',
      values: values,
      sdkUnknown: FleetCapacityReservationTenancy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetCapacityReservationTenancyHelpers
    on List<FleetCapacityReservationTenancy> {
  /// Returns the value of [FleetCapacityReservationTenancy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetCapacityReservationTenancy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetCapacityReservationTenancy] whose value matches [value].
  FleetCapacityReservationTenancy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
