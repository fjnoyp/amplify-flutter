// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accelerator_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AcceleratorType extends _i1.SmithyEnum<AcceleratorType> {
  const AcceleratorType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AcceleratorType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const fpga = AcceleratorType._(
    0,
    'FPGA',
    'fpga',
  );

  static const gpu = AcceleratorType._(
    1,
    'GPU',
    'gpu',
  );

  static const inference = AcceleratorType._(
    2,
    'INFERENCE',
    'inference',
  );

  /// All values of [AcceleratorType].
  static const values = <AcceleratorType>[
    AcceleratorType.fpga,
    AcceleratorType.gpu,
    AcceleratorType.inference,
  ];

  static const List<_i1.SmithySerializer<AcceleratorType>> serializers = [
    _i1.SmithyEnumSerializer(
      'AcceleratorType',
      values: values,
      sdkUnknown: AcceleratorType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AcceleratorTypeHelpers on List<AcceleratorType> {
  /// Returns the value of [AcceleratorType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AcceleratorType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AcceleratorType] whose value matches [value].
  AcceleratorType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
