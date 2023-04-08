// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_lifecycle; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceLifecycle extends _i1.SmithyEnum<InstanceLifecycle> {
  const InstanceLifecycle._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InstanceLifecycle._sdkUnknown(String value) : super.sdkUnknown(value);

  static const onDemand = InstanceLifecycle._(
    0,
    'ON_DEMAND',
    'on-demand',
  );

  static const spot = InstanceLifecycle._(
    1,
    'SPOT',
    'spot',
  );

  /// All values of [InstanceLifecycle].
  static const values = <InstanceLifecycle>[
    InstanceLifecycle.onDemand,
    InstanceLifecycle.spot,
  ];

  static const List<_i1.SmithySerializer<InstanceLifecycle>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceLifecycle',
      values: values,
      sdkUnknown: InstanceLifecycle._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceLifecycleHelpers on List<InstanceLifecycle> {
  /// Returns the value of [InstanceLifecycle] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceLifecycle byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceLifecycle] whose value matches [value].
  InstanceLifecycle byValue(String value) =>
      firstWhere((el) => el.value == value);
}
