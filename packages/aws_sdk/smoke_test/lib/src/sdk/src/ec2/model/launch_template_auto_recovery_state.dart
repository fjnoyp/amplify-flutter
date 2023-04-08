// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_auto_recovery_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LaunchTemplateAutoRecoveryState
    extends _i1.SmithyEnum<LaunchTemplateAutoRecoveryState> {
  const LaunchTemplateAutoRecoveryState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const LaunchTemplateAutoRecoveryState._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const default$ = LaunchTemplateAutoRecoveryState._(
    0,
    'default',
    'default',
  );

  static const disabled = LaunchTemplateAutoRecoveryState._(
    1,
    'disabled',
    'disabled',
  );

  /// All values of [LaunchTemplateAutoRecoveryState].
  static const values = <LaunchTemplateAutoRecoveryState>[
    LaunchTemplateAutoRecoveryState.default$,
    LaunchTemplateAutoRecoveryState.disabled,
  ];

  static const List<_i1.SmithySerializer<LaunchTemplateAutoRecoveryState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'LaunchTemplateAutoRecoveryState',
      values: values,
      sdkUnknown: LaunchTemplateAutoRecoveryState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LaunchTemplateAutoRecoveryStateHelpers
    on List<LaunchTemplateAutoRecoveryState> {
  /// Returns the value of [LaunchTemplateAutoRecoveryState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LaunchTemplateAutoRecoveryState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LaunchTemplateAutoRecoveryState] whose value matches [value].
  LaunchTemplateAutoRecoveryState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
