// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.capacity_reservation_preference; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CapacityReservationPreference
    extends _i1.SmithyEnum<CapacityReservationPreference> {
  const CapacityReservationPreference._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const CapacityReservationPreference._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const none = CapacityReservationPreference._(
    0,
    'none',
    'none',
  );

  static const open = CapacityReservationPreference._(
    1,
    'open',
    'open',
  );

  /// All values of [CapacityReservationPreference].
  static const values = <CapacityReservationPreference>[
    CapacityReservationPreference.none,
    CapacityReservationPreference.open,
  ];

  static const List<_i1.SmithySerializer<CapacityReservationPreference>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'CapacityReservationPreference',
      values: values,
      sdkUnknown: CapacityReservationPreference._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CapacityReservationPreferenceHelpers
    on List<CapacityReservationPreference> {
  /// Returns the value of [CapacityReservationPreference] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CapacityReservationPreference byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CapacityReservationPreference] whose value matches [value].
  CapacityReservationPreference byValue(String value) =>
      firstWhere((el) => el.value == value);
}
