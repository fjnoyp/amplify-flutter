// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpcAttributeName extends _i1.SmithyEnum<VpcAttributeName> {
  const VpcAttributeName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const VpcAttributeName._sdkUnknown(String value) : super.sdkUnknown(value);

  static const enableDnsHostnames = VpcAttributeName._(
    0,
    'enableDnsHostnames',
    'enableDnsHostnames',
  );

  static const enableDnsSupport = VpcAttributeName._(
    1,
    'enableDnsSupport',
    'enableDnsSupport',
  );

  static const enableNetworkAddressUsageMetrics = VpcAttributeName._(
    2,
    'enableNetworkAddressUsageMetrics',
    'enableNetworkAddressUsageMetrics',
  );

  /// All values of [VpcAttributeName].
  static const values = <VpcAttributeName>[
    VpcAttributeName.enableDnsHostnames,
    VpcAttributeName.enableDnsSupport,
    VpcAttributeName.enableNetworkAddressUsageMetrics,
  ];

  static const List<_i1.SmithySerializer<VpcAttributeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpcAttributeName',
      values: values,
      sdkUnknown: VpcAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpcAttributeNameHelpers on List<VpcAttributeName> {
  /// Returns the value of [VpcAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpcAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpcAttributeName] whose value matches [value].
  VpcAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
