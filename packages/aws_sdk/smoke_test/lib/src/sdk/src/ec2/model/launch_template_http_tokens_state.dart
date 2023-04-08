// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_http_tokens_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LaunchTemplateHttpTokensState
    extends _i1.SmithyEnum<LaunchTemplateHttpTokensState> {
  const LaunchTemplateHttpTokensState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const LaunchTemplateHttpTokensState._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const optional = LaunchTemplateHttpTokensState._(
    0,
    'optional',
    'optional',
  );

  static const required = LaunchTemplateHttpTokensState._(
    1,
    'required',
    'required',
  );

  /// All values of [LaunchTemplateHttpTokensState].
  static const values = <LaunchTemplateHttpTokensState>[
    LaunchTemplateHttpTokensState.optional,
    LaunchTemplateHttpTokensState.required,
  ];

  static const List<_i1.SmithySerializer<LaunchTemplateHttpTokensState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'LaunchTemplateHttpTokensState',
      values: values,
      sdkUnknown: LaunchTemplateHttpTokensState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LaunchTemplateHttpTokensStateHelpers
    on List<LaunchTemplateHttpTokensState> {
  /// Returns the value of [LaunchTemplateHttpTokensState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LaunchTemplateHttpTokensState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LaunchTemplateHttpTokensState] whose value matches [value].
  LaunchTemplateHttpTokensState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
