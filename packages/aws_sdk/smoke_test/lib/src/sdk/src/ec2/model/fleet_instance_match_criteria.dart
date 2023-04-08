// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_instance_match_criteria; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FleetInstanceMatchCriteria
    extends _i1.SmithyEnum<FleetInstanceMatchCriteria> {
  const FleetInstanceMatchCriteria._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FleetInstanceMatchCriteria._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const open = FleetInstanceMatchCriteria._(
    0,
    'open',
    'open',
  );

  /// All values of [FleetInstanceMatchCriteria].
  static const values = <FleetInstanceMatchCriteria>[
    FleetInstanceMatchCriteria.open
  ];

  static const List<_i1.SmithySerializer<FleetInstanceMatchCriteria>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'FleetInstanceMatchCriteria',
      values: values,
      sdkUnknown: FleetInstanceMatchCriteria._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FleetInstanceMatchCriteriaHelpers
    on List<FleetInstanceMatchCriteria> {
  /// Returns the value of [FleetInstanceMatchCriteria] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FleetInstanceMatchCriteria byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FleetInstanceMatchCriteria] whose value matches [value].
  FleetInstanceMatchCriteria byValue(String value) =>
      firstWhere((el) => el.value == value);
}
