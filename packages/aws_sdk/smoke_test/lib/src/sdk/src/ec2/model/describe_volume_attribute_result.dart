// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_volume_attribute_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i3;

part 'describe_volume_attribute_result.g.dart';

abstract class DescribeVolumeAttributeResult
    with
        _i1.AWSEquatable<DescribeVolumeAttributeResult>
    implements
        Built<DescribeVolumeAttributeResult,
            DescribeVolumeAttributeResultBuilder> {
  factory DescribeVolumeAttributeResult({
    _i2.AttributeBooleanValue? autoEnableIo,
    List<_i3.ProductCode>? productCodes,
    String? volumeId,
  }) {
    return _$DescribeVolumeAttributeResult._(
      autoEnableIo: autoEnableIo,
      productCodes: productCodes == null ? null : _i4.BuiltList(productCodes),
      volumeId: volumeId,
    );
  }

  factory DescribeVolumeAttributeResult.build(
          [void Function(DescribeVolumeAttributeResultBuilder) updates]) =
      _$DescribeVolumeAttributeResult;

  const DescribeVolumeAttributeResult._();

  /// Constructs a [DescribeVolumeAttributeResult] from a [payload] and [response].
  factory DescribeVolumeAttributeResult.fromResponse(
    DescribeVolumeAttributeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    DescribeVolumeAttributeResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumeAttributeResultBuilder b) {}

  /// The state of `autoEnableIO` attribute.
  _i2.AttributeBooleanValue? get autoEnableIo;

  /// A list of product codes.
  _i4.BuiltList<_i3.ProductCode>? get productCodes;

  /// The ID of the volume.
  String? get volumeId;
  @override
  List<Object?> get props => [
        autoEnableIo,
        productCodes,
        volumeId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumeAttributeResult');
    helper.add(
      'autoEnableIo',
      autoEnableIo,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    return helper.toString();
  }
}

class DescribeVolumeAttributeResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<DescribeVolumeAttributeResult> {
  const DescribeVolumeAttributeResultEc2QuerySerializer()
      : super('DescribeVolumeAttributeResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumeAttributeResult,
        _$DescribeVolumeAttributeResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumeAttributeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumeAttributeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'autoEnableIO':
          if (value != null) {
            result.autoEnableIo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttributeBooleanValue),
            ) as _i2.AttributeBooleanValue));
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
        case 'volumeId':
          if (value != null) {
            result.volumeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeVolumeAttributeResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DescribeVolumeAttributeResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.autoEnableIo != null) {
      result
        ..add(const _i5.XmlElementName('AutoEnableIO'))
        ..add(serializers.serialize(
          payload.autoEnableIo!,
          specifiedType: const FullType(_i2.AttributeBooleanValue),
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
    if (payload.volumeId != null) {
      result
        ..add(const _i5.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          payload.volumeId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
