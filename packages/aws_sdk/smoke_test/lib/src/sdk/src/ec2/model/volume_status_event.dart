// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.volume_status_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'volume_status_event.g.dart';

/// Describes a volume status event.
abstract class VolumeStatusEvent
    with _i1.AWSEquatable<VolumeStatusEvent>
    implements Built<VolumeStatusEvent, VolumeStatusEventBuilder> {
  /// Describes a volume status event.
  factory VolumeStatusEvent({
    String? description,
    String? eventId,
    String? eventType,
    DateTime? notAfter,
    DateTime? notBefore,
    String? instanceId,
  }) {
    return _$VolumeStatusEvent._(
      description: description,
      eventId: eventId,
      eventType: eventType,
      notAfter: notAfter,
      notBefore: notBefore,
      instanceId: instanceId,
    );
  }

  /// Describes a volume status event.
  factory VolumeStatusEvent.build(
      [void Function(VolumeStatusEventBuilder) updates]) = _$VolumeStatusEvent;

  const VolumeStatusEvent._();

  static const List<_i2.SmithySerializer> serializers = [
    VolumeStatusEventEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeStatusEventBuilder b) {}

  /// A description of the event.
  String? get description;

  /// The ID of this event.
  String? get eventId;

  /// The type of this event.
  String? get eventType;

  /// The latest end time of the event.
  DateTime? get notAfter;

  /// The earliest start time of the event.
  DateTime? get notBefore;

  /// The ID of the instance associated with the event.
  String? get instanceId;
  @override
  List<Object?> get props => [
        description,
        eventId,
        eventType,
        notAfter,
        notBefore,
        instanceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusEvent');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'eventId',
      eventId,
    );
    helper.add(
      'eventType',
      eventType,
    );
    helper.add(
      'notAfter',
      notAfter,
    );
    helper.add(
      'notBefore',
      notBefore,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    return helper.toString();
  }
}

class VolumeStatusEventEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VolumeStatusEvent> {
  const VolumeStatusEventEc2QuerySerializer() : super('VolumeStatusEvent');

  @override
  Iterable<Type> get types => const [
        VolumeStatusEvent,
        _$VolumeStatusEvent,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'eventId':
          if (value != null) {
            result.eventId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'eventType':
          if (value != null) {
            result.eventType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'notAfter':
          if (value != null) {
            result.notAfter = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'notBefore':
          if (value != null) {
            result.notBefore = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
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
    final payload = (object as VolumeStatusEvent);
    final result = <Object?>[
      const _i2.XmlElementName(
        'VolumeStatusEventResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.eventId != null) {
      result
        ..add(const _i2.XmlElementName('EventId'))
        ..add(serializers.serialize(
          payload.eventId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.eventType != null) {
      result
        ..add(const _i2.XmlElementName('EventType'))
        ..add(serializers.serialize(
          payload.eventType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.notAfter != null) {
      result
        ..add(const _i2.XmlElementName('NotAfter'))
        ..add(serializers.serialize(
          payload.notAfter!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.notBefore != null) {
      result
        ..add(const _i2.XmlElementName('NotBefore'))
        ..add(serializers.serialize(
          payload.notBefore!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
