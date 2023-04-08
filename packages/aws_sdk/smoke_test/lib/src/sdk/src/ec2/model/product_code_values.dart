// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.product_code_values; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ProductCodeValues extends _i1.SmithyEnum<ProductCodeValues> {
  const ProductCodeValues._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ProductCodeValues._sdkUnknown(String value) : super.sdkUnknown(value);

  static const devpay = ProductCodeValues._(
    0,
    'devpay',
    'devpay',
  );

  static const marketplace = ProductCodeValues._(
    1,
    'marketplace',
    'marketplace',
  );

  /// All values of [ProductCodeValues].
  static const values = <ProductCodeValues>[
    ProductCodeValues.devpay,
    ProductCodeValues.marketplace,
  ];

  static const List<_i1.SmithySerializer<ProductCodeValues>> serializers = [
    _i1.SmithyEnumSerializer(
      'ProductCodeValues',
      values: values,
      sdkUnknown: ProductCodeValues._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ProductCodeValuesHelpers on List<ProductCodeValues> {
  /// Returns the value of [ProductCodeValues] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ProductCodeValues byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ProductCodeValues] whose value matches [value].
  ProductCodeValues byValue(String value) =>
      firstWhere((el) => el.value == value);
}
