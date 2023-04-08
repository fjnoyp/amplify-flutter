// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpn_tunnel_certificate_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart' as _i2;

part 'modify_vpn_tunnel_certificate_result.g.dart';

abstract class ModifyVpnTunnelCertificateResult
    with
        _i1.AWSEquatable<ModifyVpnTunnelCertificateResult>
    implements
        Built<ModifyVpnTunnelCertificateResult,
            ModifyVpnTunnelCertificateResultBuilder> {
  factory ModifyVpnTunnelCertificateResult({_i2.VpnConnection? vpnConnection}) {
    return _$ModifyVpnTunnelCertificateResult._(vpnConnection: vpnConnection);
  }

  factory ModifyVpnTunnelCertificateResult.build(
          [void Function(ModifyVpnTunnelCertificateResultBuilder) updates]) =
      _$ModifyVpnTunnelCertificateResult;

  const ModifyVpnTunnelCertificateResult._();

  /// Constructs a [ModifyVpnTunnelCertificateResult] from a [payload] and [response].
  factory ModifyVpnTunnelCertificateResult.fromResponse(
    ModifyVpnTunnelCertificateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyVpnTunnelCertificateResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnTunnelCertificateResultBuilder b) {}

  /// Describes a VPN connection.
  _i2.VpnConnection? get vpnConnection;
  @override
  List<Object?> get props => [vpnConnection];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyVpnTunnelCertificateResult');
    helper.add(
      'vpnConnection',
      vpnConnection,
    );
    return helper.toString();
  }
}

class ModifyVpnTunnelCertificateResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyVpnTunnelCertificateResult> {
  const ModifyVpnTunnelCertificateResultEc2QuerySerializer()
      : super('ModifyVpnTunnelCertificateResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelCertificateResult,
        _$ModifyVpnTunnelCertificateResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelCertificateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelCertificateResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnConnection':
          if (value != null) {
            result.vpnConnection.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpnConnection),
            ) as _i2.VpnConnection));
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
    final payload = (object as ModifyVpnTunnelCertificateResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyVpnTunnelCertificateResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnConnection != null) {
      result
        ..add(const _i3.XmlElementName('VpnConnection'))
        ..add(serializers.serialize(
          payload.vpnConnection!,
          specifiedType: const FullType(_i2.VpnConnection),
        ));
    }
    return result;
  }
}
