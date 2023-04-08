// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_vpn_connection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_connection_status.dart'
    as _i2;

part 'client_vpn_connection.g.dart';

/// Describes a client connection.
abstract class ClientVpnConnection
    with _i1.AWSEquatable<ClientVpnConnection>
    implements Built<ClientVpnConnection, ClientVpnConnectionBuilder> {
  /// Describes a client connection.
  factory ClientVpnConnection({
    String? clientVpnEndpointId,
    String? timestamp,
    String? connectionId,
    String? username,
    String? connectionEstablishedTime,
    String? ingressBytes,
    String? egressBytes,
    String? ingressPackets,
    String? egressPackets,
    String? clientIp,
    String? commonName,
    _i2.ClientVpnConnectionStatus? status,
    String? connectionEndTime,
    List<String>? postureComplianceStatuses,
  }) {
    return _$ClientVpnConnection._(
      clientVpnEndpointId: clientVpnEndpointId,
      timestamp: timestamp,
      connectionId: connectionId,
      username: username,
      connectionEstablishedTime: connectionEstablishedTime,
      ingressBytes: ingressBytes,
      egressBytes: egressBytes,
      ingressPackets: ingressPackets,
      egressPackets: egressPackets,
      clientIp: clientIp,
      commonName: commonName,
      status: status,
      connectionEndTime: connectionEndTime,
      postureComplianceStatuses: postureComplianceStatuses == null
          ? null
          : _i3.BuiltList(postureComplianceStatuses),
    );
  }

  /// Describes a client connection.
  factory ClientVpnConnection.build(
          [void Function(ClientVpnConnectionBuilder) updates]) =
      _$ClientVpnConnection;

  const ClientVpnConnection._();

  static const List<_i4.SmithySerializer> serializers = [
    ClientVpnConnectionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnConnectionBuilder b) {}

  /// The ID of the Client VPN endpoint to which the client is connected.
  String? get clientVpnEndpointId;

  /// The current date and time.
  String? get timestamp;

  /// The ID of the client connection.
  String? get connectionId;

  /// The username of the client who established the client connection. This information is only provided if Active Directory client authentication is used.
  String? get username;

  /// The date and time the client connection was established.
  String? get connectionEstablishedTime;

  /// The number of bytes sent by the client.
  String? get ingressBytes;

  /// The number of bytes received by the client.
  String? get egressBytes;

  /// The number of packets sent by the client.
  String? get ingressPackets;

  /// The number of packets received by the client.
  String? get egressPackets;

  /// The IP address of the client.
  String? get clientIp;

  /// The common name associated with the client. This is either the name of the client certificate, or the Active Directory user name.
  String? get commonName;

  /// The current state of the client connection.
  _i2.ClientVpnConnectionStatus? get status;

  /// The date and time the client connection was terminated.
  String? get connectionEndTime;

  /// The statuses returned by the client connect handler for posture compliance, if applicable.
  _i3.BuiltList<String>? get postureComplianceStatuses;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        timestamp,
        connectionId,
        username,
        connectionEstablishedTime,
        ingressBytes,
        egressBytes,
        ingressPackets,
        egressPackets,
        clientIp,
        commonName,
        status,
        connectionEndTime,
        postureComplianceStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnConnection');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'timestamp',
      timestamp,
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
      'connectionEstablishedTime',
      connectionEstablishedTime,
    );
    helper.add(
      'ingressBytes',
      ingressBytes,
    );
    helper.add(
      'egressBytes',
      egressBytes,
    );
    helper.add(
      'ingressPackets',
      ingressPackets,
    );
    helper.add(
      'egressPackets',
      egressPackets,
    );
    helper.add(
      'clientIp',
      clientIp,
    );
    helper.add(
      'commonName',
      commonName,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'connectionEndTime',
      connectionEndTime,
    );
    helper.add(
      'postureComplianceStatuses',
      postureComplianceStatuses,
    );
    return helper.toString();
  }
}

class ClientVpnConnectionEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ClientVpnConnection> {
  const ClientVpnConnectionEc2QuerySerializer() : super('ClientVpnConnection');

  @override
  Iterable<Type> get types => const [
        ClientVpnConnection,
        _$ClientVpnConnection,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnConnection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnConnectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientVpnEndpointId':
          if (value != null) {
            result.clientVpnEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'timestamp':
          if (value != null) {
            result.timestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'connectionId':
          if (value != null) {
            result.connectionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'username':
          if (value != null) {
            result.username = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'connectionEstablishedTime':
          if (value != null) {
            result.connectionEstablishedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ingressBytes':
          if (value != null) {
            result.ingressBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'egressBytes':
          if (value != null) {
            result.egressBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ingressPackets':
          if (value != null) {
            result.ingressPackets = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'egressPackets':
          if (value != null) {
            result.egressPackets = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'clientIp':
          if (value != null) {
            result.clientIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'commonName':
          if (value != null) {
            result.commonName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ClientVpnConnectionStatus),
            ) as _i2.ClientVpnConnectionStatus));
          }
          break;
        case 'connectionEndTime':
          if (value != null) {
            result.connectionEndTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'postureComplianceStatusSet':
          if (value != null) {
            result.postureComplianceStatuses
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as ClientVpnConnection);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ClientVpnConnectionResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientVpnEndpointId != null) {
      result
        ..add(const _i4.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          payload.clientVpnEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timestamp != null) {
      result
        ..add(const _i4.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          payload.timestamp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.connectionId != null) {
      result
        ..add(const _i4.XmlElementName('ConnectionId'))
        ..add(serializers.serialize(
          payload.connectionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.username != null) {
      result
        ..add(const _i4.XmlElementName('Username'))
        ..add(serializers.serialize(
          payload.username!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.connectionEstablishedTime != null) {
      result
        ..add(const _i4.XmlElementName('ConnectionEstablishedTime'))
        ..add(serializers.serialize(
          payload.connectionEstablishedTime!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ingressBytes != null) {
      result
        ..add(const _i4.XmlElementName('IngressBytes'))
        ..add(serializers.serialize(
          payload.ingressBytes!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.egressBytes != null) {
      result
        ..add(const _i4.XmlElementName('EgressBytes'))
        ..add(serializers.serialize(
          payload.egressBytes!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ingressPackets != null) {
      result
        ..add(const _i4.XmlElementName('IngressPackets'))
        ..add(serializers.serialize(
          payload.ingressPackets!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.egressPackets != null) {
      result
        ..add(const _i4.XmlElementName('EgressPackets'))
        ..add(serializers.serialize(
          payload.egressPackets!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientIp != null) {
      result
        ..add(const _i4.XmlElementName('ClientIp'))
        ..add(serializers.serialize(
          payload.clientIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.commonName != null) {
      result
        ..add(const _i4.XmlElementName('CommonName'))
        ..add(serializers.serialize(
          payload.commonName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i4.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.ClientVpnConnectionStatus),
        ));
    }
    if (payload.connectionEndTime != null) {
      result
        ..add(const _i4.XmlElementName('ConnectionEndTime'))
        ..add(serializers.serialize(
          payload.connectionEndTime!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.postureComplianceStatuses != null) {
      result
        ..add(const _i4.XmlElementName('PostureComplianceStatusSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.postureComplianceStatuses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
