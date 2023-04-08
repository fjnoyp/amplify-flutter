// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.boot_mode_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class BootModeType extends _i1.SmithyEnum<BootModeType> {
  const BootModeType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const BootModeType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const legacyBios = BootModeType._(
    0,
    'legacy_bios',
    'legacy-bios',
  );

  static const uefi = BootModeType._(
    1,
    'uefi',
    'uefi',
  );

  /// All values of [BootModeType].
  static const values = <BootModeType>[
    BootModeType.legacyBios,
    BootModeType.uefi,
  ];

  static const List<_i1.SmithySerializer<BootModeType>> serializers = [
    _i1.SmithyEnumSerializer(
      'BootModeType',
      values: values,
      sdkUnknown: BootModeType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension BootModeTypeHelpers on List<BootModeType> {
  /// Returns the value of [BootModeType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  BootModeType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [BootModeType] whose value matches [value].
  BootModeType byValue(String value) => firstWhere((el) => el.value == value);
}
