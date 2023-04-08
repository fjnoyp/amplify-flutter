// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_status_event; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/event_code.dart' as _i2;

part 'instance_status_event.g.dart';

/// Describes a scheduled event for an instance.
abstract class InstanceStatusEvent
    with _i1.AWSEquatable<InstanceStatusEvent>
    implements Built<InstanceStatusEvent, InstanceStatusEventBuilder> {
  /// Describes a scheduled event for an instance.
  factory InstanceStatusEvent({
    String? instanceEventId,
    _i2.EventCode? code,
    String? description,
    DateTime? notAfter,
    DateTime? notBefore,
    DateTime? notBeforeDeadline,
  }) {
    return _$InstanceStatusEvent._(
      instanceEventId: instanceEventId,
      code: code,
      description: description,
      notAfter: notAfter,
      notBefore: notBefore,
      notBeforeDeadline: notBeforeDeadline,
    );
  }

  /// Describes a scheduled event for an instance.
  factory InstanceStatusEvent.build(
          [void Function(InstanceStatusEventBuilder) updates]) =
      _$InstanceStatusEvent;

  const InstanceStatusEvent._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceStatusEventEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceStatusEventBuilder b) {}

  /// The ID of the event.
  String? get instanceEventId;

  /// The event code.
  _i2.EventCode? get code;

  /// A description of the event.
  ///
  /// After a scheduled event is completed, it can still be described for up to a week. If the event has been completed, this description starts with the following text: \[Completed\].
  String? get description;

  /// The latest scheduled end time for the event.
  DateTime? get notAfter;

  /// The earliest scheduled start time for the event.
  DateTime? get notBefore;

  /// The deadline for starting the event.
  DateTime? get notBeforeDeadline;
  @override
  List<Object?> get props => [
        instanceEventId,
        code,
        description,
        notAfter,
        notBefore,
        notBeforeDeadline,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStatusEvent');
    helper.add(
      'instanceEventId',
      instanceEventId,
    );
    helper.add(
      'code',
      code,
    );
    helper.add(
      'description',
      description,
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
      'notBeforeDeadline',
      notBeforeDeadline,
    );
    return helper.toString();
  }
}

class InstanceStatusEventEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceStatusEvent> {
  const InstanceStatusEventEc2QuerySerializer() : super('InstanceStatusEvent');

  @override
  Iterable<Type> get types => const [
        InstanceStatusEvent,
        _$InstanceStatusEvent,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStatusEvent deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStatusEventBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceEventId':
          if (value != null) {
            result.instanceEventId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EventCode),
            ) as _i2.EventCode);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
        case 'notBeforeDeadline':
          if (value != null) {
            result.notBeforeDeadline = (serializers.deserialize(
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
    final payload = (object as InstanceStatusEvent);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceStatusEventResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceEventId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceEventId'))
        ..add(serializers.serialize(
          payload.instanceEventId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(_i2.EventCode),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.notAfter != null) {
      result
        ..add(const _i3.XmlElementName('NotAfter'))
        ..add(serializers.serialize(
          payload.notAfter!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.notBefore != null) {
      result
        ..add(const _i3.XmlElementName('NotBefore'))
        ..add(serializers.serialize(
          payload.notBefore!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.notBeforeDeadline != null) {
      result
        ..add(const _i3.XmlElementName('NotBeforeDeadline'))
        ..add(serializers.serialize(
          payload.notBeforeDeadline!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
