// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.host_recovery; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HostRecovery extends _i1.SmithyEnum<HostRecovery> {
  const HostRecovery._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HostRecovery._sdkUnknown(String value) : super.sdkUnknown(value);

  static const off = HostRecovery._(
    0,
    'off',
    'off',
  );

  static const on = HostRecovery._(
    1,
    'on',
    'on',
  );

  /// All values of [HostRecovery].
  static const values = <HostRecovery>[
    HostRecovery.off,
    HostRecovery.on,
  ];

  static const List<_i1.SmithySerializer<HostRecovery>> serializers = [
    _i1.SmithyEnumSerializer(
      'HostRecovery',
      values: values,
      sdkUnknown: HostRecovery._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension HostRecoveryHelpers on List<HostRecovery> {
  /// Returns the value of [HostRecovery] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HostRecovery byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HostRecovery] whose value matches [value].
  HostRecovery byValue(String value) => firstWhere((el) => el.value == value);
}
