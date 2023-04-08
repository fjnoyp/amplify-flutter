// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.placement_group_strategy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PlacementGroupStrategy extends _i1.SmithyEnum<PlacementGroupStrategy> {
  const PlacementGroupStrategy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PlacementGroupStrategy._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const cluster = PlacementGroupStrategy._(
    0,
    'cluster',
    'cluster',
  );

  static const partition = PlacementGroupStrategy._(
    1,
    'partition',
    'partition',
  );

  static const spread = PlacementGroupStrategy._(
    2,
    'spread',
    'spread',
  );

  /// All values of [PlacementGroupStrategy].
  static const values = <PlacementGroupStrategy>[
    PlacementGroupStrategy.cluster,
    PlacementGroupStrategy.partition,
    PlacementGroupStrategy.spread,
  ];

  static const List<_i1.SmithySerializer<PlacementGroupStrategy>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'PlacementGroupStrategy',
      values: values,
      sdkUnknown: PlacementGroupStrategy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PlacementGroupStrategyHelpers on List<PlacementGroupStrategy> {
  /// Returns the value of [PlacementGroupStrategy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PlacementGroupStrategy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PlacementGroupStrategy] whose value matches [value].
  PlacementGroupStrategy byValue(String value) =>
      firstWhere((el) => el.value == value);
}
