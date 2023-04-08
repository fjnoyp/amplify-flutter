// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_image_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResetImageAttributeName extends _i1.SmithyEnum<ResetImageAttributeName> {
  const ResetImageAttributeName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResetImageAttributeName._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const launchPermission = ResetImageAttributeName._(
    0,
    'launchPermission',
    'launchPermission',
  );

  /// All values of [ResetImageAttributeName].
  static const values = <ResetImageAttributeName>[
    ResetImageAttributeName.launchPermission
  ];

  static const List<_i1.SmithySerializer<ResetImageAttributeName>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ResetImageAttributeName',
      values: values,
      sdkUnknown: ResetImageAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ResetImageAttributeNameHelpers on List<ResetImageAttributeName> {
  /// Returns the value of [ResetImageAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResetImageAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResetImageAttributeName] whose value matches [value].
  ResetImageAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
