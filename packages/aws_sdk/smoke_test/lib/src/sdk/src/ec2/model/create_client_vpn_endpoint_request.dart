// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_client_vpn_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/client_connect_options.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/client_login_banner_options.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_log_options.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/self_service_portal.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/transport_protocol.dart'
    as _i5;

part 'create_client_vpn_endpoint_request.g.dart';

abstract class CreateClientVpnEndpointRequest
    with
        _i1.HttpInput<CreateClientVpnEndpointRequest>,
        _i2.AWSEquatable<CreateClientVpnEndpointRequest>
    implements
        Built<CreateClientVpnEndpointRequest,
            CreateClientVpnEndpointRequestBuilder> {
  factory CreateClientVpnEndpointRequest({
    required String clientCidrBlock,
    required String serverCertificateArn,
    required List<_i3.ClientVpnAuthenticationRequest> authenticationOptions,
    required _i4.ConnectionLogOptions connectionLogOptions,
    List<String>? dnsServers,
    _i5.TransportProtocol? transportProtocol,
    int? vpnPort,
    String? description,
    bool? splitTunnel,
    bool? dryRun,
    String? clientToken,
    List<_i6.TagSpecification>? tagSpecifications,
    List<String>? securityGroupIds,
    String? vpcId,
    _i7.SelfServicePortal? selfServicePortal,
    _i8.ClientConnectOptions? clientConnectOptions,
    int? sessionTimeoutHours,
    _i9.ClientLoginBannerOptions? clientLoginBannerOptions,
  }) {
    vpnPort ??= 0;
    splitTunnel ??= false;
    dryRun ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    sessionTimeoutHours ??= 0;
    return _$CreateClientVpnEndpointRequest._(
      clientCidrBlock: clientCidrBlock,
      serverCertificateArn: serverCertificateArn,
      authenticationOptions: _i10.BuiltList(authenticationOptions),
      connectionLogOptions: connectionLogOptions,
      dnsServers: dnsServers == null ? null : _i10.BuiltList(dnsServers),
      transportProtocol: transportProtocol,
      vpnPort: vpnPort,
      description: description,
      splitTunnel: splitTunnel,
      dryRun: dryRun,
      clientToken: clientToken,
      tagSpecifications:
          tagSpecifications == null ? null : _i10.BuiltList(tagSpecifications),
      securityGroupIds:
          securityGroupIds == null ? null : _i10.BuiltList(securityGroupIds),
      vpcId: vpcId,
      selfServicePortal: selfServicePortal,
      clientConnectOptions: clientConnectOptions,
      sessionTimeoutHours: sessionTimeoutHours,
      clientLoginBannerOptions: clientLoginBannerOptions,
    );
  }

  factory CreateClientVpnEndpointRequest.build(
          [void Function(CreateClientVpnEndpointRequestBuilder) updates]) =
      _$CreateClientVpnEndpointRequest;

  const CreateClientVpnEndpointRequest._();

  factory CreateClientVpnEndpointRequest.fromRequest(
    CreateClientVpnEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateClientVpnEndpointRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateClientVpnEndpointRequestBuilder b) {
    b.vpnPort = 0;
    b.splitTunnel = false;
    b.dryRun = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.sessionTimeoutHours = 0;
  }

  /// The IPv4 address range, in CIDR notation, from which to assign client IP addresses. The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually. The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater.
  String get clientCidrBlock;

  /// The ARN of the server certificate. For more information, see the [Certificate Manager User Guide](https://docs.aws.amazon.com/acm/latest/userguide/).
  String get serverCertificateArn;

  /// Information about the authentication method to be used to authenticate clients.
  _i10.BuiltList<_i3.ClientVpnAuthenticationRequest> get authenticationOptions;

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
  _i4.ConnectionLogOptions get connectionLogOptions;

  /// Information about the DNS servers to be used for DNS resolution. A Client VPN endpoint can have up to two DNS servers. If no DNS server is specified, the DNS address configured on the device is used for the DNS server.
  _i10.BuiltList<String>? get dnsServers;

  /// The transport protocol to be used by the VPN session.
  ///
  /// Default value: `udp`
  _i5.TransportProtocol? get transportProtocol;

  /// The port number to assign to the Client VPN endpoint for TCP and UDP traffic.
  ///
  /// Valid Values: `443` | `1194`
  ///
  /// Default Value: `443`
  int get vpnPort;

  /// A brief description of the Client VPN endpoint.
  String? get description;

  /// Indicates whether split-tunnel is enabled on the Client VPN endpoint.
  ///
  /// By default, split-tunnel on a VPN endpoint is disabled.
  ///
  /// For information about split-tunnel VPN endpoints, see [Split-tunnel Client VPN endpoint](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html) in the _Client VPN Administrator Guide_.
  bool get splitTunnel;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The tags to apply to the Client VPN endpoint during creation.
  _i10.BuiltList<_i6.TagSpecification>? get tagSpecifications;

  /// The IDs of one or more security groups to apply to the target network. You must also specify the ID of the VPC that contains the security groups.
  _i10.BuiltList<String>? get securityGroupIds;

  /// The ID of the VPC to associate with the Client VPN endpoint. If no security group IDs are specified in the request, the default security group for the VPC is applied.
  String? get vpcId;

  /// Specify whether to enable the self-service portal for the Client VPN endpoint.
  ///
  /// Default Value: `enabled`
  _i7.SelfServicePortal? get selfServicePortal;

  /// The options for managing connection authorization for new client connections.
  _i8.ClientConnectOptions? get clientConnectOptions;

  /// The maximum VPN session duration time in hours.
  ///
  /// Valid values: `8 | 10 | 12 | 24`
  ///
  /// Default value: `24`
  int get sessionTimeoutHours;

  /// Options for enabling a customizable text banner that will be displayed on Amazon Web Services provided clients when a VPN session is established.
  _i9.ClientLoginBannerOptions? get clientLoginBannerOptions;
  @override
  CreateClientVpnEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientCidrBlock,
        serverCertificateArn,
        authenticationOptions,
        connectionLogOptions,
        dnsServers,
        transportProtocol,
        vpnPort,
        description,
        splitTunnel,
        dryRun,
        clientToken,
        tagSpecifications,
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
        newBuiltValueToStringHelper('CreateClientVpnEndpointRequest');
    helper.add(
      'clientCidrBlock',
      clientCidrBlock,
    );
    helper.add(
      'serverCertificateArn',
      serverCertificateArn,
    );
    helper.add(
      'authenticationOptions',
      authenticationOptions,
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
      'transportProtocol',
      transportProtocol,
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
      'clientToken',
      clientToken,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
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

class CreateClientVpnEndpointRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateClientVpnEndpointRequest> {
  const CreateClientVpnEndpointRequestEc2QuerySerializer()
      : super('CreateClientVpnEndpointRequest');

  @override
  Iterable<Type> get types => const [
        CreateClientVpnEndpointRequest,
        _$CreateClientVpnEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateClientVpnEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateClientVpnEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientCidrBlock':
          result.clientCidrBlock = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServerCertificateArn':
          result.serverCertificateArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Authentication':
          result.authenticationOptions.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.ec2QueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i3.ClientVpnAuthenticationRequest)],
            ),
          ) as _i10.BuiltList<_i3.ClientVpnAuthenticationRequest>));
          break;
        case 'ConnectionLogOptions':
          result.connectionLogOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ConnectionLogOptions),
          ) as _i4.ConnectionLogOptions));
          break;
        case 'DnsServers':
          if (value != null) {
            result.dnsServers.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(String)],
              ),
            ) as _i10.BuiltList<String>));
          }
          break;
        case 'TransportProtocol':
          if (value != null) {
            result.transportProtocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.TransportProtocol),
            ) as _i5.TransportProtocol);
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
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i6.TagSpecification)],
              ),
            ) as _i10.BuiltList<_i6.TagSpecification>));
          }
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
                _i10.BuiltList,
                [FullType(String)],
              ),
            ) as _i10.BuiltList<String>));
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
              specifiedType: const FullType(_i7.SelfServicePortal),
            ) as _i7.SelfServicePortal);
          }
          break;
        case 'ClientConnectOptions':
          if (value != null) {
            result.clientConnectOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.ClientConnectOptions),
            ) as _i8.ClientConnectOptions));
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
              specifiedType: const FullType(_i9.ClientLoginBannerOptions),
            ) as _i9.ClientLoginBannerOptions));
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
    final payload = (object as CreateClientVpnEndpointRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateClientVpnEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientCidrBlock'))
      ..add(serializers.serialize(
        payload.clientCidrBlock,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('ServerCertificateArn'))
      ..add(serializers.serialize(
        payload.serverCertificateArn,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Authentication'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.ec2QueryList)
              .serialize(
        serializers,
        payload.authenticationOptions,
        specifiedType: const FullType.nullable(
          _i10.BuiltList,
          [FullType(_i3.ClientVpnAuthenticationRequest)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('ConnectionLogOptions'))
      ..add(serializers.serialize(
        payload.connectionLogOptions,
        specifiedType: const FullType(_i4.ConnectionLogOptions),
      ));
    if (payload.dnsServers != null) {
      result
        ..add(const _i1.XmlElementName('DnsServers'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.dnsServers!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.transportProtocol != null) {
      result
        ..add(const _i1.XmlElementName('TransportProtocol'))
        ..add(serializers.serialize(
          payload.transportProtocol!,
          specifiedType: const FullType.nullable(_i5.TransportProtocol),
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
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i6.TagSpecification)],
          ),
        ));
    }
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
            _i10.BuiltList,
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
          specifiedType: const FullType.nullable(_i7.SelfServicePortal),
        ));
    }
    if (payload.clientConnectOptions != null) {
      result
        ..add(const _i1.XmlElementName('ClientConnectOptions'))
        ..add(serializers.serialize(
          payload.clientConnectOptions!,
          specifiedType: const FullType(_i8.ClientConnectOptions),
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
          specifiedType: const FullType(_i9.ClientLoginBannerOptions),
        ));
    }
    return result;
  }
}
