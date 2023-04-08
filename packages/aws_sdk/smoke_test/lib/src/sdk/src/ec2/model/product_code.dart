// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.product_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code_values.dart'
    as _i2;

part 'product_code.g.dart';

/// Describes a product code.
abstract class ProductCode
    with _i1.AWSEquatable<ProductCode>
    implements Built<ProductCode, ProductCodeBuilder> {
  /// Describes a product code.
  factory ProductCode({
    String? productCodeId,
    _i2.ProductCodeValues? productCodeType,
  }) {
    return _$ProductCode._(
      productCodeId: productCodeId,
      productCodeType: productCodeType,
    );
  }

  /// Describes a product code.
  factory ProductCode.build([void Function(ProductCodeBuilder) updates]) =
      _$ProductCode;

  const ProductCode._();

  static const List<_i3.SmithySerializer> serializers = [
    ProductCodeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProductCodeBuilder b) {}

  /// The product code.
  String? get productCodeId;

  /// The type of product code.
  _i2.ProductCodeValues? get productCodeType;
  @override
  List<Object?> get props => [
        productCodeId,
        productCodeType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProductCode');
    helper.add(
      'productCodeId',
      productCodeId,
    );
    helper.add(
      'productCodeType',
      productCodeType,
    );
    return helper.toString();
  }
}

class ProductCodeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ProductCode> {
  const ProductCodeEc2QuerySerializer() : super('ProductCode');

  @override
  Iterable<Type> get types => const [
        ProductCode,
        _$ProductCode,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProductCode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductCodeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'productCode':
          if (value != null) {
            result.productCodeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.productCodeType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ProductCodeValues),
            ) as _i2.ProductCodeValues);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ProductCode);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ProductCodeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.productCodeId != null) {
      result
        ..add(const _i3.XmlElementName('ProductCode'))
        ..add(serializers.serialize(
          payload.productCodeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.productCodeType != null) {
      result
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.productCodeType!,
          specifiedType: const FullType.nullable(_i2.ProductCodeValues),
        ));
    }
    return result;
  }
}
