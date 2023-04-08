// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_import_image_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_import_image_tasks_request.g.dart';

abstract class DescribeImportImageTasksRequest
    with
        _i1.HttpInput<DescribeImportImageTasksRequest>,
        _i2.AWSEquatable<DescribeImportImageTasksRequest>
    implements
        Built<DescribeImportImageTasksRequest,
            DescribeImportImageTasksRequestBuilder> {
  factory DescribeImportImageTasksRequest({
    bool? dryRun,
    List<_i3.Filter>? filters,
    List<String>? importTaskIds,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeImportImageTasksRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i4.BuiltList(filters),
      importTaskIds:
          importTaskIds == null ? null : _i4.BuiltList(importTaskIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeImportImageTasksRequest.build(
          [void Function(DescribeImportImageTasksRequestBuilder) updates]) =
      _$DescribeImportImageTasksRequest;

  const DescribeImportImageTasksRequest._();

  factory DescribeImportImageTasksRequest.fromRequest(
    DescribeImportImageTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeImportImageTasksRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImportImageTasksRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Filter tasks using the `task-state` filter and one of the following values: `active`, `completed`, `deleting`, or `deleted`.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The IDs of the import image tasks.
  _i4.BuiltList<String>? get importTaskIds;

  /// The maximum number of results to return in a single call.
  int get maxResults;

  /// A token that indicates the next page of results.
  String? get nextToken;
  @override
  DescribeImportImageTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        importTaskIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeImportImageTasksRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'importTaskIds',
      importTaskIds,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeImportImageTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeImportImageTasksRequest> {
  const DescribeImportImageTasksRequestEc2QuerySerializer()
      : super('DescribeImportImageTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeImportImageTasksRequest,
        _$DescribeImportImageTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImportImageTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImportImageTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Filters':
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
        case 'ImportTaskId':
          if (value != null) {
            result.importTaskIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ImportTaskId',
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
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'NextToken':
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
    final payload = (object as DescribeImportImageTasksRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeImportImageTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filters'))
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
    if (payload.importTaskIds != null) {
      result
        ..add(const _i1.XmlElementName('ImportTaskId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ImportTaskId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.importTaskIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
