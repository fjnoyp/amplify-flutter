// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_lifecycle_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceLifecycleType extends _i1.SmithyEnum<InstanceLifecycleType> {
  const InstanceLifecycleType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InstanceLifecycleType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const scheduled = InstanceLifecycleType._(
    0,
    'scheduled',
    'scheduled',
  );

  static const spot = InstanceLifecycleType._(
    1,
    'spot',
    'spot',
  );

  /// All values of [InstanceLifecycleType].
  static const values = <InstanceLifecycleType>[
    InstanceLifecycleType.scheduled,
    InstanceLifecycleType.spot,
  ];

  static const List<_i1.SmithySerializer<InstanceLifecycleType>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceLifecycleType',
      values: values,
      sdkUnknown: InstanceLifecycleType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceLifecycleTypeHelpers on List<InstanceLifecycleType> {
  /// Returns the value of [InstanceLifecycleType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceLifecycleType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceLifecycleType] whose value matches [value].
  InstanceLifecycleType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
