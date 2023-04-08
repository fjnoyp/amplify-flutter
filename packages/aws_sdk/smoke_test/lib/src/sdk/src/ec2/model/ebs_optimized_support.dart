// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ebs_optimized_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class EbsOptimizedSupport extends _i1.SmithyEnum<EbsOptimizedSupport> {
  const EbsOptimizedSupport._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const EbsOptimizedSupport._sdkUnknown(String value) : super.sdkUnknown(value);

  static const default$ = EbsOptimizedSupport._(
    0,
    'default',
    'default',
  );

  static const supported = EbsOptimizedSupport._(
    1,
    'supported',
    'supported',
  );

  static const unsupported = EbsOptimizedSupport._(
    2,
    'unsupported',
    'unsupported',
  );

  /// All values of [EbsOptimizedSupport].
  static const values = <EbsOptimizedSupport>[
    EbsOptimizedSupport.default$,
    EbsOptimizedSupport.supported,
    EbsOptimizedSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<EbsOptimizedSupport>> serializers = [
    _i1.SmithyEnumSerializer(
      'EbsOptimizedSupport',
      values: values,
      sdkUnknown: EbsOptimizedSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension EbsOptimizedSupportHelpers on List<EbsOptimizedSupport> {
  /// Returns the value of [EbsOptimizedSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  EbsOptimizedSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [EbsOptimizedSupport] whose value matches [value].
  EbsOptimizedSupport byValue(String value) =>
      firstWhere((el) => el.value == value);
}
