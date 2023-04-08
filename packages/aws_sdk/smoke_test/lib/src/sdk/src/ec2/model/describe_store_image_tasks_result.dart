// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_store_image_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/store_image_task_result.dart'
    as _i2;

part 'describe_store_image_tasks_result.g.dart';

abstract class DescribeStoreImageTasksResult
    with
        _i1.AWSEquatable<DescribeStoreImageTasksResult>
    implements
        Built<DescribeStoreImageTasksResult,
            DescribeStoreImageTasksResultBuilder> {
  factory DescribeStoreImageTasksResult({
    List<_i2.StoreImageTaskResult>? storeImageTaskResults,
    String? nextToken,
  }) {
    return _$DescribeStoreImageTasksResult._(
      storeImageTaskResults: storeImageTaskResults == null
          ? null
          : _i3.BuiltList(storeImageTaskResults),
      nextToken: nextToken,
    );
  }

  factory DescribeStoreImageTasksResult.build(
          [void Function(DescribeStoreImageTasksResultBuilder) updates]) =
      _$DescribeStoreImageTasksResult;

  const DescribeStoreImageTasksResult._();

  /// Constructs a [DescribeStoreImageTasksResult] from a [payload] and [response].
  factory DescribeStoreImageTasksResult.fromResponse(
    DescribeStoreImageTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeStoreImageTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStoreImageTasksResultBuilder b) {}

  /// The information about the AMI store tasks.
  _i3.BuiltList<_i2.StoreImageTaskResult>? get storeImageTaskResults;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        storeImageTaskResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStoreImageTasksResult');
    helper.add(
      'storeImageTaskResults',
      storeImageTaskResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeStoreImageTasksResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeStoreImageTasksResult> {
  const DescribeStoreImageTasksResultEc2QuerySerializer()
      : super('DescribeStoreImageTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeStoreImageTasksResult,
        _$DescribeStoreImageTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeStoreImageTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStoreImageTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'storeImageTaskResultSet':
          if (value != null) {
            result.storeImageTaskResults
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.StoreImageTaskResult)],
              ),
            ) as _i3.BuiltList<_i2.StoreImageTaskResult>));
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
    final payload = (object as DescribeStoreImageTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeStoreImageTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.storeImageTaskResults != null) {
      result
        ..add(const _i4.XmlElementName('StoreImageTaskResultSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.storeImageTaskResults!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StoreImageTaskResult)],
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
