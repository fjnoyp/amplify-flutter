// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.payment_option; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PaymentOption extends _i1.SmithyEnum<PaymentOption> {
  const PaymentOption._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PaymentOption._sdkUnknown(String value) : super.sdkUnknown(value);

  static const allUpfront = PaymentOption._(
    0,
    'ALL_UPFRONT',
    'AllUpfront',
  );

  static const noUpfront = PaymentOption._(
    1,
    'NO_UPFRONT',
    'NoUpfront',
  );

  static const partialUpfront = PaymentOption._(
    2,
    'PARTIAL_UPFRONT',
    'PartialUpfront',
  );

  /// All values of [PaymentOption].
  static const values = <PaymentOption>[
    PaymentOption.allUpfront,
    PaymentOption.noUpfront,
    PaymentOption.partialUpfront,
  ];

  static const List<_i1.SmithySerializer<PaymentOption>> serializers = [
    _i1.SmithyEnumSerializer(
      'PaymentOption',
      values: values,
      sdkUnknown: PaymentOption._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PaymentOptionHelpers on List<PaymentOption> {
  /// Returns the value of [PaymentOption] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PaymentOption byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PaymentOption] whose value matches [value].
  PaymentOption byValue(String value) => firstWhere((el) => el.value == value);
}
