// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_generation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceGeneration extends _i1.SmithyEnum<InstanceGeneration> {
  const InstanceGeneration._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InstanceGeneration._sdkUnknown(String value) : super.sdkUnknown(value);

  static const current = InstanceGeneration._(
    0,
    'CURRENT',
    'current',
  );

  static const previous = InstanceGeneration._(
    1,
    'PREVIOUS',
    'previous',
  );

  /// All values of [InstanceGeneration].
  static const values = <InstanceGeneration>[
    InstanceGeneration.current,
    InstanceGeneration.previous,
  ];

  static const List<_i1.SmithySerializer<InstanceGeneration>> serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceGeneration',
      values: values,
      sdkUnknown: InstanceGeneration._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceGenerationHelpers on List<InstanceGeneration> {
  /// Returns the value of [InstanceGeneration] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceGeneration byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceGeneration] whose value matches [value].
  InstanceGeneration byValue(String value) =>
      firstWhere((el) => el.value == value);
}
