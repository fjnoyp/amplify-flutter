// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fast_launch_images_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_launch_images_success_item.dart'
    as _i2;

part 'describe_fast_launch_images_result.g.dart';

abstract class DescribeFastLaunchImagesResult
    with
        _i1.AWSEquatable<DescribeFastLaunchImagesResult>
    implements
        Built<DescribeFastLaunchImagesResult,
            DescribeFastLaunchImagesResultBuilder> {
  factory DescribeFastLaunchImagesResult({
    List<_i2.DescribeFastLaunchImagesSuccessItem>? fastLaunchImages,
    String? nextToken,
  }) {
    return _$DescribeFastLaunchImagesResult._(
      fastLaunchImages:
          fastLaunchImages == null ? null : _i3.BuiltList(fastLaunchImages),
      nextToken: nextToken,
    );
  }

  factory DescribeFastLaunchImagesResult.build(
          [void Function(DescribeFastLaunchImagesResultBuilder) updates]) =
      _$DescribeFastLaunchImagesResult;

  const DescribeFastLaunchImagesResult._();

  /// Constructs a [DescribeFastLaunchImagesResult] from a [payload] and [response].
  factory DescribeFastLaunchImagesResult.fromResponse(
    DescribeFastLaunchImagesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeFastLaunchImagesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFastLaunchImagesResultBuilder b) {}

  /// A collection of details about the fast-launch enabled Windows images that meet the requested criteria.
  _i3.BuiltList<_i2.DescribeFastLaunchImagesSuccessItem>? get fastLaunchImages;

  /// The token to use for the next set of results. This value is null when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        fastLaunchImages,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFastLaunchImagesResult');
    helper.add(
      'fastLaunchImages',
      fastLaunchImages,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeFastLaunchImagesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeFastLaunchImagesResult> {
  const DescribeFastLaunchImagesResultEc2QuerySerializer()
      : super('DescribeFastLaunchImagesResult');

  @override
  Iterable<Type> get types => const [
        DescribeFastLaunchImagesResult,
        _$DescribeFastLaunchImagesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastLaunchImagesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastLaunchImagesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fastLaunchImageSet':
          if (value != null) {
            result.fastLaunchImages.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.DescribeFastLaunchImagesSuccessItem)],
              ),
            ) as _i3.BuiltList<_i2.DescribeFastLaunchImagesSuccessItem>));
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
    final payload = (object as DescribeFastLaunchImagesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeFastLaunchImagesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fastLaunchImages != null) {
      result
        ..add(const _i4.XmlElementName('FastLaunchImageSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fastLaunchImages!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.DescribeFastLaunchImagesSuccessItem)],
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
