// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.list_images_in_recycle_bin_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'list_images_in_recycle_bin_request.g.dart';

abstract class ListImagesInRecycleBinRequest
    with
        _i1.HttpInput<ListImagesInRecycleBinRequest>,
        _i2.AWSEquatable<ListImagesInRecycleBinRequest>
    implements
        Built<ListImagesInRecycleBinRequest,
            ListImagesInRecycleBinRequestBuilder> {
  factory ListImagesInRecycleBinRequest({
    List<String>? imageIds,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ListImagesInRecycleBinRequest._(
      imageIds: imageIds == null ? null : _i3.BuiltList(imageIds),
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory ListImagesInRecycleBinRequest.build(
          [void Function(ListImagesInRecycleBinRequestBuilder) updates]) =
      _$ListImagesInRecycleBinRequest;

  const ListImagesInRecycleBinRequest._();

  factory ListImagesInRecycleBinRequest.fromRequest(
    ListImagesInRecycleBinRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ListImagesInRecycleBinRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListImagesInRecycleBinRequestBuilder b) {
    b.dryRun = false;
  }

  /// The IDs of the AMIs to list. Omit this parameter to list all of the AMIs that are in the Recycle Bin. You can specify up to 20 IDs in a single request.
  _i3.BuiltList<String>? get imageIds;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  ///
  /// If you do not specify a value for _MaxResults_, the request returns 1,000 items per page by default. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int? get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ListImagesInRecycleBinRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageIds,
        nextToken,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListImagesInRecycleBinRequest');
    helper.add(
      'imageIds',
      imageIds,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ListImagesInRecycleBinRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ListImagesInRecycleBinRequest> {
  const ListImagesInRecycleBinRequestEc2QuerySerializer()
      : super('ListImagesInRecycleBinRequest');

  @override
  Iterable<Type> get types => const [
        ListImagesInRecycleBinRequest,
        _$ListImagesInRecycleBinRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ListImagesInRecycleBinRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListImagesInRecycleBinRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ImageId':
          if (value != null) {
            result.imageIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ImageId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as ListImagesInRecycleBinRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ListImagesInRecycleBinRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.imageIds != null) {
      result
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ImageId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.imageIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxResults != null) {
      result
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
