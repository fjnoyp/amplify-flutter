// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_export_image_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_export_image_tasks_request.g.dart';

abstract class DescribeExportImageTasksRequest
    with
        _i1.HttpInput<DescribeExportImageTasksRequest>,
        _i2.AWSEquatable<DescribeExportImageTasksRequest>
    implements
        Built<DescribeExportImageTasksRequest,
            DescribeExportImageTasksRequestBuilder> {
  factory DescribeExportImageTasksRequest({
    bool? dryRun,
    List<_i3.Filter>? filters,
    List<String>? exportImageTaskIds,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeExportImageTasksRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i4.BuiltList(filters),
      exportImageTaskIds:
          exportImageTaskIds == null ? null : _i4.BuiltList(exportImageTaskIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeExportImageTasksRequest.build(
          [void Function(DescribeExportImageTasksRequestBuilder) updates]) =
      _$DescribeExportImageTasksRequest;

  const DescribeExportImageTasksRequest._();

  factory DescribeExportImageTasksRequest.fromRequest(
    DescribeExportImageTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeExportImageTasksRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeExportImageTasksRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Filter tasks using the `task-state` filter and one of the following values: `active`, `completed`, `deleting`, or `deleted`.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The IDs of the export image tasks.
  _i4.BuiltList<String>? get exportImageTaskIds;

  /// The maximum number of results to return in a single call.
  int get maxResults;

  /// A token that indicates the next page of results.
  String? get nextToken;
  @override
  DescribeExportImageTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        exportImageTaskIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeExportImageTasksRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'exportImageTaskIds',
      exportImageTaskIds,
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

class DescribeExportImageTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeExportImageTasksRequest> {
  const DescribeExportImageTasksRequestEc2QuerySerializer()
      : super('DescribeExportImageTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeExportImageTasksRequest,
        _$DescribeExportImageTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeExportImageTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportImageTasksRequestBuilder();
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
        case 'ExportImageTaskId':
          if (value != null) {
            result.exportImageTaskIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ExportImageTaskId',
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
    final payload = (object as DescribeExportImageTasksRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeExportImageTasksRequestResponse',
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
    if (payload.exportImageTaskIds != null) {
      result
        ..add(const _i1.XmlElementName('ExportImageTaskId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ExportImageTaskId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.exportImageTaskIds!,
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
