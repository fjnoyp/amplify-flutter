// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_vpn_route_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_route_status_code.dart'
    as _i2;

part 'client_vpn_route_status.g.dart';

/// Describes the state of a Client VPN endpoint route.
abstract class ClientVpnRouteStatus
    with _i1.AWSEquatable<ClientVpnRouteStatus>
    implements Built<ClientVpnRouteStatus, ClientVpnRouteStatusBuilder> {
  /// Describes the state of a Client VPN endpoint route.
  factory ClientVpnRouteStatus({
    _i2.ClientVpnRouteStatusCode? code,
    String? message,
  }) {
    return _$ClientVpnRouteStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of a Client VPN endpoint route.
  factory ClientVpnRouteStatus.build(
          [void Function(ClientVpnRouteStatusBuilder) updates]) =
      _$ClientVpnRouteStatus;

  const ClientVpnRouteStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    ClientVpnRouteStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnRouteStatusBuilder b) {}

  /// The state of the Client VPN endpoint route.
  _i2.ClientVpnRouteStatusCode? get code;

  /// A message about the status of the Client VPN endpoint route, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnRouteStatus');
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

class ClientVpnRouteStatusEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClientVpnRouteStatus> {
  const ClientVpnRouteStatusEc2QuerySerializer()
      : super('ClientVpnRouteStatus');

  @override
  Iterable<Type> get types => const [
        ClientVpnRouteStatus,
        _$ClientVpnRouteStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnRouteStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnRouteStatusBuilder();
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
              specifiedType: const FullType(_i2.ClientVpnRouteStatusCode),
            ) as _i2.ClientVpnRouteStatusCode);
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
    final payload = (object as ClientVpnRouteStatus);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ClientVpnRouteStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(_i2.ClientVpnRouteStatusCode),
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
