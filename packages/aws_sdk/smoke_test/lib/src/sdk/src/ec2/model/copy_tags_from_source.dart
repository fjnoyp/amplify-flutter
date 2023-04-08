// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.copy_tags_from_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CopyTagsFromSource extends _i1.SmithyEnum<CopyTagsFromSource> {
  const CopyTagsFromSource._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const CopyTagsFromSource._sdkUnknown(String value) : super.sdkUnknown(value);

  static const volume = CopyTagsFromSource._(
    0,
    'volume',
    'volume',
  );

  /// All values of [CopyTagsFromSource].
  static const values = <CopyTagsFromSource>[CopyTagsFromSource.volume];

  static const List<_i1.SmithySerializer<CopyTagsFromSource>> serializers = [
    _i1.SmithyEnumSerializer(
      'CopyTagsFromSource',
      values: values,
      sdkUnknown: CopyTagsFromSource._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CopyTagsFromSourceHelpers on List<CopyTagsFromSource> {
  /// Returns the value of [CopyTagsFromSource] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CopyTagsFromSource byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CopyTagsFromSource] whose value matches [value].
  CopyTagsFromSource byValue(String value) =>
      firstWhere((el) => el.value == value);
}
