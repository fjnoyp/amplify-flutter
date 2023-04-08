// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.status_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StatusName extends _i1.SmithyEnum<StatusName> {
  const StatusName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const StatusName._sdkUnknown(String value) : super.sdkUnknown(value);

  static const reachability = StatusName._(
    0,
    'reachability',
    'reachability',
  );

  /// All values of [StatusName].
  static const values = <StatusName>[StatusName.reachability];

  static const List<_i1.SmithySerializer<StatusName>> serializers = [
    _i1.SmithyEnumSerializer(
      'StatusName',
      values: values,
      sdkUnknown: StatusName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension StatusNameHelpers on List<StatusName> {
  /// Returns the value of [StatusName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StatusName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StatusName] whose value matches [value].
  StatusName byValue(String value) => firstWhere((el) => el.value == value);
}
