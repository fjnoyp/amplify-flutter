// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.byoip_cidr; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/byoip_cidr_state.dart' as _i2;

part 'byoip_cidr.g.dart';

/// Information about an address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP).
abstract class ByoipCidr
    with _i1.AWSEquatable<ByoipCidr>
    implements Built<ByoipCidr, ByoipCidrBuilder> {
  /// Information about an address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP).
  factory ByoipCidr({
    String? cidr,
    String? description,
    String? statusMessage,
    _i2.ByoipCidrState? state,
  }) {
    return _$ByoipCidr._(
      cidr: cidr,
      description: description,
      statusMessage: statusMessage,
      state: state,
    );
  }

  /// Information about an address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP).
  factory ByoipCidr.build([void Function(ByoipCidrBuilder) updates]) =
      _$ByoipCidr;

  const ByoipCidr._();

  static const List<_i3.SmithySerializer> serializers = [
    ByoipCidrEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ByoipCidrBuilder b) {}

  /// The address range, in CIDR notation.
  String? get cidr;

  /// The description of the address range.
  String? get description;

  /// Upon success, contains the ID of the address pool. Otherwise, contains an error message.
  String? get statusMessage;

  /// The state of the address pool.
  _i2.ByoipCidrState? get state;
  @override
  List<Object?> get props => [
        cidr,
        description,
        statusMessage,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ByoipCidr');
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class ByoipCidrEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ByoipCidr> {
  const ByoipCidrEc2QuerySerializer() : super('ByoipCidr');

  @override
  Iterable<Type> get types => const [
        ByoipCidr,
        _$ByoipCidr,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ByoipCidr deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ByoipCidrBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidr':
          if (value != null) {
            result.cidr = (serializers.deserialize(
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
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ByoipCidrState),
            ) as _i2.ByoipCidrState);
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
    final payload = (object as ByoipCidr);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ByoipCidrResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidr != null) {
      result
        ..add(const _i3.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          payload.cidr!,
          specifiedType: const FullType(String),
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
    if (payload.statusMessage != null) {
      result
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.ByoipCidrState),
        ));
    }
    return result;
  }
}
