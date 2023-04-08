// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.architecture_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ArchitectureType extends _i1.SmithyEnum<ArchitectureType> {
  const ArchitectureType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ArchitectureType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const arm64 = ArchitectureType._(
    0,
    'arm64',
    'arm64',
  );

  static const i386 = ArchitectureType._(
    1,
    'i386',
    'i386',
  );

  static const x8664 = ArchitectureType._(
    2,
    'x86_64',
    'x86_64',
  );

  static const x8664Mac = ArchitectureType._(
    3,
    'x86_64_mac',
    'x86_64_mac',
  );

  /// All values of [ArchitectureType].
  static const values = <ArchitectureType>[
    ArchitectureType.arm64,
    ArchitectureType.i386,
    ArchitectureType.x8664,
    ArchitectureType.x8664Mac,
  ];

  static const List<_i1.SmithySerializer<ArchitectureType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ArchitectureType',
      values: values,
      sdkUnknown: ArchitectureType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ArchitectureTypeHelpers on List<ArchitectureType> {
  /// Returns the value of [ArchitectureType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ArchitectureType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ArchitectureType] whose value matches [value].
  ArchitectureType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
