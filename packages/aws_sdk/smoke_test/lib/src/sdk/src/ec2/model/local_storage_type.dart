// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.local_storage_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LocalStorageType extends _i1.SmithyEnum<LocalStorageType> {
  const LocalStorageType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const LocalStorageType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const hdd = LocalStorageType._(
    0,
    'HDD',
    'hdd',
  );

  static const ssd = LocalStorageType._(
    1,
    'SSD',
    'ssd',
  );

  /// All values of [LocalStorageType].
  static const values = <LocalStorageType>[
    LocalStorageType.hdd,
    LocalStorageType.ssd,
  ];

  static const List<_i1.SmithySerializer<LocalStorageType>> serializers = [
    _i1.SmithyEnumSerializer(
      'LocalStorageType',
      values: values,
      sdkUnknown: LocalStorageType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LocalStorageTypeHelpers on List<LocalStorageType> {
  /// Returns the value of [LocalStorageType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LocalStorageType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LocalStorageType] whose value matches [value].
  LocalStorageType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
