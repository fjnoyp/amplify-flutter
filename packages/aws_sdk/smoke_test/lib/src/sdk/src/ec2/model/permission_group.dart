// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.permission_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PermissionGroup extends _i1.SmithyEnum<PermissionGroup> {
  const PermissionGroup._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PermissionGroup._sdkUnknown(String value) : super.sdkUnknown(value);

  static const all = PermissionGroup._(
    0,
    'all',
    'all',
  );

  /// All values of [PermissionGroup].
  static const values = <PermissionGroup>[PermissionGroup.all];

  static const List<_i1.SmithySerializer<PermissionGroup>> serializers = [
    _i1.SmithyEnumSerializer(
      'PermissionGroup',
      values: values,
      sdkUnknown: PermissionGroup._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PermissionGroupHelpers on List<PermissionGroup> {
  /// Returns the value of [PermissionGroup] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PermissionGroup byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PermissionGroup] whose value matches [value].
  PermissionGroup byValue(String value) =>
      firstWhere((el) => el.value == value);
}
