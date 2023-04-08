// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_export_image_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/export_image_task.dart' as _i2;

part 'describe_export_image_tasks_result.g.dart';

abstract class DescribeExportImageTasksResult
    with
        _i1.AWSEquatable<DescribeExportImageTasksResult>
    implements
        Built<DescribeExportImageTasksResult,
            DescribeExportImageTasksResultBuilder> {
  factory DescribeExportImageTasksResult({
    List<_i2.ExportImageTask>? exportImageTasks,
    String? nextToken,
  }) {
    return _$DescribeExportImageTasksResult._(
      exportImageTasks:
          exportImageTasks == null ? null : _i3.BuiltList(exportImageTasks),
      nextToken: nextToken,
    );
  }

  factory DescribeExportImageTasksResult.build(
          [void Function(DescribeExportImageTasksResultBuilder) updates]) =
      _$DescribeExportImageTasksResult;

  const DescribeExportImageTasksResult._();

  /// Constructs a [DescribeExportImageTasksResult] from a [payload] and [response].
  factory DescribeExportImageTasksResult.fromResponse(
    DescribeExportImageTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeExportImageTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeExportImageTasksResultBuilder b) {}

  /// Information about the export image tasks.
  _i3.BuiltList<_i2.ExportImageTask>? get exportImageTasks;

  /// The token to use to get the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        exportImageTasks,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeExportImageTasksResult');
    helper.add(
      'exportImageTasks',
      exportImageTasks,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeExportImageTasksResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeExportImageTasksResult> {
  const DescribeExportImageTasksResultEc2QuerySerializer()
      : super('DescribeExportImageTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeExportImageTasksResult,
        _$DescribeExportImageTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeExportImageTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportImageTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'exportImageTaskSet':
          if (value != null) {
            result.exportImageTasks.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ExportImageTask)],
              ),
            ) as _i3.BuiltList<_i2.ExportImageTask>));
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
    final payload = (object as DescribeExportImageTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeExportImageTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.exportImageTasks != null) {
      result
        ..add(const _i4.XmlElementName('ExportImageTaskSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.exportImageTasks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ExportImageTask)],
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
