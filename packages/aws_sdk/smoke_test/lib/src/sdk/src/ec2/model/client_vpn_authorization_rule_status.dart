// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_vpn_authorization_rule_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authorization_rule_status_code.dart'
    as _i2;

part 'client_vpn_authorization_rule_status.g.dart';

/// Describes the state of an authorization rule.
abstract class ClientVpnAuthorizationRuleStatus
    with
        _i1.AWSEquatable<ClientVpnAuthorizationRuleStatus>
    implements
        Built<ClientVpnAuthorizationRuleStatus,
            ClientVpnAuthorizationRuleStatusBuilder> {
  /// Describes the state of an authorization rule.
  factory ClientVpnAuthorizationRuleStatus({
    _i2.ClientVpnAuthorizationRuleStatusCode? code,
    String? message,
  }) {
    return _$ClientVpnAuthorizationRuleStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of an authorization rule.
  factory ClientVpnAuthorizationRuleStatus.build(
          [void Function(ClientVpnAuthorizationRuleStatusBuilder) updates]) =
      _$ClientVpnAuthorizationRuleStatus;

  const ClientVpnAuthorizationRuleStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    ClientVpnAuthorizationRuleStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnAuthorizationRuleStatusBuilder b) {}

  /// The state of the authorization rule.
  _i2.ClientVpnAuthorizationRuleStatusCode? get code;

  /// A message about the status of the authorization rule, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ClientVpnAuthorizationRuleStatus');
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

class ClientVpnAuthorizationRuleStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClientVpnAuthorizationRuleStatus> {
  const ClientVpnAuthorizationRuleStatusEc2QuerySerializer()
      : super('ClientVpnAuthorizationRuleStatus');

  @override
  Iterable<Type> get types => const [
        ClientVpnAuthorizationRuleStatus,
        _$ClientVpnAuthorizationRuleStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnAuthorizationRuleStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnAuthorizationRuleStatusBuilder();
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
                  const FullType(_i2.ClientVpnAuthorizationRuleStatusCode),
            ) as _i2.ClientVpnAuthorizationRuleStatusCode);
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
    final payload = (object as ClientVpnAuthorizationRuleStatus);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ClientVpnAuthorizationRuleStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType:
              const FullType.nullable(_i2.ClientVpnAuthorizationRuleStatusCode),
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
