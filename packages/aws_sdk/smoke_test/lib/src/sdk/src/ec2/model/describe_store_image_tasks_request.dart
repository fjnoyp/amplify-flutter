// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_store_image_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_store_image_tasks_request.g.dart';

abstract class DescribeStoreImageTasksRequest
    with
        _i1.HttpInput<DescribeStoreImageTasksRequest>,
        _i2.AWSEquatable<DescribeStoreImageTasksRequest>
    implements
        Built<DescribeStoreImageTasksRequest,
            DescribeStoreImageTasksRequestBuilder> {
  factory DescribeStoreImageTasksRequest({
    List<String>? imageIds,
    bool? dryRun,
    List<_i3.Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeStoreImageTasksRequest._(
      imageIds: imageIds == null ? null : _i4.BuiltList(imageIds),
      dryRun: dryRun,
      filters: filters == null ? null : _i4.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeStoreImageTasksRequest.build(
          [void Function(DescribeStoreImageTasksRequestBuilder) updates]) =
      _$DescribeStoreImageTasksRequest;

  const DescribeStoreImageTasksRequest._();

  factory DescribeStoreImageTasksRequest.fromRequest(
    DescribeStoreImageTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeStoreImageTasksRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStoreImageTasksRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// The AMI IDs for which to show progress. Up to 20 AMI IDs can be included in a request.
  _i4.BuiltList<String>? get imageIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `task-state` \- Returns tasks in a certain state (`InProgress` | `Completed` | `Failed`)
  ///
  /// *   `bucket` \- Returns task information for tasks that targeted a specific bucket. For the filter value, specify the bucket name.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 1 and 200. You cannot specify this parameter and the `ImageIDs` parameter in the same call.
  int get maxResults;
  @override
  DescribeStoreImageTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageIds,
        dryRun,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStoreImageTasksRequest');
    helper.add(
      'imageIds',
      imageIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class DescribeStoreImageTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStoreImageTasksRequest> {
  const DescribeStoreImageTasksRequestEc2QuerySerializer()
      : super('DescribeStoreImageTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeStoreImageTasksRequest,
        _$DescribeStoreImageTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeStoreImageTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStoreImageTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ImageId':
          if (value != null) {
            result.imageIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
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
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as DescribeStoreImageTasksRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeStoreImageTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.imageIds != null) {
      result
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.imageIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
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
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
