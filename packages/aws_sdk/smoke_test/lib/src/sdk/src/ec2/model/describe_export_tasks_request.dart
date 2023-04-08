// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_export_tasks_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_export_tasks_request.g.dart';

abstract class DescribeExportTasksRequest
    with
        _i1.HttpInput<DescribeExportTasksRequest>,
        _i2.AWSEquatable<DescribeExportTasksRequest>
    implements
        Built<DescribeExportTasksRequest, DescribeExportTasksRequestBuilder> {
  factory DescribeExportTasksRequest({
    List<String>? exportTaskIds,
    List<_i3.Filter>? filters,
  }) {
    return _$DescribeExportTasksRequest._(
      exportTaskIds:
          exportTaskIds == null ? null : _i4.BuiltList(exportTaskIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
    );
  }

  factory DescribeExportTasksRequest.build(
          [void Function(DescribeExportTasksRequestBuilder) updates]) =
      _$DescribeExportTasksRequest;

  const DescribeExportTasksRequest._();

  factory DescribeExportTasksRequest.fromRequest(
    DescribeExportTasksRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeExportTasksRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeExportTasksRequestBuilder b) {}

  /// The export task IDs.
  _i4.BuiltList<String>? get exportTaskIds;

  /// the filters for the export tasks.
  _i4.BuiltList<_i3.Filter>? get filters;
  @override
  DescribeExportTasksRequest getPayload() => this;
  @override
  List<Object?> get props => [
        exportTaskIds,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeExportTasksRequest');
    helper.add(
      'exportTaskIds',
      exportTaskIds,
    );
    helper.add(
      'filters',
      filters,
    );
    return helper.toString();
  }
}

class DescribeExportTasksRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeExportTasksRequest> {
  const DescribeExportTasksRequestEc2QuerySerializer()
      : super('DescribeExportTasksRequest');

  @override
  Iterable<Type> get types => const [
        DescribeExportTasksRequest,
        _$DescribeExportTasksRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeExportTasksRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportTasksRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'exportTaskId':
          if (value != null) {
            result.exportTaskIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ExportTaskId',
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
    final payload = (object as DescribeExportTasksRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeExportTasksRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.exportTaskIds != null) {
      result
        ..add(const _i1.XmlElementName('ExportTaskId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ExportTaskId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.exportTaskIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
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
    return result;
  }
}
