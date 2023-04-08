// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_peering_connection_state_reason; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason_code.dart'
    as _i2;

part 'vpc_peering_connection_state_reason.g.dart';

/// Describes the status of a VPC peering connection.
abstract class VpcPeeringConnectionStateReason
    with
        _i1.AWSEquatable<VpcPeeringConnectionStateReason>
    implements
        Built<VpcPeeringConnectionStateReason,
            VpcPeeringConnectionStateReasonBuilder> {
  /// Describes the status of a VPC peering connection.
  factory VpcPeeringConnectionStateReason({
    _i2.VpcPeeringConnectionStateReasonCode? code,
    String? message,
  }) {
    return _$VpcPeeringConnectionStateReason._(
      code: code,
      message: message,
    );
  }

  /// Describes the status of a VPC peering connection.
  factory VpcPeeringConnectionStateReason.build(
          [void Function(VpcPeeringConnectionStateReasonBuilder) updates]) =
      _$VpcPeeringConnectionStateReason;

  const VpcPeeringConnectionStateReason._();

  static const List<_i3.SmithySerializer> serializers = [
    VpcPeeringConnectionStateReasonEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcPeeringConnectionStateReasonBuilder b) {}

  /// The status of the VPC peering connection.
  _i2.VpcPeeringConnectionStateReasonCode? get code;

  /// A message that provides more information about the status, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VpcPeeringConnectionStateReason');
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

class VpcPeeringConnectionStateReasonEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpcPeeringConnectionStateReason> {
  const VpcPeeringConnectionStateReasonEc2QuerySerializer()
      : super('VpcPeeringConnectionStateReason');

  @override
  Iterable<Type> get types => const [
        VpcPeeringConnectionStateReason,
        _$VpcPeeringConnectionStateReason,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcPeeringConnectionStateReason deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcPeeringConnectionStateReasonBuilder();
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
              specifiedType:
                  const FullType(_i2.VpcPeeringConnectionStateReasonCode),
            ) as _i2.VpcPeeringConnectionStateReasonCode);
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
    final payload = (object as VpcPeeringConnectionStateReason);
    final result = <Object?>[
      const _i3.XmlElementName(
        'VpcPeeringConnectionStateReasonResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType:
              const FullType.nullable(_i2.VpcPeeringConnectionStateReasonCode),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
