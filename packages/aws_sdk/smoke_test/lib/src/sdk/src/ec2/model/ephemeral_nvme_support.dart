// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ephemeral_nvme_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EphemeralNvmeSupport extends _i1.SmithyEnum<EphemeralNvmeSupport> {
  const EphemeralNvmeSupport._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EphemeralNvmeSupport._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const required = EphemeralNvmeSupport._(
    0,
    'REQUIRED',
    'required',
  );

  static const supported = EphemeralNvmeSupport._(
    1,
    'SUPPORTED',
    'supported',
  );

  static const unsupported = EphemeralNvmeSupport._(
    2,
    'UNSUPPORTED',
    'unsupported',
  );

  /// All values of [EphemeralNvmeSupport].
  static const values = <EphemeralNvmeSupport>[
    EphemeralNvmeSupport.required,
    EphemeralNvmeSupport.supported,
    EphemeralNvmeSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<EphemeralNvmeSupport>> serializers = [
    _i1.SmithyEnumSerializer(
      'EphemeralNvmeSupport',
      values: values,
      sdkUnknown: EphemeralNvmeSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EphemeralNvmeSupportHelpers on List<EphemeralNvmeSupport> {
  /// Returns the value of [EphemeralNvmeSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EphemeralNvmeSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EphemeralNvmeSupport] whose value matches [value].
  EphemeralNvmeSupport byValue(String value) =>
      firstWhere((el) => el.value == value);
}
