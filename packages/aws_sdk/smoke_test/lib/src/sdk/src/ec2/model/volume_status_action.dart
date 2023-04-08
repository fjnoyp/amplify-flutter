// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.volume_status_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'volume_status_action.g.dart';

/// Describes a volume status operation code.
abstract class VolumeStatusAction
    with _i1.AWSEquatable<VolumeStatusAction>
    implements Built<VolumeStatusAction, VolumeStatusActionBuilder> {
  /// Describes a volume status operation code.
  factory VolumeStatusAction({
    String? code,
    String? description,
    String? eventId,
    String? eventType,
  }) {
    return _$VolumeStatusAction._(
      code: code,
      description: description,
      eventId: eventId,
      eventType: eventType,
    );
  }

  /// Describes a volume status operation code.
  factory VolumeStatusAction.build(
          [void Function(VolumeStatusActionBuilder) updates]) =
      _$VolumeStatusAction;

  const VolumeStatusAction._();

  static const List<_i2.SmithySerializer> serializers = [
    VolumeStatusActionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeStatusActionBuilder b) {}

  /// The code identifying the operation, for example, `enable-volume-io`.
  String? get code;

  /// A description of the operation.
  String? get description;

  /// The ID of the event associated with this operation.
  String? get eventId;

  /// The event type associated with this operation.
  String? get eventType;
  @override
  List<Object?> get props => [
        code,
        description,
        eventId,
        eventType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusAction');
    helper.add(
      'code',
      code,
    );
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
    return helper.toString();
  }
}

class VolumeStatusActionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<VolumeStatusAction> {
  const VolumeStatusActionEc2QuerySerializer() : super('VolumeStatusAction');

  @override
  Iterable<Type> get types => const [
        VolumeStatusAction,
        _$VolumeStatusAction,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusActionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as VolumeStatusAction);
    final result = <Object?>[
      const _i2.XmlElementName(
        'VolumeStatusActionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(String),
        ));
    }
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
    return result;
  }
}
