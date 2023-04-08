// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_tags_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'create_tags_request.g.dart';

abstract class CreateTagsRequest
    with _i1.HttpInput<CreateTagsRequest>, _i2.AWSEquatable<CreateTagsRequest>
    implements Built<CreateTagsRequest, CreateTagsRequestBuilder> {
  factory CreateTagsRequest({
    bool? dryRun,
    required List<String> resources,
    required List<_i3.Tag> tags,
  }) {
    dryRun ??= false;
    return _$CreateTagsRequest._(
      dryRun: dryRun,
      resources: _i4.BuiltList(resources),
      tags: _i4.BuiltList(tags),
    );
  }

  factory CreateTagsRequest.build(
      [void Function(CreateTagsRequestBuilder) updates]) = _$CreateTagsRequest;

  const CreateTagsRequest._();

  factory CreateTagsRequest.fromRequest(
    CreateTagsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateTagsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTagsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the resources, separated by spaces.
  ///
  /// Constraints: Up to 1000 resource IDs. We recommend breaking up this request into smaller batches.
  _i4.BuiltList<String> get resources;

  /// The tags. The `value` parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string.
  _i4.BuiltList<_i3.Tag> get tags;
  @override
  CreateTagsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        resources,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateTagsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'resources',
      resources,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CreateTagsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTagsRequest> {
  const CreateTagsRequestEc2QuerySerializer() : super('CreateTagsRequest');

  @override
  Iterable<Type> get types => const [
        CreateTagsRequest,
        _$CreateTagsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTagsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTagsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ResourceId':
          result.resources.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
          break;
        case 'Tag':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as CreateTagsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateTagsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('ResourceId'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.ec2QueryList)
              .serialize(
        serializers,
        payload.resources,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(String)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('Tag'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.tags,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.Tag)],
        ),
      ));
    return result;
  }
}
