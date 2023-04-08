// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_metadata_tags_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InstanceMetadataTagsState
    extends _i1.SmithyEnum<InstanceMetadataTagsState> {
  const InstanceMetadataTagsState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InstanceMetadataTagsState._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = InstanceMetadataTagsState._(
    0,
    'disabled',
    'disabled',
  );

  static const enabled = InstanceMetadataTagsState._(
    1,
    'enabled',
    'enabled',
  );

  /// All values of [InstanceMetadataTagsState].
  static const values = <InstanceMetadataTagsState>[
    InstanceMetadataTagsState.disabled,
    InstanceMetadataTagsState.enabled,
  ];

  static const List<_i1.SmithySerializer<InstanceMetadataTagsState>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'InstanceMetadataTagsState',
      values: values,
      sdkUnknown: InstanceMetadataTagsState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InstanceMetadataTagsStateHelpers on List<InstanceMetadataTagsState> {
  /// Returns the value of [InstanceMetadataTagsState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InstanceMetadataTagsState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InstanceMetadataTagsState] whose value matches [value].
  InstanceMetadataTagsState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
