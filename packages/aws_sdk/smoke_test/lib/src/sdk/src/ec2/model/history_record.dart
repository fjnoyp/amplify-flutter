// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.history_record; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/event_information.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/event_type.dart' as _i3;

part 'history_record.g.dart';

/// Describes an event in the history of the Spot Fleet request.
abstract class HistoryRecord
    with _i1.AWSEquatable<HistoryRecord>
    implements Built<HistoryRecord, HistoryRecordBuilder> {
  /// Describes an event in the history of the Spot Fleet request.
  factory HistoryRecord({
    _i2.EventInformation? eventInformation,
    _i3.EventType? eventType,
    DateTime? timestamp,
  }) {
    return _$HistoryRecord._(
      eventInformation: eventInformation,
      eventType: eventType,
      timestamp: timestamp,
    );
  }

  /// Describes an event in the history of the Spot Fleet request.
  factory HistoryRecord.build([void Function(HistoryRecordBuilder) updates]) =
      _$HistoryRecord;

  const HistoryRecord._();

  static const List<_i4.SmithySerializer> serializers = [
    HistoryRecordEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HistoryRecordBuilder b) {}

  /// Information about the event.
  _i2.EventInformation? get eventInformation;

  /// The event type.
  ///
  /// *   `error` \- An error with the Spot Fleet request.
  ///
  /// *   `fleetRequestChange` \- A change in the status or configuration of the Spot Fleet request.
  ///
  /// *   `instanceChange` \- An instance was launched or terminated.
  ///
  /// *   `Information` \- An informational event.
  _i3.EventType? get eventType;

  /// The date and time of the event, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        eventInformation,
        eventType,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HistoryRecord');
    helper.add(
      'eventInformation',
      eventInformation,
    );
    helper.add(
      'eventType',
      eventType,
    );
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

class HistoryRecordEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<HistoryRecord> {
  const HistoryRecordEc2QuerySerializer() : super('HistoryRecord');

  @override
  Iterable<Type> get types => const [
        HistoryRecord,
        _$HistoryRecord,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HistoryRecord deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryRecordBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'eventInformation':
          if (value != null) {
            result.eventInformation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EventInformation),
            ) as _i2.EventInformation));
          }
          break;
        case 'eventType':
          if (value != null) {
            result.eventType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EventType),
            ) as _i3.EventType);
          }
          break;
        case 'timestamp':
          if (value != null) {
            result.timestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as HistoryRecord);
    final result = <Object?>[
      const _i4.XmlElementName(
        'HistoryRecordResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.eventInformation != null) {
      result
        ..add(const _i4.XmlElementName('EventInformation'))
        ..add(serializers.serialize(
          payload.eventInformation!,
          specifiedType: const FullType(_i2.EventInformation),
        ));
    }
    if (payload.eventType != null) {
      result
        ..add(const _i4.XmlElementName('EventType'))
        ..add(serializers.serialize(
          payload.eventType!,
          specifiedType: const FullType.nullable(_i3.EventType),
        ));
    }
    if (payload.timestamp != null) {
      result
        ..add(const _i4.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          payload.timestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
