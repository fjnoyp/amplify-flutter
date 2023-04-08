// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.interface_protocol_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class InterfaceProtocolType extends _i1.SmithyEnum<InterfaceProtocolType> {
  const InterfaceProtocolType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const InterfaceProtocolType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const gre = InterfaceProtocolType._(
    0,
    'GRE',
    'GRE',
  );

  static const vlan = InterfaceProtocolType._(
    1,
    'VLAN',
    'VLAN',
  );

  /// All values of [InterfaceProtocolType].
  static const values = <InterfaceProtocolType>[
    InterfaceProtocolType.gre,
    InterfaceProtocolType.vlan,
  ];

  static const List<_i1.SmithySerializer<InterfaceProtocolType>> serializers = [
    _i1.SmithyEnumSerializer(
      'InterfaceProtocolType',
      values: values,
      sdkUnknown: InterfaceProtocolType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension InterfaceProtocolTypeHelpers on List<InterfaceProtocolType> {
  /// Returns the value of [InterfaceProtocolType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  InterfaceProtocolType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [InterfaceProtocolType] whose value matches [value].
  InterfaceProtocolType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
