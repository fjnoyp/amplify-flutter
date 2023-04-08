// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.host_tenancy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HostTenancy extends _i1.SmithyEnum<HostTenancy> {
  const HostTenancy._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HostTenancy._sdkUnknown(String value) : super.sdkUnknown(value);

  static const dedicated = HostTenancy._(
    0,
    'dedicated',
    'dedicated',
  );

  static const host = HostTenancy._(
    1,
    'host',
    'host',
  );

  /// All values of [HostTenancy].
  static const values = <HostTenancy>[
    HostTenancy.dedicated,
    HostTenancy.host,
  ];

  static const List<_i1.SmithySerializer<HostTenancy>> serializers = [
    _i1.SmithyEnumSerializer(
      'HostTenancy',
      values: values,
      sdkUnknown: HostTenancy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension HostTenancyHelpers on List<HostTenancy> {
  /// Returns the value of [HostTenancy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HostTenancy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HostTenancy] whose value matches [value].
  HostTenancy byValue(String value) => firstWhere((el) => el.value == value);
}
