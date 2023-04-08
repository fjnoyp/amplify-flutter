// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_client_vpn_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_options.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_options.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_options.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_servers_options_modify_structure.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/self_service_portal.dart'
    as _i5;

part 'modify_client_vpn_endpoint_request.g.dart';

abstract class ModifyClientVpnEndpointRequest
    with
        _i1.HttpInput<ModifyClientVpnEndpointRequest>,
        _i2.AWSEquatable<ModifyClientVpnEndpointRequest>
    implements
        Built<ModifyClientVpnEndpointRequest,
            ModifyClientVpnEndpointRequestBuilder> {
  factory ModifyClientVpnEndpointRequest({
    required String clientVpnEndpointId,
    String? serverCertificateArn,
    _i3.ConnectionLogOptions? connectionLogOptions,
    _i4.DnsServersOptionsModifyStructure? dnsServers,
    int? vpnPort,
    String? description,
    bool? splitTunnel,
    bool? dryRun,
    List<String>? securityGroupIds,
    String? vpcId,
    _i5.SelfServicePortal? selfServicePortal,
    _i6.ClientConnectOptions? clientConnectOptions,
    int? sessionTimeoutHours,
    _i7.ClientLoginBannerOptions? clientLoginBannerOptions,
  }) {
    vpnPort ??= 0;
    splitTunnel ??= false;
    dryRun ??= false;
    sessionTimeoutHours ??= 0;
    return _$ModifyClientVpnEndpointRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      serverCertificateArn: serverCertificateArn,
      connectionLogOptions: connectionLogOptions,
      dnsServers: dnsServers,
      vpnPort: vpnPort,
      description: description,
      splitTunnel: splitTunnel,
      dryRun: dryRun,
      securityGroupIds:
          securityGroupIds == null ? null : _i8.BuiltList(securityGroupIds),
      vpcId: vpcId,
      selfServicePortal: selfServicePortal,
      clientConnectOptions: clientConnectOptions,
      sessionTimeoutHours: sessionTimeoutHours,
      clientLoginBannerOptions: clientLoginBannerOptions,
    );
  }

  factory ModifyClientVpnEndpointRequest.build(
          [void Function(ModifyClientVpnEndpointRequestBuilder) updates]) =
      _$ModifyClientVpnEndpointRequest;

  const ModifyClientVpnEndpointRequest._();

  factory ModifyClientVpnEndpointRequest.fromRequest(
    ModifyClientVpnEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyClientVpnEndpointRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyClientVpnEndpointRequestBuilder b) {
    b.vpnPort = 0;
    b.splitTunnel = false;
    b.dryRun = false;
    b.sessionTimeoutHours = 0;
  }

  /// The ID of the Client VPN endpoint to modify.
  String get clientVpnEndpointId;

  /// The ARN of the server certificate to be used. The server certificate must be provisioned in Certificate Manager (ACM).
  String? get serverCertificateArn;

  /// Information about the client connection logging options.
  ///
  /// If you enable client connection logging, data about client connections is sent to a Cloudwatch Logs log stream. The following information is logged:
  ///
  /// *   Client connection requests
  ///
  /// *   Client connection results (successful and unsuccessful)
  ///
  /// *   Reasons for unsuccessful client connection requests
  ///
  /// *   Client connection termination time
  _i3.ConnectionLogOptions? get connectionLogOptions;

  /// Information about the DNS servers to be used by Client VPN connections. A Client VPN endpoint can have up to two DNS servers.
  _i4.DnsServersOptionsModifyStructure? get dnsServers;

  /// The port number to assign to the Client VPN endpoint for TCP and UDP traffic.
  ///
  /// Valid Values: `443` | `1194`
  ///
  /// Default Value: `443`
  int get vpnPort;

  /// A brief description of the Client VPN endpoint.
  String? get description;

  /// Indicates whether the VPN is split-tunnel.
  ///
  /// For information about split-tunnel VPN endpoints, see [Split-tunnel Client VPN endpoint](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html) in the _Client VPN Administrator Guide_.
  bool get splitTunnel;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of one or more security groups to apply to the target network.
  _i8.BuiltList<String>? get securityGroupIds;

  /// The ID of the VPC to associate with the Client VPN endpoint.
  String? get vpcId;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint.
  _i5.SelfServicePortal? get selfServicePortal;

  /// The options for managing connection authorization for new client connections.
  _i6.ClientConnectOptions? get clientConnectOptions;

  /// The maximum VPN session duration time in hours.
  ///
  /// Valid values: `8 | 10 | 12 | 24`
  ///
  /// Default value: `24`
  int get sessionTimeoutHours;

  /// Options for enabling a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  _i7.ClientLoginBannerOptions? get clientLoginBannerOptions;
  @override
  ModifyClientVpnEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        serverCertificateArn,
        connectionLogOptions,
        dnsServers,
        vpnPort,
        description,
        splitTunnel,
        dryRun,
        securityGroupIds,
        vpcId,
        selfServicePortal,
        clientConnectOptions,
        sessionTimeoutHours,
        clientLoginBannerOptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyClientVpnEndpointRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'serverCertificateArn',
      serverCertificateArn,
    );
    helper.add(
      'connectionLogOptions',
      connectionLogOptions,
    );
    helper.add(
      'dnsServers',
      dnsServers,
    );
    helper.add(
      'vpnPort',
      vpnPort,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'splitTunnel',
      splitTunnel,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'securityGroupIds',
      securityGroupIds,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'selfServicePortal',
      selfServicePortal,
    );
    helper.add(
      'clientConnectOptions',
      clientConnectOptions,
    );
    helper.add(
      'sessionTimeoutHours',
      sessionTimeoutHours,
    );
    helper.add(
      'clientLoginBannerOptions',
      clientLoginBannerOptions,
    );
    return helper.toString();
  }
}

class ModifyClientVpnEndpointRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyClientVpnEndpointRequest> {
  const ModifyClientVpnEndpointRequestEc2QuerySerializer()
      : super('ModifyClientVpnEndpointRequest');

  @override
  Iterable<Type> get types => const [
        ModifyClientVpnEndpointRequest,
        _$ModifyClientVpnEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyClientVpnEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyClientVpnEndpointRequestBuilder();
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
        case 'ServerCertificateArn':
          if (value != null) {
            result.serverCertificateArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConnectionLogOptions':
          if (value != null) {
            result.connectionLogOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ConnectionLogOptions),
            ) as _i3.ConnectionLogOptions));
          }
          break;
        case 'DnsServers':
          if (value != null) {
            result.dnsServers.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.DnsServersOptionsModifyStructure),
            ) as _i4.DnsServersOptionsModifyStructure));
          }
          break;
        case 'VpnPort':
          result.vpnPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SplitTunnel':
          result.splitTunnel = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'SecurityGroupId':
          if (value != null) {
            result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'VpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SelfServicePortal':
          if (value != null) {
            result.selfServicePortal = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.SelfServicePortal),
            ) as _i5.SelfServicePortal);
          }
          break;
        case 'ClientConnectOptions':
          if (value != null) {
            result.clientConnectOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.ClientConnectOptions),
            ) as _i6.ClientConnectOptions));
          }
          break;
        case 'SessionTimeoutHours':
          result.sessionTimeoutHours = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ClientLoginBannerOptions':
          if (value != null) {
            result.clientLoginBannerOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.ClientLoginBannerOptions),
            ) as _i7.ClientLoginBannerOptions));
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
    final payload = (object as ModifyClientVpnEndpointRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyClientVpnEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
      ..add(serializers.serialize(
        payload.clientVpnEndpointId,
        specifiedType: const FullType(String),
      ));
    if (payload.serverCertificateArn != null) {
      result
        ..add(const _i1.XmlElementName('ServerCertificateArn'))
        ..add(serializers.serialize(
          payload.serverCertificateArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.connectionLogOptions != null) {
      result
        ..add(const _i1.XmlElementName('ConnectionLogOptions'))
        ..add(serializers.serialize(
          payload.connectionLogOptions!,
          specifiedType: const FullType(_i3.ConnectionLogOptions),
        ));
    }
    if (payload.dnsServers != null) {
      result
        ..add(const _i1.XmlElementName('DnsServers'))
        ..add(serializers.serialize(
          payload.dnsServers!,
          specifiedType: const FullType(_i4.DnsServersOptionsModifyStructure),
        ));
    }
    result
      ..add(const _i1.XmlElementName('VpnPort'))
      ..add(serializers.serialize(
        payload.vpnPort,
        specifiedType: const FullType(int),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SplitTunnel'))
      ..add(serializers.serialize(
        payload.splitTunnel,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.securityGroupIds != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupIds!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.selfServicePortal != null) {
      result
        ..add(const _i1.XmlElementName('SelfServicePortal'))
        ..add(serializers.serialize(
          payload.selfServicePortal!,
          specifiedType: const FullType.nullable(_i5.SelfServicePortal),
        ));
    }
    if (payload.clientConnectOptions != null) {
      result
        ..add(const _i1.XmlElementName('ClientConnectOptions'))
        ..add(serializers.serialize(
          payload.clientConnectOptions!,
          specifiedType: const FullType(_i6.ClientConnectOptions),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SessionTimeoutHours'))
      ..add(serializers.serialize(
        payload.sessionTimeoutHours,
        specifiedType: const FullType(int),
      ));
    if (payload.clientLoginBannerOptions != null) {
      result
        ..add(const _i1.XmlElementName('ClientLoginBannerOptions'))
        ..add(serializers.serialize(
          payload.clientLoginBannerOptions!,
          specifiedType: const FullType(_i7.ClientLoginBannerOptions),
        ));
    }
    return result;
  }
}
