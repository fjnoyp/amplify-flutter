// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.slot_date_time_range_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'slot_date_time_range_request.g.dart';

/// Describes the time period for a Scheduled Instance to start its first schedule. The time period must span less than one day.
abstract class SlotDateTimeRangeRequest
    with _i1.AWSEquatable<SlotDateTimeRangeRequest>
    implements
        Built<SlotDateTimeRangeRequest, SlotDateTimeRangeRequestBuilder> {
  /// Describes the time period for a Scheduled Instance to start its first schedule. The time period must span less than one day.
  factory SlotDateTimeRangeRequest({
    required DateTime earliestTime,
    required DateTime latestTime,
  }) {
    return _$SlotDateTimeRangeRequest._(
      earliestTime: earliestTime,
      latestTime: latestTime,
    );
  }

  /// Describes the time period for a Scheduled Instance to start its first schedule. The time period must span less than one day.
  factory SlotDateTimeRangeRequest.build(
          [void Function(SlotDateTimeRangeRequestBuilder) updates]) =
      _$SlotDateTimeRangeRequest;

  const SlotDateTimeRangeRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    SlotDateTimeRangeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SlotDateTimeRangeRequestBuilder b) {}

  /// The earliest date and time, in UTC, for the Scheduled Instance to start.
  DateTime get earliestTime;

  /// The latest date and time, in UTC, for the Scheduled Instance to start. This value must be later than or equal to the earliest date and at most three months in the future.
  DateTime get latestTime;
  @override
  List<Object?> get props => [
        earliestTime,
        latestTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SlotDateTimeRangeRequest');
    helper.add(
      'earliestTime',
      earliestTime,
    );
    helper.add(
      'latestTime',
      latestTime,
    );
    return helper.toString();
  }
}

class SlotDateTimeRangeRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SlotDateTimeRangeRequest> {
  const SlotDateTimeRangeRequestEc2QuerySerializer()
      : super('SlotDateTimeRangeRequest');

  @override
  Iterable<Type> get types => const [
        SlotDateTimeRangeRequest,
        _$SlotDateTimeRangeRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SlotDateTimeRangeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SlotDateTimeRangeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'EarliestTime':
          result.earliestTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'LatestTime':
          result.latestTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    final payload = (object as SlotDateTimeRangeRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SlotDateTimeRangeRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('EarliestTime'))
      ..add(serializers.serialize(
        payload.earliestTime,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result
      ..add(const _i2.XmlElementName('LatestTime'))
      ..add(serializers.serialize(
        payload.latestTime,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result;
  }
}
