// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_import_image_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_task.dart' as _i2;

part 'describe_import_image_tasks_result.g.dart';

abstract class DescribeImportImageTasksResult
    with
        _i1.AWSEquatable<DescribeImportImageTasksResult>
    implements
        Built<DescribeImportImageTasksResult,
            DescribeImportImageTasksResultBuilder> {
  factory DescribeImportImageTasksResult({
    List<_i2.ImportImageTask>? importImageTasks,
    String? nextToken,
  }) {
    return _$DescribeImportImageTasksResult._(
      importImageTasks:
          importImageTasks == null ? null : _i3.BuiltList(importImageTasks),
      nextToken: nextToken,
    );
  }

  factory DescribeImportImageTasksResult.build(
          [void Function(DescribeImportImageTasksResultBuilder) updates]) =
      _$DescribeImportImageTasksResult;

  const DescribeImportImageTasksResult._();

  /// Constructs a [DescribeImportImageTasksResult] from a [payload] and [response].
  factory DescribeImportImageTasksResult.fromResponse(
    DescribeImportImageTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeImportImageTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeImportImageTasksResultBuilder b) {}

  /// A list of zero or more import image tasks that are currently active or were completed or canceled in the previous 7 days.
  _i3.BuiltList<_i2.ImportImageTask>? get importImageTasks;

  /// The token to use to get the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        importImageTasks,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeImportImageTasksResult');
    helper.add(
      'importImageTasks',
      importImageTasks,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeImportImageTasksResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeImportImageTasksResult> {
  const DescribeImportImageTasksResultEc2QuerySerializer()
      : super('DescribeImportImageTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeImportImageTasksResult,
        _$DescribeImportImageTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeImportImageTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeImportImageTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'importImageTaskSet':
          if (value != null) {
            result.importImageTasks.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ImportImageTask)],
              ),
            ) as _i3.BuiltList<_i2.ImportImageTask>));
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
    final payload = (object as DescribeImportImageTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeImportImageTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.importImageTasks != null) {
      result
        ..add(const _i4.XmlElementName('ImportImageTaskSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.importImageTasks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ImportImageTask)],
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
