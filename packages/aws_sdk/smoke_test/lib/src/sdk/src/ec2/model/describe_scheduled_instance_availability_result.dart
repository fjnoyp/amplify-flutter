// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_scheduled_instance_availability_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_availability.dart'
    as _i2;

part 'describe_scheduled_instance_availability_result.g.dart';

/// Contains the output of DescribeScheduledInstanceAvailability.
abstract class DescribeScheduledInstanceAvailabilityResult
    with
        _i1.AWSEquatable<DescribeScheduledInstanceAvailabilityResult>
    implements
        Built<DescribeScheduledInstanceAvailabilityResult,
            DescribeScheduledInstanceAvailabilityResultBuilder> {
  /// Contains the output of DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityResult({
    String? nextToken,
    List<_i2.ScheduledInstanceAvailability>? scheduledInstanceAvailabilitySet,
  }) {
    return _$DescribeScheduledInstanceAvailabilityResult._(
      nextToken: nextToken,
      scheduledInstanceAvailabilitySet: scheduledInstanceAvailabilitySet == null
          ? null
          : _i3.BuiltList(scheduledInstanceAvailabilitySet),
    );
  }

  /// Contains the output of DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityResult.build(
      [void Function(DescribeScheduledInstanceAvailabilityResultBuilder)
          updates]) = _$DescribeScheduledInstanceAvailabilityResult;

  const DescribeScheduledInstanceAvailabilityResult._();

  /// Constructs a [DescribeScheduledInstanceAvailabilityResult] from a [payload] and [response].
  factory DescribeScheduledInstanceAvailabilityResult.fromResponse(
    DescribeScheduledInstanceAvailabilityResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeScheduledInstanceAvailabilityResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeScheduledInstanceAvailabilityResultBuilder b) {}

  /// The token required to retrieve the next set of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the available Scheduled Instances.
  _i3.BuiltList<_i2.ScheduledInstanceAvailability>?
      get scheduledInstanceAvailabilitySet;
  @override
  List<Object?> get props => [
        nextToken,
        scheduledInstanceAvailabilitySet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeScheduledInstanceAvailabilityResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'scheduledInstanceAvailabilitySet',
      scheduledInstanceAvailabilitySet,
    );
    return helper.toString();
  }
}

class DescribeScheduledInstanceAvailabilityResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeScheduledInstanceAvailabilityResult> {
  const DescribeScheduledInstanceAvailabilityResultEc2QuerySerializer()
      : super('DescribeScheduledInstanceAvailabilityResult');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstanceAvailabilityResult,
        _$DescribeScheduledInstanceAvailabilityResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstanceAvailabilityResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstanceAvailabilityResultBuilder();
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
        case 'scheduledInstanceAvailabilitySet':
          if (value != null) {
            result.scheduledInstanceAvailabilitySet
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ScheduledInstanceAvailability)],
              ),
            ) as _i3.BuiltList<_i2.ScheduledInstanceAvailability>));
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
    final payload = (object as DescribeScheduledInstanceAvailabilityResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeScheduledInstanceAvailabilityResultResponse',
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
    if (payload.scheduledInstanceAvailabilitySet != null) {
      result
        ..add(const _i4.XmlElementName('ScheduledInstanceAvailabilitySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.scheduledInstanceAvailabilitySet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ScheduledInstanceAvailability)],
          ),
        ));
    }
    return result;
  }
}
