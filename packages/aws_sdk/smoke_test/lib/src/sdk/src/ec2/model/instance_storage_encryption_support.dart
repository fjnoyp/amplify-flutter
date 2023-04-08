// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_storage_encryption_support; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceStorageEncryptionSupport
    extends _i1.SmithyEnum<InstanceStorageEncryptionSupport> {
  const InstanceStorageEncryptionSupport._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InstanceStorageEncryptionSupport._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const required = InstanceStorageEncryptionSupport._(
    0,
    'required',
    'required',
  );

  static const unsupported = InstanceStorageEncryptionSupport._(
    1,
    'unsupported',
    'unsupported',
  );

  /// All values of [InstanceStorageEncryptionSupport].
  static const values = <InstanceStorageEncryptionSupport>[
    InstanceStorageEncryptionSupport.required,
    InstanceStorageEncryptionSupport.unsupported,
  ];

  static const List<_i1.SmithySerializer<InstanceStorageEncryptionSupport>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceStorageEncryptionSupport',
      values: values,
      sdkUnknown: InstanceStorageEncryptionSupport._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceStorageEncryptionSupportHelpers
    on List<InstanceStorageEncryptionSupport> {
  /// Returns the value of [InstanceStorageEncryptionSupport] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceStorageEncryptionSupport byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceStorageEncryptionSupport] whose value matches [value].
  InstanceStorageEncryptionSupport byValue(String value) =>
      firstWhere((el) => el.value == value);
}
