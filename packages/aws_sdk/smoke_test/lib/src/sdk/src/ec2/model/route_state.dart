// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.route_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RouteState extends _i1.SmithyEnum<RouteState> {
  const RouteState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RouteState._sdkUnknown(String value) : super.sdkUnknown(value);

  static const active = RouteState._(
    0,
    'active',
    'active',
  );

  static const blackhole = RouteState._(
    1,
    'blackhole',
    'blackhole',
  );

  /// All values of [RouteState].
  static const values = <RouteState>[
    RouteState.active,
    RouteState.blackhole,
  ];

  static const List<_i1.SmithySerializer<RouteState>> serializers = [
    _i1.SmithyEnumSerializer(
      'RouteState',
      values: values,
      sdkUnknown: RouteState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension RouteStateHelpers on List<RouteState> {
  /// Returns the value of [RouteState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RouteState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RouteState] whose value matches [value].
  RouteState byValue(String value) => firstWhere((el) => el.value == value);
}
