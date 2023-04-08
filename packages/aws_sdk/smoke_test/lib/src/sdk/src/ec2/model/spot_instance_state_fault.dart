// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_instance_state_fault; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'spot_instance_state_fault.g.dart';

/// Describes a Spot Instance state change.
abstract class SpotInstanceStateFault
    with _i1.AWSEquatable<SpotInstanceStateFault>
    implements Built<SpotInstanceStateFault, SpotInstanceStateFaultBuilder> {
  /// Describes a Spot Instance state change.
  factory SpotInstanceStateFault({
    String? code,
    String? message,
  }) {
    return _$SpotInstanceStateFault._(
      code: code,
      message: message,
    );
  }

  /// Describes a Spot Instance state change.
  factory SpotInstanceStateFault.build(
          [void Function(SpotInstanceStateFaultBuilder) updates]) =
      _$SpotInstanceStateFault;

  const SpotInstanceStateFault._();

  static const List<_i2.SmithySerializer> serializers = [
    SpotInstanceStateFaultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotInstanceStateFaultBuilder b) {}

  /// The reason code for the Spot Instance state change.
  String? get code;

  /// The message for the Spot Instance state change.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotInstanceStateFault');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class SpotInstanceStateFaultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotInstanceStateFault> {
  const SpotInstanceStateFaultEc2QuerySerializer()
      : super('SpotInstanceStateFault');

  @override
  Iterable<Type> get types => const [
        SpotInstanceStateFault,
        _$SpotInstanceStateFault,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotInstanceStateFault deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotInstanceStateFaultBuilder();
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
    final payload = (object as SpotInstanceStateFault);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SpotInstanceStateFaultResponse',
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
