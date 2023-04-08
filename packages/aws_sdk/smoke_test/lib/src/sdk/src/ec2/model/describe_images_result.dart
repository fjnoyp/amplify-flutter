// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_images_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/image.dart' as _i2;

part 'describe_images_result.g.dart';

abstract class DescribeImagesResult
    with _i1.AWSEquatable<DescribeImagesResult>
    implements Built<DescribeImagesResult, DescribeImagesResultBuilder> {
  factory DescribeImagesResult({List<_i2.Image>? images}) {
    return _$DescribeImagesResult._(
        images: images == null ? null : _i3.BuiltList(images));
  }

  factory DescribeImagesResult.build(
          [void Function(DescribeImagesResultBuilder) updates]) =
      _$DescribeImagesResult;

  const DescribeImagesResult._();

  /// Constructs a [DescribeImagesResult] from a [payload] and [response].
  factory DescribeImagesResult.fromResponse(
    DescribeImagesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeImagesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImagesResultBuilder b) {}

  /// Information about the images.
  _i3.BuiltList<_i2.Image>? get images;
  @override
  List<Object?> get props => [images];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeImagesResult');
    helper.add(
      'images',
      images,
    );
    return helper.toString();
  }
}

class DescribeImagesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeImagesResult> {
  const DescribeImagesResultEc2QuerySerializer()
      : super('DescribeImagesResult');

  @override
  Iterable<Type> get types => const [
        DescribeImagesResult,
        _$DescribeImagesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImagesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImagesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'imagesSet':
          if (value != null) {
            result.images.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Image)],
              ),
            ) as _i3.BuiltList<_i2.Image>));
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
    final payload = (object as DescribeImagesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeImagesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.images != null) {
      result
        ..add(const _i4.XmlElementName('ImagesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.images!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Image)],
          ),
        ));
    }
    return result;
  }
}
