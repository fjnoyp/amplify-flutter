// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_instance_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SpotInstanceState extends _i1.SmithyEnum<SpotInstanceState> {
  const SpotInstanceState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SpotInstanceState._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = SpotInstanceState._(
    0,
    'active',
    'active',
  );

  static const cancelled = SpotInstanceState._(
    1,
    'cancelled',
    'cancelled',
  );

  static const closed = SpotInstanceState._(
    2,
    'closed',
    'closed',
  );

  static const failed = SpotInstanceState._(
    3,
    'failed',
    'failed',
  );

  static const open = SpotInstanceState._(
    4,
    'open',
    'open',
  );

  /// All values of [SpotInstanceState].
  static const values = <SpotInstanceState>[
    SpotInstanceState.active,
    SpotInstanceState.cancelled,
    SpotInstanceState.closed,
    SpotInstanceState.failed,
    SpotInstanceState.open,
  ];

  static const List<_i1.SmithySerializer<SpotInstanceState>> serializers = [
    _i1.SmithyEnumSerializer(
      'SpotInstanceState',
      values: values,
      sdkUnknown: SpotInstanceState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SpotInstanceStateHelpers on List<SpotInstanceState> {
  /// Returns the value of [SpotInstanceState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SpotInstanceState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SpotInstanceState] whose value matches [value].
  SpotInstanceState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
