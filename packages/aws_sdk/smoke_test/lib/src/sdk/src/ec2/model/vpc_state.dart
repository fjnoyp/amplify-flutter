// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpcState extends _i1.SmithyEnum<VpcState> {
  const VpcState._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const VpcState._sdkUnknown(String value) : super.sdkUnknown(value);

  static const available = VpcState._(
    0,
    'available',
    'available',
  );

  static const pending = VpcState._(
    1,
    'pending',
    'pending',
  );

  /// All values of [VpcState].
  static const values = <VpcState>[
    VpcState.available,
    VpcState.pending,
  ];

  static const List<_i1.SmithySerializer<VpcState>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpcState',
      values: values,
      sdkUnknown: VpcState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpcStateHelpers on List<VpcState> {
  /// Returns the value of [VpcState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpcState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpcState] whose value matches [value].
  VpcState byValue(String value) => firstWhere((el) => el.value == value);
}
