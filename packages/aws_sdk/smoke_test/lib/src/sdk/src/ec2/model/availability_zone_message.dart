// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.availability_zone_message; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'availability_zone_message.g.dart';

/// Describes a message about an Availability Zone, Local Zone, or Wavelength Zone.
abstract class AvailabilityZoneMessage
    with _i1.AWSEquatable<AvailabilityZoneMessage>
    implements Built<AvailabilityZoneMessage, AvailabilityZoneMessageBuilder> {
  /// Describes a message about an Availability Zone, Local Zone, or Wavelength Zone.
  factory AvailabilityZoneMessage({String? message}) {
    return _$AvailabilityZoneMessage._(message: message);
  }

  /// Describes a message about an Availability Zone, Local Zone, or Wavelength Zone.
  factory AvailabilityZoneMessage.build(
          [void Function(AvailabilityZoneMessageBuilder) updates]) =
      _$AvailabilityZoneMessage;

  const AvailabilityZoneMessage._();

  static const List<_i2.SmithySerializer> serializers = [
    AvailabilityZoneMessageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AvailabilityZoneMessageBuilder b) {}

  /// The message about the Availability Zone, Local Zone, or Wavelength Zone.
  String? get message;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AvailabilityZoneMessage');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class AvailabilityZoneMessageEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AvailabilityZoneMessage> {
  const AvailabilityZoneMessageEc2QuerySerializer()
      : super('AvailabilityZoneMessage');

  @override
  Iterable<Type> get types => const [
        AvailabilityZoneMessage,
        _$AvailabilityZoneMessage,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AvailabilityZoneMessage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailabilityZoneMessageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as AvailabilityZoneMessage);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AvailabilityZoneMessageResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
