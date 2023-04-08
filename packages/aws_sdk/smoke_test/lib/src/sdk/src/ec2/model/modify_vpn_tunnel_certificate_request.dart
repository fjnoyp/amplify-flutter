// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpn_tunnel_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpn_tunnel_certificate_request.g.dart';

abstract class ModifyVpnTunnelCertificateRequest
    with
        _i1.HttpInput<ModifyVpnTunnelCertificateRequest>,
        _i2.AWSEquatable<ModifyVpnTunnelCertificateRequest>
    implements
        Built<ModifyVpnTunnelCertificateRequest,
            ModifyVpnTunnelCertificateRequestBuilder> {
  factory ModifyVpnTunnelCertificateRequest({
    required String vpnConnectionId,
    required String vpnTunnelOutsideIpAddress,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVpnTunnelCertificateRequest._(
      vpnConnectionId: vpnConnectionId,
      vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
      dryRun: dryRun,
    );
  }

  factory ModifyVpnTunnelCertificateRequest.build(
          [void Function(ModifyVpnTunnelCertificateRequestBuilder) updates]) =
      _$ModifyVpnTunnelCertificateRequest;

  const ModifyVpnTunnelCertificateRequest._();

  factory ModifyVpnTunnelCertificateRequest.fromRequest(
    ModifyVpnTunnelCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyVpnTunnelCertificateRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnTunnelCertificateRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Amazon Web Services Site-to-Site VPN connection.
  String get vpnConnectionId;

  /// The external IP address of the VPN tunnel.
  String get vpnTunnelOutsideIpAddress;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVpnTunnelCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        vpnTunnelOutsideIpAddress,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpnTunnelCertificateRequest');
    helper.add(
      'vpnConnectionId',
      vpnConnectionId,
    );
    helper.add(
      'vpnTunnelOutsideIpAddress',
      vpnTunnelOutsideIpAddress,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyVpnTunnelCertificateRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpnTunnelCertificateRequest> {
  const ModifyVpnTunnelCertificateRequestEc2QuerySerializer()
      : super('ModifyVpnTunnelCertificateRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelCertificateRequest,
        _$ModifyVpnTunnelCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelCertificateRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'VpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VpnTunnelOutsideIpAddress':
          result.vpnTunnelOutsideIpAddress = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ModifyVpnTunnelCertificateRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpnTunnelCertificateRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('VpnConnectionId'))
      ..add(serializers.serialize(
        payload.vpnConnectionId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('VpnTunnelOutsideIpAddress'))
      ..add(serializers.serialize(
        payload.vpnTunnelOutsideIpAddress,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
