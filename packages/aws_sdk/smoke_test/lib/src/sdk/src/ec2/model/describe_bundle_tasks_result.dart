// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_bundle_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task.dart' as _i2;

part 'describe_bundle_tasks_result.g.dart';

abstract class DescribeBundleTasksResult
    with _i1.AWSEquatable<DescribeBundleTasksResult>
    implements
        Built<DescribeBundleTasksResult, DescribeBundleTasksResultBuilder> {
  factory DescribeBundleTasksResult({List<_i2.BundleTask>? bundleTasks}) {
    return _$DescribeBundleTasksResult._(
        bundleTasks: bundleTasks == null ? null : _i3.BuiltList(bundleTasks));
  }

  factory DescribeBundleTasksResult.build(
          [void Function(DescribeBundleTasksResultBuilder) updates]) =
      _$DescribeBundleTasksResult;

  const DescribeBundleTasksResult._();

  /// Constructs a [DescribeBundleTasksResult] from a [payload] and [response].
  factory DescribeBundleTasksResult.fromResponse(
    DescribeBundleTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeBundleTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeBundleTasksResultBuilder b) {}

  /// Information about the bundle tasks.
  _i3.BuiltList<_i2.BundleTask>? get bundleTasks;
  @override
  List<Object?> get props => [bundleTasks];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeBundleTasksResult');
    helper.add(
      'bundleTasks',
      bundleTasks,
    );
    return helper.toString();
  }
}

class DescribeBundleTasksResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeBundleTasksResult> {
  const DescribeBundleTasksResultEc2QuerySerializer()
      : super('DescribeBundleTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeBundleTasksResult,
        _$DescribeBundleTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeBundleTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeBundleTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'bundleInstanceTasksSet':
          if (value != null) {
            result.bundleTasks.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.BundleTask)],
              ),
            ) as _i3.BuiltList<_i2.BundleTask>));
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
    final payload = (object as DescribeBundleTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeBundleTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.bundleTasks != null) {
      result
        ..add(const _i4.XmlElementName('BundleInstanceTasksSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.bundleTasks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.BundleTask)],
          ),
        ));
    }
    return result;
  }
}
