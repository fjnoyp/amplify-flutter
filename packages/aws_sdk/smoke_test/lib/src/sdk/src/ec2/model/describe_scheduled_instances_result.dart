// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_scheduled_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance.dart'
    as _i2;

part 'describe_scheduled_instances_result.g.dart';

/// Contains the output of DescribeScheduledInstances.
abstract class DescribeScheduledInstancesResult
    with
        _i1.AWSEquatable<DescribeScheduledInstancesResult>
    implements
        Built<DescribeScheduledInstancesResult,
            DescribeScheduledInstancesResultBuilder> {
  /// Contains the output of DescribeScheduledInstances.
  factory DescribeScheduledInstancesResult({
    String? nextToken,
    List<_i2.ScheduledInstance>? scheduledInstanceSet,
  }) {
    return _$DescribeScheduledInstancesResult._(
      nextToken: nextToken,
      scheduledInstanceSet: scheduledInstanceSet == null
          ? null
          : _i3.BuiltList(scheduledInstanceSet),
    );
  }

  /// Contains the output of DescribeScheduledInstances.
  factory DescribeScheduledInstancesResult.build(
          [void Function(DescribeScheduledInstancesResultBuilder) updates]) =
      _$DescribeScheduledInstancesResult;

  const DescribeScheduledInstancesResult._();

  /// Constructs a [DescribeScheduledInstancesResult] from a [payload] and [response].
  factory DescribeScheduledInstancesResult.fromResponse(
    DescribeScheduledInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeScheduledInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeScheduledInstancesResultBuilder b) {}

  /// The token required to retrieve the next set of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the Scheduled Instances.
  _i3.BuiltList<_i2.ScheduledInstance>? get scheduledInstanceSet;
  @override
  List<Object?> get props => [
        nextToken,
        scheduledInstanceSet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeScheduledInstancesResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'scheduledInstanceSet',
      scheduledInstanceSet,
    );
    return helper.toString();
  }
}

class DescribeScheduledInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeScheduledInstancesResult> {
  const DescribeScheduledInstancesResultEc2QuerySerializer()
      : super('DescribeScheduledInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstancesResult,
        _$DescribeScheduledInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'scheduledInstanceSet':
          if (value != null) {
            result.scheduledInstanceSet
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ScheduledInstance)],
              ),
            ) as _i3.BuiltList<_i2.ScheduledInstance>));
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
    final payload = (object as DescribeScheduledInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeScheduledInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.scheduledInstanceSet != null) {
      result
        ..add(const _i4.XmlElementName('ScheduledInstanceSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.scheduledInstanceSet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ScheduledInstance)],
          ),
        ));
    }
    return result;
  }
}
