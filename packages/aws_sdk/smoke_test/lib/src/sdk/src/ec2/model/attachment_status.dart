// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.attachment_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AttachmentStatus extends _i1.SmithyEnum<AttachmentStatus> {
  const AttachmentStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AttachmentStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const attached = AttachmentStatus._(
    0,
    'attached',
    'attached',
  );

  static const attaching = AttachmentStatus._(
    1,
    'attaching',
    'attaching',
  );

  static const detached = AttachmentStatus._(
    2,
    'detached',
    'detached',
  );

  static const detaching = AttachmentStatus._(
    3,
    'detaching',
    'detaching',
  );

  /// All values of [AttachmentStatus].
  static const values = <AttachmentStatus>[
    AttachmentStatus.attached,
    AttachmentStatus.attaching,
    AttachmentStatus.detached,
    AttachmentStatus.detaching,
  ];

  static const List<_i1.SmithySerializer<AttachmentStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'AttachmentStatus',
      values: values,
      sdkUnknown: AttachmentStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AttachmentStatusHelpers on List<AttachmentStatus> {
  /// Returns the value of [AttachmentStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AttachmentStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AttachmentStatus] whose value matches [value].
  AttachmentStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
