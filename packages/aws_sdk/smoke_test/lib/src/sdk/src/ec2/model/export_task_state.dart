// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_task_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ExportTaskState extends _i1.SmithyEnum<ExportTaskState> {
  const ExportTaskState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ExportTaskState._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = ExportTaskState._(
    0,
    'active',
    'active',
  );

  static const cancelled = ExportTaskState._(
    1,
    'cancelled',
    'cancelled',
  );

  static const cancelling = ExportTaskState._(
    2,
    'cancelling',
    'cancelling',
  );

  static const completed = ExportTaskState._(
    3,
    'completed',
    'completed',
  );

  /// All values of [ExportTaskState].
  static const values = <ExportTaskState>[
    ExportTaskState.active,
    ExportTaskState.cancelled,
    ExportTaskState.cancelling,
    ExportTaskState.completed,
  ];

  static const List<_i1.SmithySerializer<ExportTaskState>> serializers = [
    _i1.SmithyEnumSerializer(
      'ExportTaskState',
      values: values,
      sdkUnknown: ExportTaskState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ExportTaskStateHelpers on List<ExportTaskState> {
  /// Returns the value of [ExportTaskState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ExportTaskState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ExportTaskState] whose value matches [value].
  ExportTaskState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
