// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_metadata_tags_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LaunchTemplateInstanceMetadataTagsState
    extends _i1.SmithyEnum<LaunchTemplateInstanceMetadataTagsState> {
  const LaunchTemplateInstanceMetadataTagsState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const LaunchTemplateInstanceMetadataTagsState._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = LaunchTemplateInstanceMetadataTagsState._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = LaunchTemplateInstanceMetadataTagsState._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [LaunchTemplateInstanceMetadataTagsState].
  static const values = <LaunchTemplateInstanceMetadataTagsState>[
    LaunchTemplateInstanceMetadataTagsState.disabled,
    LaunchTemplateInstanceMetadataTagsState.enabled,
  ];

  static const List<
          _i1.SmithySerializer<LaunchTemplateInstanceMetadataTagsState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'LaunchTemplateInstanceMetadataTagsState',
      values: values,
      sdkUnknown: LaunchTemplateInstanceMetadataTagsState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LaunchTemplateInstanceMetadataTagsStateHelpers
    on List<LaunchTemplateInstanceMetadataTagsState> {
  /// Returns the value of [LaunchTemplateInstanceMetadataTagsState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LaunchTemplateInstanceMetadataTagsState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LaunchTemplateInstanceMetadataTagsState] whose value matches [value].
  LaunchTemplateInstanceMetadataTagsState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
