// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.architecture_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ArchitectureValues extends _i1.SmithyEnum<ArchitectureValues> {
  const ArchitectureValues._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ArchitectureValues._sdkUnknown(String value) : super.sdkUnknown(value);

  static const arm64 = ArchitectureValues._(
    0,
    'arm64',
    'arm64',
  );

  static const i386 = ArchitectureValues._(
    1,
    'i386',
    'i386',
  );

  static const x8664 = ArchitectureValues._(
    2,
    'x86_64',
    'x86_64',
  );

  static const x8664Mac = ArchitectureValues._(
    3,
    'x86_64_mac',
    'x86_64_mac',
  );

  /// All values of [ArchitectureValues].
  static const values = <ArchitectureValues>[
    ArchitectureValues.arm64,
    ArchitectureValues.i386,
    ArchitectureValues.x8664,
    ArchitectureValues.x8664Mac,
  ];

  static const List<_i1.SmithySerializer<ArchitectureValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'ArchitectureValues',
      values: values,
      sdkUnknown: ArchitectureValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ArchitectureValuesHelpers on List<ArchitectureValues> {
  /// Returns the value of [ArchitectureValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ArchitectureValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ArchitectureValues] whose value matches [value].
  ArchitectureValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
