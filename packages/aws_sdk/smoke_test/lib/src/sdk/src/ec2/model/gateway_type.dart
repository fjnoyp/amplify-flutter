// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.gateway_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class GatewayType extends _i1.SmithyEnum<GatewayType> {
  const GatewayType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const GatewayType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const ipsec1 = GatewayType._(
    0,
    'ipsec_1',
    'ipsec.1',
  );

  /// All values of [GatewayType].
  static const values = <GatewayType>[GatewayType.ipsec1];

  static const List<_i1.SmithySerializer<GatewayType>> serializers = [
    _i1.SmithyEnumSerializer(
      'GatewayType',
      values: values,
      sdkUnknown: GatewayType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension GatewayTypeHelpers on List<GatewayType> {
  /// Returns the value of [GatewayType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  GatewayType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [GatewayType] whose value matches [value].
  GatewayType byValue(String value) => firstWhere((el) => el.value == value);
}
