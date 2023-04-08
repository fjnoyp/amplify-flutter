// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_event_window_time_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/week_day.dart' as _i2;

part 'instance_event_window_time_range.g.dart';

/// The start day and time and the end day and time of the time range, in UTC.
abstract class InstanceEventWindowTimeRange
    with
        _i1.AWSEquatable<InstanceEventWindowTimeRange>
    implements
        Built<InstanceEventWindowTimeRange,
            InstanceEventWindowTimeRangeBuilder> {
  /// The start day and time and the end day and time of the time range, in UTC.
  factory InstanceEventWindowTimeRange({
    _i2.WeekDay? startWeekDay,
    int? startHour,
    _i2.WeekDay? endWeekDay,
    int? endHour,
  }) {
    startHour ??= 0;
    endHour ??= 0;
    return _$InstanceEventWindowTimeRange._(
      startWeekDay: startWeekDay,
      startHour: startHour,
      endWeekDay: endWeekDay,
      endHour: endHour,
    );
  }

  /// The start day and time and the end day and time of the time range, in UTC.
  factory InstanceEventWindowTimeRange.build(
          [void Function(InstanceEventWindowTimeRangeBuilder) updates]) =
      _$InstanceEventWindowTimeRange;

  const InstanceEventWindowTimeRange._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceEventWindowTimeRangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowTimeRangeBuilder b) {
    b.startHour = 0;
    b.endHour = 0;
  }

  /// The day on which the time range begins.
  _i2.WeekDay? get startWeekDay;

  /// The hour when the time range begins.
  int get startHour;

  /// The day on which the time range ends.
  _i2.WeekDay? get endWeekDay;

  /// The hour when the time range ends.
  int get endHour;
  @override
  List<Object?> get props => [
        startWeekDay,
        startHour,
        endWeekDay,
        endHour,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceEventWindowTimeRange');
    helper.add(
      'startWeekDay',
      startWeekDay,
    );
    helper.add(
      'startHour',
      startHour,
    );
    helper.add(
      'endWeekDay',
      endWeekDay,
    );
    helper.add(
      'endHour',
      endHour,
    );
    return helper.toString();
  }
}

class InstanceEventWindowTimeRangeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceEventWindowTimeRange> {
  const InstanceEventWindowTimeRangeEc2QuerySerializer()
      : super('InstanceEventWindowTimeRange');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowTimeRange,
        _$InstanceEventWindowTimeRange,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowTimeRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowTimeRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'startWeekDay':
          if (value != null) {
            result.startWeekDay = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.WeekDay),
            ) as _i2.WeekDay);
          }
          break;
        case 'startHour':
          result.startHour = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'endWeekDay':
          if (value != null) {
            result.endWeekDay = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.WeekDay),
            ) as _i2.WeekDay);
          }
          break;
        case 'endHour':
          result.endHour = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as InstanceEventWindowTimeRange);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceEventWindowTimeRangeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.startWeekDay != null) {
      result
        ..add(const _i3.XmlElementName('StartWeekDay'))
        ..add(serializers.serialize(
          payload.startWeekDay!,
          specifiedType: const FullType.nullable(_i2.WeekDay),
        ));
    }
    result
      ..add(const _i3.XmlElementName('StartHour'))
      ..add(serializers.serialize(
        payload.startHour,
        specifiedType: const FullType(int),
      ));
    if (payload.endWeekDay != null) {
      result
        ..add(const _i3.XmlElementName('EndWeekDay'))
        ..add(serializers.serialize(
          payload.endWeekDay!,
          specifiedType: const FullType.nullable(_i2.WeekDay),
        ));
    }
    result
      ..add(const _i3.XmlElementName('EndHour'))
      ..add(serializers.serialize(
        payload.endHour,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
