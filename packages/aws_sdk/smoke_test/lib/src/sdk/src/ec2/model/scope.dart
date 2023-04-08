// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scope; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Scope extends _i1.SmithyEnum<Scope> {
  const Scope._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const Scope._sdkUnknown(String value) : super.sdkUnknown(value);

  static const availabilityZone = Scope._(
    0,
    'AVAILABILITY_ZONE',
    'Availability Zone',
  );

  static const regional = Scope._(
    1,
    'REGIONAL',
    'Region',
  );

  /// All values of [Scope].
  static const values = <Scope>[
    Scope.availabilityZone,
    Scope.regional,
  ];

  static const List<_i1.SmithySerializer<Scope>> serializers = [
    _i1.SmithyEnumSerializer(
      'scope',
      values: values,
      sdkUnknown: Scope._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ScopeHelpers on List<Scope> {
  /// Returns the value of [Scope] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Scope byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Scope] whose value matches [value].
  Scope byValue(String value) => firstWhere((el) => el.value == value);
}
