// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.dynamic_routing_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DynamicRoutingValue extends _i1.SmithyEnum<DynamicRoutingValue> {
  const DynamicRoutingValue._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DynamicRoutingValue._sdkUnknown(String value) : super.sdkUnknown(value);

  static const disable = DynamicRoutingValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = DynamicRoutingValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [DynamicRoutingValue].
  static const values = <DynamicRoutingValue>[
    DynamicRoutingValue.disable,
    DynamicRoutingValue.enable,
  ];

  static const List<_i1.SmithySerializer<DynamicRoutingValue>> serializers = [
    _i1.SmithyEnumSerializer(
      'DynamicRoutingValue',
      values: values,
      sdkUnknown: DynamicRoutingValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DynamicRoutingValueHelpers on List<DynamicRoutingValue> {
  /// Returns the value of [DynamicRoutingValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DynamicRoutingValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DynamicRoutingValue] whose value matches [value].
  DynamicRoutingValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
