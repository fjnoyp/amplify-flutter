// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.interface_permission_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InterfacePermissionType extends _i1.SmithyEnum<InterfacePermissionType> {
  const InterfacePermissionType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InterfacePermissionType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const eipAssociate = InterfacePermissionType._(
    0,
    'EIP_ASSOCIATE',
    'EIP-ASSOCIATE',
  );

  static const instanceAttach = InterfacePermissionType._(
    1,
    'INSTANCE_ATTACH',
    'INSTANCE-ATTACH',
  );

  /// All values of [InterfacePermissionType].
  static const values = <InterfacePermissionType>[
    InterfacePermissionType.eipAssociate,
    InterfacePermissionType.instanceAttach,
  ];

  static const List<_i1.SmithySerializer<InterfacePermissionType>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'InterfacePermissionType',
      values: values,
      sdkUnknown: InterfacePermissionType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InterfacePermissionTypeHelpers on List<InterfacePermissionType> {
  /// Returns the value of [InterfacePermissionType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InterfacePermissionType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InterfacePermissionType] whose value matches [value].
  InterfacePermissionType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
