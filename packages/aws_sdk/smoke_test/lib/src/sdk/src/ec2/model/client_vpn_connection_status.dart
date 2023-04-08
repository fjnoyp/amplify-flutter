// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_vpn_connection_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status_code.dart'
    as _i2;

part 'client_vpn_connection_status.g.dart';

/// Describes the status of a client connection.
abstract class ClientVpnConnectionStatus
    with _i1.AWSEquatable<ClientVpnConnectionStatus>
    implements
        Built<ClientVpnConnectionStatus, ClientVpnConnectionStatusBuilder> {
  /// Describes the status of a client connection.
  factory ClientVpnConnectionStatus({
    _i2.ClientVpnConnectionStatusCode? code,
    String? message,
  }) {
    return _$ClientVpnConnectionStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the status of a client connection.
  factory ClientVpnConnectionStatus.build(
          [void Function(ClientVpnConnectionStatusBuilder) updates]) =
      _$ClientVpnConnectionStatus;

  const ClientVpnConnectionStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    ClientVpnConnectionStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnConnectionStatusBuilder b) {}

  /// The state of the client connection.
  _i2.ClientVpnConnectionStatusCode? get code;

  /// A message about the status of the client connection, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnConnectionStatus');
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

class ClientVpnConnectionStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClientVpnConnectionStatus> {
  const ClientVpnConnectionStatusEc2QuerySerializer()
      : super('ClientVpnConnectionStatus');

  @override
  Iterable<Type> get types => const [
        ClientVpnConnectionStatus,
        _$ClientVpnConnectionStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnConnectionStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnConnectionStatusBuilder();
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
              specifiedType: const FullType(_i2.ClientVpnConnectionStatusCode),
            ) as _i2.ClientVpnConnectionStatusCode);
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
    final payload = (object as ClientVpnConnectionStatus);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ClientVpnConnectionStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType:
              const FullType.nullable(_i2.ClientVpnConnectionStatusCode),
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
