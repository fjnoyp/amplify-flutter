// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_export_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task.dart' as _i2;

part 'describe_export_tasks_result.g.dart';

abstract class DescribeExportTasksResult
    with _i1.AWSEquatable<DescribeExportTasksResult>
    implements
        Built<DescribeExportTasksResult, DescribeExportTasksResultBuilder> {
  factory DescribeExportTasksResult({List<_i2.ExportTask>? exportTasks}) {
    return _$DescribeExportTasksResult._(
        exportTasks: exportTasks == null ? null : _i3.BuiltList(exportTasks));
  }

  factory DescribeExportTasksResult.build(
          [void Function(DescribeExportTasksResultBuilder) updates]) =
      _$DescribeExportTasksResult;

  const DescribeExportTasksResult._();

  /// Constructs a [DescribeExportTasksResult] from a [payload] and [response].
  factory DescribeExportTasksResult.fromResponse(
    DescribeExportTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeExportTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeExportTasksResultBuilder b) {}

  /// Information about the export tasks.
  _i3.BuiltList<_i2.ExportTask>? get exportTasks;
  @override
  List<Object?> get props => [exportTasks];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeExportTasksResult');
    helper.add(
      'exportTasks',
      exportTasks,
    );
    return helper.toString();
  }
}

class DescribeExportTasksResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeExportTasksResult> {
  const DescribeExportTasksResultEc2QuerySerializer()
      : super('DescribeExportTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeExportTasksResult,
        _$DescribeExportTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeExportTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeExportTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'exportTaskSet':
          if (value != null) {
            result.exportTasks.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ExportTask)],
              ),
            ) as _i3.BuiltList<_i2.ExportTask>));
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
    final payload = (object as DescribeExportTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeExportTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.exportTasks != null) {
      result
        ..add(const _i4.XmlElementName('ExportTaskSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.exportTasks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ExportTask)],
          ),
        ));
    }
    return result;
  }
}
