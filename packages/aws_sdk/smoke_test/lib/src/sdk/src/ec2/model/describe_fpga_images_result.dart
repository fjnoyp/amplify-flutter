// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fpga_images_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_image.dart' as _i2;

part 'describe_fpga_images_result.g.dart';

abstract class DescribeFpgaImagesResult
    with _i1.AWSEquatable<DescribeFpgaImagesResult>
    implements
        Built<DescribeFpgaImagesResult, DescribeFpgaImagesResultBuilder> {
  factory DescribeFpgaImagesResult({
    List<_i2.FpgaImage>? fpgaImages,
    String? nextToken,
  }) {
    return _$DescribeFpgaImagesResult._(
      fpgaImages: fpgaImages == null ? null : _i3.BuiltList(fpgaImages),
      nextToken: nextToken,
    );
  }

  factory DescribeFpgaImagesResult.build(
          [void Function(DescribeFpgaImagesResultBuilder) updates]) =
      _$DescribeFpgaImagesResult;

  const DescribeFpgaImagesResult._();

  /// Constructs a [DescribeFpgaImagesResult] from a [payload] and [response].
  factory DescribeFpgaImagesResult.fromResponse(
    DescribeFpgaImagesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeFpgaImagesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFpgaImagesResultBuilder b) {}

  /// Information about the FPGA images.
  _i3.BuiltList<_i2.FpgaImage>? get fpgaImages;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        fpgaImages,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFpgaImagesResult');
    helper.add(
      'fpgaImages',
      fpgaImages,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeFpgaImagesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeFpgaImagesResult> {
  const DescribeFpgaImagesResultEc2QuerySerializer()
      : super('DescribeFpgaImagesResult');

  @override
  Iterable<Type> get types => const [
        DescribeFpgaImagesResult,
        _$DescribeFpgaImagesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFpgaImagesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFpgaImagesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fpgaImageSet':
          if (value != null) {
            result.fpgaImages.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.FpgaImage)],
              ),
            ) as _i3.BuiltList<_i2.FpgaImage>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeFpgaImagesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeFpgaImagesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fpgaImages != null) {
      result
        ..add(const _i4.XmlElementName('FpgaImageSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fpgaImages!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.FpgaImage)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
