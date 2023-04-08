// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_environment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExportEnvironment extends _i1.SmithyEnum<ExportEnvironment> {
  const ExportEnvironment._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ExportEnvironment._sdkUnknown(String value) : super.sdkUnknown(value);

  static const citrix = ExportEnvironment._(
    0,
    'citrix',
    'citrix',
  );

  static const microsoft = ExportEnvironment._(
    1,
    'microsoft',
    'microsoft',
  );

  static const vmware = ExportEnvironment._(
    2,
    'vmware',
    'vmware',
  );

  /// All values of [ExportEnvironment].
  static const values = <ExportEnvironment>[
    ExportEnvironment.citrix,
    ExportEnvironment.microsoft,
    ExportEnvironment.vmware,
  ];

  static const List<_i1.SmithySerializer<ExportEnvironment>> serializers = [
    _i1.SmithyEnumSerializer(
      'ExportEnvironment',
      values: values,
      sdkUnknown: ExportEnvironment._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ExportEnvironmentHelpers on List<ExportEnvironment> {
  /// Returns the value of [ExportEnvironment] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExportEnvironment byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExportEnvironment] whose value matches [value].
  ExportEnvironment byValue(String value) =>
      firstWhere((el) => el.value == value);
}
