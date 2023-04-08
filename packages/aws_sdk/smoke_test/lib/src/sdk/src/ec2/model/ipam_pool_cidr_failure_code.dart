// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipam_pool_cidr_failure_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class IpamPoolCidrFailureCode extends _i1.SmithyEnum<IpamPoolCidrFailureCode> {
  const IpamPoolCidrFailureCode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const IpamPoolCidrFailureCode._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const cidrNotAvailable = IpamPoolCidrFailureCode._(
    0,
    'cidr_not_available',
    'cidr-not-available',
  );

  /// All values of [IpamPoolCidrFailureCode].
  static const values = <IpamPoolCidrFailureCode>[
    IpamPoolCidrFailureCode.cidrNotAvailable
  ];

  static const List<_i1.SmithySerializer<IpamPoolCidrFailureCode>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'IpamPoolCidrFailureCode',
      values: values,
      sdkUnknown: IpamPoolCidrFailureCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension IpamPoolCidrFailureCodeHelpers on List<IpamPoolCidrFailureCode> {
  /// Returns the value of [IpamPoolCidrFailureCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  IpamPoolCidrFailureCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [IpamPoolCidrFailureCode] whose value matches [value].
  IpamPoolCidrFailureCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
