// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.traffic_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TrafficType extends _i1.SmithyEnum<TrafficType> {
  const TrafficType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TrafficType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const accept = TrafficType._(
    0,
    'ACCEPT',
    'ACCEPT',
  );

  static const all = TrafficType._(
    1,
    'ALL',
    'ALL',
  );

  static const reject = TrafficType._(
    2,
    'REJECT',
    'REJECT',
  );

  /// All values of [TrafficType].
  static const values = <TrafficType>[
    TrafficType.accept,
    TrafficType.all,
    TrafficType.reject,
  ];

  static const List<_i1.SmithySerializer<TrafficType>> serializers = [
    _i1.SmithyEnumSerializer(
      'TrafficType',
      values: values,
      sdkUnknown: TrafficType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension TrafficTypeHelpers on List<TrafficType> {
  /// Returns the value of [TrafficType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TrafficType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TrafficType] whose value matches [value].
  TrafficType byValue(String value) => firstWhere((el) => el.value == value);
}
