// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disk_image_format; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DiskImageFormat extends _i1.SmithyEnum<DiskImageFormat> {
  const DiskImageFormat._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DiskImageFormat._sdkUnknown(String value) : super.sdkUnknown(value);

  static const raw = DiskImageFormat._(
    0,
    'RAW',
    'RAW',
  );

  static const vhd = DiskImageFormat._(
    1,
    'VHD',
    'VHD',
  );

  static const vmdk = DiskImageFormat._(
    2,
    'VMDK',
    'VMDK',
  );

  /// All values of [DiskImageFormat].
  static const values = <DiskImageFormat>[
    DiskImageFormat.raw,
    DiskImageFormat.vhd,
    DiskImageFormat.vmdk,
  ];

  static const List<_i1.SmithySerializer<DiskImageFormat>> serializers = [
    _i1.SmithyEnumSerializer(
      'DiskImageFormat',
      values: values,
      sdkUnknown: DiskImageFormat._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DiskImageFormatHelpers on List<DiskImageFormat> {
  /// Returns the value of [DiskImageFormat] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DiskImageFormat byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DiskImageFormat] whose value matches [value].
  DiskImageFormat byValue(String value) =>
      firstWhere((el) => el.value == value);
}
