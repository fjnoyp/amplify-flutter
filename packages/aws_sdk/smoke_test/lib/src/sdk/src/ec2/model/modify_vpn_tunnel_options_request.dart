// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpn_tunnel_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_vpn_tunnel_options_specification.dart'
    as _i3;

part 'modify_vpn_tunnel_options_request.g.dart';

abstract class ModifyVpnTunnelOptionsRequest
    with
        _i1.HttpInput<ModifyVpnTunnelOptionsRequest>,
        _i2.AWSEquatable<ModifyVpnTunnelOptionsRequest>
    implements
        Built<ModifyVpnTunnelOptionsRequest,
            ModifyVpnTunnelOptionsRequestBuilder> {
  factory ModifyVpnTunnelOptionsRequest({
    required String vpnConnectionId,
    required String vpnTunnelOutsideIpAddress,
    required _i3.ModifyVpnTunnelOptionsSpecification tunnelOptions,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVpnTunnelOptionsRequest._(
      vpnConnectionId: vpnConnectionId,
      vpnTunnelOutsideIpAddress: vpnTunnelOutsideIpAddress,
      tunnelOptions: tunnelOptions,
      dryRun: dryRun,
    );
  }

  factory ModifyVpnTunnelOptionsRequest.build(
          [void Function(ModifyVpnTunnelOptionsRequestBuilder) updates]) =
      _$ModifyVpnTunnelOptionsRequest;

  const ModifyVpnTunnelOptionsRequest._();

  factory ModifyVpnTunnelOptionsRequest.fromRequest(
    ModifyVpnTunnelOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyVpnTunnelOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnTunnelOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Amazon Web Services Site-to-Site VPN connection.
  String get vpnConnectionId;

  /// The external IP address of the VPN tunnel.
  String get vpnTunnelOutsideIpAddress;

  /// The tunnel options to modify.
  _i3.ModifyVpnTunnelOptionsSpecification get tunnelOptions;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVpnTunnelOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        vpnTunnelOutsideIpAddress,
        tunnelOptions,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpnTunnelOptionsRequest');
    helper.add(
      'vpnConnectionId',
      vpnConnectionId,
    );
    helper.add(
      'vpnTunnelOutsideIpAddress',
      vpnTunnelOutsideIpAddress,
    );
    helper.add(
      'tunnelOptions',
      tunnelOptions,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyVpnTunnelOptionsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpnTunnelOptionsRequest> {
  const ModifyVpnTunnelOptionsRequestEc2QuerySerializer()
      : super('ModifyVpnTunnelOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelOptionsRequest,
        _$ModifyVpnTunnelOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelOptionsRequestBuilder();
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
        case 'TunnelOptions':
          result.tunnelOptions.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.ModifyVpnTunnelOptionsSpecification),
          ) as _i3.ModifyVpnTunnelOptionsSpecification));
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
    final payload = (object as ModifyVpnTunnelOptionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpnTunnelOptionsRequestResponse',
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
      ..add(const _i1.XmlElementName('TunnelOptions'))
      ..add(serializers.serialize(
        payload.tunnelOptions,
        specifiedType: const FullType(_i3.ModifyVpnTunnelOptionsSpecification),
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
