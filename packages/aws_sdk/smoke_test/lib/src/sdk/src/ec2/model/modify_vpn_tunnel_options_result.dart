// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpn_tunnel_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart' as _i2;

part 'modify_vpn_tunnel_options_result.g.dart';

abstract class ModifyVpnTunnelOptionsResult
    with
        _i1.AWSEquatable<ModifyVpnTunnelOptionsResult>
    implements
        Built<ModifyVpnTunnelOptionsResult,
            ModifyVpnTunnelOptionsResultBuilder> {
  factory ModifyVpnTunnelOptionsResult({_i2.VpnConnection? vpnConnection}) {
    return _$ModifyVpnTunnelOptionsResult._(vpnConnection: vpnConnection);
  }

  factory ModifyVpnTunnelOptionsResult.build(
          [void Function(ModifyVpnTunnelOptionsResultBuilder) updates]) =
      _$ModifyVpnTunnelOptionsResult;

  const ModifyVpnTunnelOptionsResult._();

  /// Constructs a [ModifyVpnTunnelOptionsResult] from a [payload] and [response].
  factory ModifyVpnTunnelOptionsResult.fromResponse(
    ModifyVpnTunnelOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyVpnTunnelOptionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnTunnelOptionsResultBuilder b) {}

  /// Describes a VPN connection.
  _i2.VpnConnection? get vpnConnection;
  @override
  List<Object?> get props => [vpnConnection];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpnTunnelOptionsResult');
    helper.add(
      'vpnConnection',
      vpnConnection,
    );
    return helper.toString();
  }
}

class ModifyVpnTunnelOptionsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyVpnTunnelOptionsResult> {
  const ModifyVpnTunnelOptionsResultEc2QuerySerializer()
      : super('ModifyVpnTunnelOptionsResult');

  @override
  Iterable<Type> get types => const [
        ModifyVpnTunnelOptionsResult,
        _$ModifyVpnTunnelOptionsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnTunnelOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnTunnelOptionsResultBuilder();
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
    final payload = (object as ModifyVpnTunnelOptionsResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyVpnTunnelOptionsResultResponse',
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
