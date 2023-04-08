// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.terminate_client_vpn_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'terminate_client_vpn_connections_request.g.dart';

abstract class TerminateClientVpnConnectionsRequest
    with
        _i1.HttpInput<TerminateClientVpnConnectionsRequest>,
        _i2.AWSEquatable<TerminateClientVpnConnectionsRequest>
    implements
        Built<TerminateClientVpnConnectionsRequest,
            TerminateClientVpnConnectionsRequestBuilder> {
  factory TerminateClientVpnConnectionsRequest({
    required String clientVpnEndpointId,
    String? connectionId,
    String? username,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$TerminateClientVpnConnectionsRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      connectionId: connectionId,
      username: username,
      dryRun: dryRun,
    );
  }

  factory TerminateClientVpnConnectionsRequest.build(
      [void Function(TerminateClientVpnConnectionsRequestBuilder)
          updates]) = _$TerminateClientVpnConnectionsRequest;

  const TerminateClientVpnConnectionsRequest._();

  factory TerminateClientVpnConnectionsRequest.fromRequest(
    TerminateClientVpnConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    TerminateClientVpnConnectionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TerminateClientVpnConnectionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint to which the client is connected.
  String get clientVpnEndpointId;

  /// The ID of the client connection to be terminated.
  String? get connectionId;

  /// The name of the user who initiated the connection. Use this option to terminate all active connections for the specified user. This option can only be used if the user has established up to five connections.
  String? get username;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  TerminateClientVpnConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        connectionId,
        username,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TerminateClientVpnConnectionsRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'connectionId',
      connectionId,
    );
    helper.add(
      'username',
      username,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class TerminateClientVpnConnectionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<TerminateClientVpnConnectionsRequest> {
  const TerminateClientVpnConnectionsRequestEc2QuerySerializer()
      : super('TerminateClientVpnConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        TerminateClientVpnConnectionsRequest,
        _$TerminateClientVpnConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TerminateClientVpnConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TerminateClientVpnConnectionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConnectionId':
          if (value != null) {
            result.connectionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Username':
          if (value != null) {
            result.username = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as TerminateClientVpnConnectionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'TerminateClientVpnConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
      ..add(serializers.serialize(
        payload.clientVpnEndpointId,
        specifiedType: const FullType(String),
      ));
    if (payload.connectionId != null) {
      result
        ..add(const _i1.XmlElementName('ConnectionId'))
        ..add(serializers.serialize(
          payload.connectionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.username != null) {
      result
        ..add(const _i1.XmlElementName('Username'))
        ..add(serializers.serialize(
          payload.username!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
