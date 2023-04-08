// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_instance_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SpotInstanceType extends _i1.SmithyEnum<SpotInstanceType> {
  const SpotInstanceType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SpotInstanceType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const oneTime = SpotInstanceType._(
    0,
    'one_time',
    'one-time',
  );

  static const persistent = SpotInstanceType._(
    1,
    'persistent',
    'persistent',
  );

  /// All values of [SpotInstanceType].
  static const values = <SpotInstanceType>[
    SpotInstanceType.oneTime,
    SpotInstanceType.persistent,
  ];

  static const List<_i1.SmithySerializer<SpotInstanceType>> serializers = [
    _i1.SmithyEnumSerializer(
      'SpotInstanceType',
      values: values,
      sdkUnknown: SpotInstanceType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SpotInstanceTypeHelpers on List<SpotInstanceType> {
  /// Returns the value of [SpotInstanceType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SpotInstanceType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SpotInstanceType] whose value matches [value].
  SpotInstanceType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
