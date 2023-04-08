// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_replace_root_volume_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task.dart'
    as _i2;

part 'describe_replace_root_volume_tasks_result.g.dart';

abstract class DescribeReplaceRootVolumeTasksResult
    with
        _i1.AWSEquatable<DescribeReplaceRootVolumeTasksResult>
    implements
        Built<DescribeReplaceRootVolumeTasksResult,
            DescribeReplaceRootVolumeTasksResultBuilder> {
  factory DescribeReplaceRootVolumeTasksResult({
    List<_i2.ReplaceRootVolumeTask>? replaceRootVolumeTasks,
    String? nextToken,
  }) {
    return _$DescribeReplaceRootVolumeTasksResult._(
      replaceRootVolumeTasks: replaceRootVolumeTasks == null
          ? null
          : _i3.BuiltList(replaceRootVolumeTasks),
      nextToken: nextToken,
    );
  }

  factory DescribeReplaceRootVolumeTasksResult.build(
      [void Function(DescribeReplaceRootVolumeTasksResultBuilder)
          updates]) = _$DescribeReplaceRootVolumeTasksResult;

  const DescribeReplaceRootVolumeTasksResult._();

  /// Constructs a [DescribeReplaceRootVolumeTasksResult] from a [payload] and [response].
  factory DescribeReplaceRootVolumeTasksResult.fromResponse(
    DescribeReplaceRootVolumeTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeReplaceRootVolumeTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReplaceRootVolumeTasksResultBuilder b) {}

  /// Information about the root volume replacement task.
  _i3.BuiltList<_i2.ReplaceRootVolumeTask>? get replaceRootVolumeTasks;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        replaceRootVolumeTasks,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReplaceRootVolumeTasksResult');
    helper.add(
      'replaceRootVolumeTasks',
      replaceRootVolumeTasks,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeReplaceRootVolumeTasksResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeReplaceRootVolumeTasksResult> {
  const DescribeReplaceRootVolumeTasksResultEc2QuerySerializer()
      : super('DescribeReplaceRootVolumeTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeReplaceRootVolumeTasksResult,
        _$DescribeReplaceRootVolumeTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReplaceRootVolumeTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReplaceRootVolumeTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'replaceRootVolumeTaskSet':
          if (value != null) {
            result.replaceRootVolumeTasks
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ReplaceRootVolumeTask)],
              ),
            ) as _i3.BuiltList<_i2.ReplaceRootVolumeTask>));
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
    final payload = (object as DescribeReplaceRootVolumeTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeReplaceRootVolumeTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.replaceRootVolumeTasks != null) {
      result
        ..add(const _i4.XmlElementName('ReplaceRootVolumeTaskSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.replaceRootVolumeTasks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ReplaceRootVolumeTask)],
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
