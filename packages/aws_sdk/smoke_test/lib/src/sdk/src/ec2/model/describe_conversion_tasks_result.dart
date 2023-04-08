// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_conversion_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task.dart' as _i2;

part 'describe_conversion_tasks_result.g.dart';

abstract class DescribeConversionTasksResult
    with
        _i1.AWSEquatable<DescribeConversionTasksResult>
    implements
        Built<DescribeConversionTasksResult,
            DescribeConversionTasksResultBuilder> {
  factory DescribeConversionTasksResult(
      {List<_i2.ConversionTask>? conversionTasks}) {
    return _$DescribeConversionTasksResult._(
        conversionTasks:
            conversionTasks == null ? null : _i3.BuiltList(conversionTasks));
  }

  factory DescribeConversionTasksResult.build(
          [void Function(DescribeConversionTasksResultBuilder) updates]) =
      _$DescribeConversionTasksResult;

  const DescribeConversionTasksResult._();

  /// Constructs a [DescribeConversionTasksResult] from a [payload] and [response].
  factory DescribeConversionTasksResult.fromResponse(
    DescribeConversionTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeConversionTasksResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeConversionTasksResultBuilder b) {}

  /// Information about the conversion tasks.
  _i3.BuiltList<_i2.ConversionTask>? get conversionTasks;
  @override
  List<Object?> get props => [conversionTasks];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeConversionTasksResult');
    helper.add(
      'conversionTasks',
      conversionTasks,
    );
    return helper.toString();
  }
}

class DescribeConversionTasksResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeConversionTasksResult> {
  const DescribeConversionTasksResultEc2QuerySerializer()
      : super('DescribeConversionTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeConversionTasksResult,
        _$DescribeConversionTasksResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeConversionTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConversionTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'conversionTasks':
          if (value != null) {
            result.conversionTasks.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConversionTask)],
              ),
            ) as _i3.BuiltList<_i2.ConversionTask>));
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
    final payload = (object as DescribeConversionTasksResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeConversionTasksResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.conversionTasks != null) {
      result
        ..add(const _i4.XmlElementName('ConversionTasks'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.conversionTasks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ConversionTask)],
          ),
        ));
    }
    return result;
  }
}
