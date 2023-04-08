// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_fpga_image_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResetFpgaImageAttributeName
    extends _i1.SmithyEnum<ResetFpgaImageAttributeName> {
  const ResetFpgaImageAttributeName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResetFpgaImageAttributeName._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const loadPermission = ResetFpgaImageAttributeName._(
    0,
    'loadPermission',
    'loadPermission',
  );

  /// All values of [ResetFpgaImageAttributeName].
  static const values = <ResetFpgaImageAttributeName>[
    ResetFpgaImageAttributeName.loadPermission
  ];

  static const List<_i1.SmithySerializer<ResetFpgaImageAttributeName>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'ResetFpgaImageAttributeName',
      values: values,
      sdkUnknown: ResetFpgaImageAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ResetFpgaImageAttributeNameHelpers
    on List<ResetFpgaImageAttributeName> {
  /// Returns the value of [ResetFpgaImageAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResetFpgaImageAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResetFpgaImageAttributeName] whose value matches [value].
  ResetFpgaImageAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
