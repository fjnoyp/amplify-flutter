// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.auto_accept_shared_attachments_value; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AutoAcceptSharedAttachmentsValue
    extends _i1.SmithyEnum<AutoAcceptSharedAttachmentsValue> {
  const AutoAcceptSharedAttachmentsValue._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AutoAcceptSharedAttachmentsValue._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disable = AutoAcceptSharedAttachmentsValue._(
    0,
    'disable',
    'disable',
  );

  static const enable = AutoAcceptSharedAttachmentsValue._(
    1,
    'enable',
    'enable',
  );

  /// All values of [AutoAcceptSharedAttachmentsValue].
  static const values = <AutoAcceptSharedAttachmentsValue>[
    AutoAcceptSharedAttachmentsValue.disable,
    AutoAcceptSharedAttachmentsValue.enable,
  ];

  static const List<_i1.SmithySerializer<AutoAcceptSharedAttachmentsValue>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'AutoAcceptSharedAttachmentsValue',
      values: values,
      sdkUnknown: AutoAcceptSharedAttachmentsValue._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AutoAcceptSharedAttachmentsValueHelpers
    on List<AutoAcceptSharedAttachmentsValue> {
  /// Returns the value of [AutoAcceptSharedAttachmentsValue] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AutoAcceptSharedAttachmentsValue byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AutoAcceptSharedAttachmentsValue] whose value matches [value].
  AutoAcceptSharedAttachmentsValue byValue(String value) =>
      firstWhere((el) => el.value == value);
}
