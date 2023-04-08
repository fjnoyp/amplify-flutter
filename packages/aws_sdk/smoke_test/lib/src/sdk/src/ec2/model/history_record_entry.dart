// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.history_record_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/event_information.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_event_type.dart' as _i3;

part 'history_record_entry.g.dart';

/// Describes an event in the history of an EC2 Fleet.
abstract class HistoryRecordEntry
    with _i1.AWSEquatable<HistoryRecordEntry>
    implements Built<HistoryRecordEntry, HistoryRecordEntryBuilder> {
  /// Describes an event in the history of an EC2 Fleet.
  factory HistoryRecordEntry({
    _i2.EventInformation? eventInformation,
    _i3.FleetEventType? eventType,
    DateTime? timestamp,
  }) {
    return _$HistoryRecordEntry._(
      eventInformation: eventInformation,
      eventType: eventType,
      timestamp: timestamp,
    );
  }

  /// Describes an event in the history of an EC2 Fleet.
  factory HistoryRecordEntry.build(
          [void Function(HistoryRecordEntryBuilder) updates]) =
      _$HistoryRecordEntry;

  const HistoryRecordEntry._();

  static const List<_i4.SmithySerializer> serializers = [
    HistoryRecordEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HistoryRecordEntryBuilder b) {}

  /// Information about the event.
  _i2.EventInformation? get eventInformation;

  /// The event type.
  _i3.FleetEventType? get eventType;

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
    final helper = newBuiltValueToStringHelper('HistoryRecordEntry');
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

class HistoryRecordEntryEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<HistoryRecordEntry> {
  const HistoryRecordEntryEc2QuerySerializer() : super('HistoryRecordEntry');

  @override
  Iterable<Type> get types => const [
        HistoryRecordEntry,
        _$HistoryRecordEntry,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HistoryRecordEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HistoryRecordEntryBuilder();
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
              specifiedType: const FullType(_i3.FleetEventType),
            ) as _i3.FleetEventType);
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
    final payload = (object as HistoryRecordEntry);
    final result = <Object?>[
      const _i4.XmlElementName(
        'HistoryRecordEntryResponse',
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
          specifiedType: const FullType.nullable(_i3.FleetEventType),
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
