// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.allows_multiple_instance_types; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AllowsMultipleInstanceTypes
    extends _i1.SmithyEnum<AllowsMultipleInstanceTypes> {
  const AllowsMultipleInstanceTypes._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AllowsMultipleInstanceTypes._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const off = AllowsMultipleInstanceTypes._(
    0,
    'off',
    'off',
  );

  static const on = AllowsMultipleInstanceTypes._(
    1,
    'on',
    'on',
  );

  /// All values of [AllowsMultipleInstanceTypes].
  static const values = <AllowsMultipleInstanceTypes>[
    AllowsMultipleInstanceTypes.off,
    AllowsMultipleInstanceTypes.on,
  ];

  static const List<_i1.SmithySerializer<AllowsMultipleInstanceTypes>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AllowsMultipleInstanceTypes',
      values: values,
      sdkUnknown: AllowsMultipleInstanceTypes._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AllowsMultipleInstanceTypesHelpers
    on List<AllowsMultipleInstanceTypes> {
  /// Returns the value of [AllowsMultipleInstanceTypes] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AllowsMultipleInstanceTypes byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AllowsMultipleInstanceTypes] whose value matches [value].
  AllowsMultipleInstanceTypes byValue(String value) =>
      firstWhere((el) => el.value == value);
}
