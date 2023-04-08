// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fast_launch_resource_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class FastLaunchResourceType extends _i1.SmithyEnum<FastLaunchResourceType> {
  const FastLaunchResourceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const FastLaunchResourceType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const snapshot = FastLaunchResourceType._(
    0,
    'SNAPSHOT',
    'snapshot',
  );

  /// All values of [FastLaunchResourceType].
  static const values = <FastLaunchResourceType>[
    FastLaunchResourceType.snapshot
  ];

  static const List<_i1.SmithySerializer<FastLaunchResourceType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'FastLaunchResourceType',
      values: values,
      sdkUnknown: FastLaunchResourceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension FastLaunchResourceTypeHelpers on List<FastLaunchResourceType> {
  /// Returns the value of [FastLaunchResourceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  FastLaunchResourceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [FastLaunchResourceType] whose value matches [value].
  FastLaunchResourceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
