// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fpga_image_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/load_permission.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i3;

part 'fpga_image_attribute.g.dart';

/// Describes an Amazon FPGA image (AFI) attribute.
abstract class FpgaImageAttribute
    with _i1.AWSEquatable<FpgaImageAttribute>
    implements Built<FpgaImageAttribute, FpgaImageAttributeBuilder> {
  /// Describes an Amazon FPGA image (AFI) attribute.
  factory FpgaImageAttribute({
    String? fpgaImageId,
    String? name,
    String? description,
    List<_i2.LoadPermission>? loadPermissions,
    List<_i3.ProductCode>? productCodes,
  }) {
    return _$FpgaImageAttribute._(
      fpgaImageId: fpgaImageId,
      name: name,
      description: description,
      loadPermissions:
          loadPermissions == null ? null : _i4.BuiltList(loadPermissions),
      productCodes: productCodes == null ? null : _i4.BuiltList(productCodes),
    );
  }

  /// Describes an Amazon FPGA image (AFI) attribute.
  factory FpgaImageAttribute.build(
          [void Function(FpgaImageAttributeBuilder) updates]) =
      _$FpgaImageAttribute;

  const FpgaImageAttribute._();

  static const List<_i5.SmithySerializer> serializers = [
    FpgaImageAttributeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FpgaImageAttributeBuilder b) {}

  /// The ID of the AFI.
  String? get fpgaImageId;

  /// The name of the AFI.
  String? get name;

  /// The description of the AFI.
  String? get description;

  /// The load permissions.
  _i4.BuiltList<_i2.LoadPermission>? get loadPermissions;

  /// The product codes.
  _i4.BuiltList<_i3.ProductCode>? get productCodes;
  @override
  List<Object?> get props => [
        fpgaImageId,
        name,
        description,
        loadPermissions,
        productCodes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaImageAttribute');
    helper.add(
      'fpgaImageId',
      fpgaImageId,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'loadPermissions',
      loadPermissions,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    return helper.toString();
  }
}

class FpgaImageAttributeEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<FpgaImageAttribute> {
  const FpgaImageAttributeEc2QuerySerializer() : super('FpgaImageAttribute');

  @override
  Iterable<Type> get types => const [
        FpgaImageAttribute,
        _$FpgaImageAttribute,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaImageAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaImageAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fpgaImageId':
          if (value != null) {
            result.fpgaImageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'loadPermissions':
          if (value != null) {
            result.loadPermissions.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.LoadPermission)],
              ),
            ) as _i4.BuiltList<_i2.LoadPermission>));
          }
          break;
        case 'productCodes':
          if (value != null) {
            result.productCodes.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ProductCode)],
              ),
            ) as _i4.BuiltList<_i3.ProductCode>));
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
    final payload = (object as FpgaImageAttribute);
    final result = <Object?>[
      const _i5.XmlElementName(
        'FpgaImageAttributeResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fpgaImageId != null) {
      result
        ..add(const _i5.XmlElementName('FpgaImageId'))
        ..add(serializers.serialize(
          payload.fpgaImageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i5.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.loadPermissions != null) {
      result
        ..add(const _i5.XmlElementName('LoadPermissions'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.loadPermissions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.LoadPermission)],
          ),
        ));
    }
    if (payload.productCodes != null) {
      result
        ..add(const _i5.XmlElementName('ProductCodes'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.productCodes!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ProductCode)],
          ),
        ));
    }
    return result;
  }
}
