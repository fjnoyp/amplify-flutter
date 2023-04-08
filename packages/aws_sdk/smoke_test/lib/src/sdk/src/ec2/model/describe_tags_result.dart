// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_tags_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_description.dart' as _i2;

part 'describe_tags_result.g.dart';

abstract class DescribeTagsResult
    with _i1.AWSEquatable<DescribeTagsResult>
    implements Built<DescribeTagsResult, DescribeTagsResultBuilder> {
  factory DescribeTagsResult({
    String? nextToken,
    List<_i2.TagDescription>? tags,
  }) {
    return _$DescribeTagsResult._(
      nextToken: nextToken,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory DescribeTagsResult.build(
          [void Function(DescribeTagsResultBuilder) updates]) =
      _$DescribeTagsResult;

  const DescribeTagsResult._();

  /// Constructs a [DescribeTagsResult] from a [payload] and [response].
  factory DescribeTagsResult.fromResponse(
    DescribeTagsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTagsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTagsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The tags.
  _i3.BuiltList<_i2.TagDescription>? get tags;
  @override
  List<Object?> get props => [
        nextToken,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTagsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class DescribeTagsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeTagsResult> {
  const DescribeTagsResultEc2QuerySerializer() : super('DescribeTagsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTagsResult,
        _$DescribeTagsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTagsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTagsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TagDescription)],
              ),
            ) as _i3.BuiltList<_i2.TagDescription>));
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
    final payload = (object as DescribeTagsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTagsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TagDescription)],
          ),
        ));
    }
    return result;
  }
}
