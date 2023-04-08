// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_import_snapshot_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/import_snapshot_task.dart'
    as _i2;

part 'describe_import_snapshot_tasks_result.g.dart';

abstract class DescribeImportSnapshotTasksResult
    with
        _i1.AWSEquatable<DescribeImportSnapshotTasksResult>
    implements
        Built<DescribeImportSnapshotTasksResult,
            DescribeImportSnapshotTasksResultBuilder> {
  factory DescribeImportSnapshotTasksResult({
    List<_i2.ImportSnapshotTask>? importSnapshotTasks,
    String? nextToken,
  }) {
    return _$DescribeImportSnapshotTasksResult._(
      importSnapshotTasks: importSnapshotTasks == null
          ? null
          : _i3.BuiltList(importSnapshotTasks),
      nextToken: nextToken,
    );
  }

  factory DescribeImportSnapshotTasksResult.build(
          [void Function(DescribeImportSnapshotTasksResultBuilder) updates]) =
      _$DescribeImportSnapshotTasksResult;

  const DescribeImportSnapshotTasksResult._();

  /// Constructs a [DescribeImportSnapshotTasksResult] from a [payload] and [response].
  factory DescribeImportSnapshotTasksResult.fromResponse(
    DescribeImportSnapshotTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeImportSnapshotTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImportSnapshotTasksResultBuilder b) {}

  /// A list of zero or more import snapshot tasks that are currently active or were completed or canceled in the previous 7 days.
  _i3.BuiltList<_i2.ImportSnapshotTask>? get importSnapshotTasks;

  /// The token to use to get the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        importSnapshotTasks,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeImportSnapshotTasksResult');
    helper.add(
      'importSnapshotTasks',
      importSnapshotTasks,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeImportSnapshotTasksResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeImportSnapshotTasksResult> {
  const DescribeImportSnapshotTasksResultEc2QuerySerializer()
      : super('DescribeImportSnapshotTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeImportSnapshotTasksResult,
        _$DescribeImportSnapshotTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImportSnapshotTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImportSnapshotTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'importSnapshotTaskSet':
          if (value != null) {
            result.importSnapshotTasks
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ImportSnapshotTask)],
              ),
            ) as _i3.BuiltList<_i2.ImportSnapshotTask>));
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
    final payload = (object as DescribeImportSnapshotTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeImportSnapshotTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.importSnapshotTasks != null) {
      result
        ..add(const _i4.XmlElementName('ImportSnapshotTaskSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.importSnapshotTasks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ImportSnapshotTask)],
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
