// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.account_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AccountAttributeName extends _i1.SmithyEnum<AccountAttributeName> {
  const AccountAttributeName._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const AccountAttributeName._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const defaultVpc = AccountAttributeName._(
    0,
    'default_vpc',
    'default-vpc',
  );

  static const supportedPlatforms = AccountAttributeName._(
    1,
    'supported_platforms',
    'supported-platforms',
  );

  /// All values of [AccountAttributeName].
  static const values = <AccountAttributeName>[
    AccountAttributeName.defaultVpc,
    AccountAttributeName.supportedPlatforms,
  ];

  static const List<_i1.SmithySerializer<AccountAttributeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'AccountAttributeName',
      values: values,
      sdkUnknown: AccountAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AccountAttributeNameHelpers on List<AccountAttributeName> {
  /// Returns the value of [AccountAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AccountAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AccountAttributeName] whose value matches [value].
  AccountAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
