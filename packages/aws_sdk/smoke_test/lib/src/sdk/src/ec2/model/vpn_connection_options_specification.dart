// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpn_connection_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_inside_ip_version.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_tunnel_options_specification.dart'
    as _i3;

part 'vpn_connection_options_specification.g.dart';

/// Describes VPN connection options.
abstract class VpnConnectionOptionsSpecification
    with
        _i1.AWSEquatable<VpnConnectionOptionsSpecification>
    implements
        Built<VpnConnectionOptionsSpecification,
            VpnConnectionOptionsSpecificationBuilder> {
  /// Describes VPN connection options.
  factory VpnConnectionOptionsSpecification({
    bool? enableAcceleration,
    bool? staticRoutesOnly,
    _i2.TunnelInsideIpVersion? tunnelInsideIpVersion,
    List<_i3.VpnTunnelOptionsSpecification>? tunnelOptions,
    String? localIpv4NetworkCidr,
    String? remoteIpv4NetworkCidr,
    String? localIpv6NetworkCidr,
    String? remoteIpv6NetworkCidr,
    String? outsideIpAddressType,
    String? transportTransitGatewayAttachmentId,
  }) {
    enableAcceleration ??= false;
    staticRoutesOnly ??= false;
    return _$VpnConnectionOptionsSpecification._(
      enableAcceleration: enableAcceleration,
      staticRoutesOnly: staticRoutesOnly,
      tunnelInsideIpVersion: tunnelInsideIpVersion,
      tunnelOptions:
          tunnelOptions == null ? null : _i4.BuiltList(tunnelOptions),
      localIpv4NetworkCidr: localIpv4NetworkCidr,
      remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
      localIpv6NetworkCidr: localIpv6NetworkCidr,
      remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
      outsideIpAddressType: outsideIpAddressType,
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
    );
  }

  /// Describes VPN connection options.
  factory VpnConnectionOptionsSpecification.build(
          [void Function(VpnConnectionOptionsSpecificationBuilder) updates]) =
      _$VpnConnectionOptionsSpecification;

  const VpnConnectionOptionsSpecification._();

  static const List<_i5.SmithySerializer> serializers = [
    VpnConnectionOptionsSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnConnectionOptionsSpecificationBuilder b) {
    b.enableAcceleration = false;
    b.staticRoutesOnly = false;
  }

  /// Indicate whether to enable acceleration for the VPN connection.
  ///
  /// Default: `false`
  bool get enableAcceleration;

  /// Indicate whether the VPN connection uses static routes only. If you are creating a VPN connection for a device that does not support BGP, you must specify `true`. Use CreateVpnConnectionRoute to create a static route.
  ///
  /// Default: `false`
  bool get staticRoutesOnly;

  /// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic.
  ///
  /// Default: `ipv4`
  _i2.TunnelInsideIpVersion? get tunnelInsideIpVersion;

  /// The tunnel options for the VPN connection.
  _i4.BuiltList<_i3.VpnTunnelOptionsSpecification>? get tunnelOptions;

  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  ///
  /// Default: `0.0.0.0/0`
  String? get localIpv4NetworkCidr;

  /// The IPv4 CIDR on the Amazon Web Services side of the VPN connection.
  ///
  /// Default: `0.0.0.0/0`
  String? get remoteIpv4NetworkCidr;

  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  ///
  /// Default: `::/0`
  String? get localIpv6NetworkCidr;

  /// The IPv6 CIDR on the Amazon Web Services side of the VPN connection.
  ///
  /// Default: `::/0`
  String? get remoteIpv6NetworkCidr;

  /// The type of IPv4 address assigned to the outside interface of the customer gateway device.
  ///
  /// Valid values: `PrivateIpv4` | `PublicIpv4`
  ///
  /// Default: `PublicIpv4`
  String? get outsideIpAddressType;

  /// The transit gateway attachment ID to use for the VPN tunnel.
  ///
  /// Required if `OutsideIpAddressType` is set to `PrivateIpv4`.
  String? get transportTransitGatewayAttachmentId;
  @override
  List<Object?> get props => [
        enableAcceleration,
        staticRoutesOnly,
        tunnelInsideIpVersion,
        tunnelOptions,
        localIpv4NetworkCidr,
        remoteIpv4NetworkCidr,
        localIpv6NetworkCidr,
        remoteIpv6NetworkCidr,
        outsideIpAddressType,
        transportTransitGatewayAttachmentId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VpnConnectionOptionsSpecification');
    helper.add(
      'enableAcceleration',
      enableAcceleration,
    );
    helper.add(
      'staticRoutesOnly',
      staticRoutesOnly,
    );
    helper.add(
      'tunnelInsideIpVersion',
      tunnelInsideIpVersion,
    );
    helper.add(
      'tunnelOptions',
      tunnelOptions,
    );
    helper.add(
      'localIpv4NetworkCidr',
      localIpv4NetworkCidr,
    );
    helper.add(
      'remoteIpv4NetworkCidr',
      remoteIpv4NetworkCidr,
    );
    helper.add(
      'localIpv6NetworkCidr',
      localIpv6NetworkCidr,
    );
    helper.add(
      'remoteIpv6NetworkCidr',
      remoteIpv6NetworkCidr,
    );
    helper.add(
      'outsideIpAddressType',
      outsideIpAddressType,
    );
    helper.add(
      'transportTransitGatewayAttachmentId',
      transportTransitGatewayAttachmentId,
    );
    return helper.toString();
  }
}

class VpnConnectionOptionsSpecificationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<VpnConnectionOptionsSpecification> {
  const VpnConnectionOptionsSpecificationEc2QuerySerializer()
      : super('VpnConnectionOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        VpnConnectionOptionsSpecification,
        _$VpnConnectionOptionsSpecification,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnConnectionOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnConnectionOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'EnableAcceleration':
          result.enableAcceleration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'staticRoutesOnly':
          result.staticRoutesOnly = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'TunnelInsideIpVersion':
          if (value != null) {
            result.tunnelInsideIpVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TunnelInsideIpVersion),
            ) as _i2.TunnelInsideIpVersion);
          }
          break;
        case 'TunnelOptions':
          if (value != null) {
            result.tunnelOptions.replace((const _i5.XmlBuiltListSerializer(
                    indexer: _i5.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.VpnTunnelOptionsSpecification)],
              ),
            ) as _i4.BuiltList<_i3.VpnTunnelOptionsSpecification>));
          }
          break;
        case 'LocalIpv4NetworkCidr':
          if (value != null) {
            result.localIpv4NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RemoteIpv4NetworkCidr':
          if (value != null) {
            result.remoteIpv4NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LocalIpv6NetworkCidr':
          if (value != null) {
            result.localIpv6NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RemoteIpv6NetworkCidr':
          if (value != null) {
            result.remoteIpv6NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OutsideIpAddressType':
          if (value != null) {
            result.outsideIpAddressType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TransportTransitGatewayAttachmentId':
          if (value != null) {
            result.transportTransitGatewayAttachmentId =
                (serializers.deserialize(
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
    final payload = (object as VpnConnectionOptionsSpecification);
    final result = <Object?>[
      const _i5.XmlElementName(
        'VpnConnectionOptionsSpecificationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i5.XmlElementName('EnableAcceleration'))
      ..add(serializers.serialize(
        payload.enableAcceleration,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i5.XmlElementName('StaticRoutesOnly'))
      ..add(serializers.serialize(
        payload.staticRoutesOnly,
        specifiedType: const FullType(bool),
      ));
    if (payload.tunnelInsideIpVersion != null) {
      result
        ..add(const _i5.XmlElementName('TunnelInsideIpVersion'))
        ..add(serializers.serialize(
          payload.tunnelInsideIpVersion!,
          specifiedType: const FullType.nullable(_i2.TunnelInsideIpVersion),
        ));
    }
    if (payload.tunnelOptions != null) {
      result
        ..add(const _i5.XmlElementName('TunnelOptions'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.tunnelOptions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.VpnTunnelOptionsSpecification)],
          ),
        ));
    }
    if (payload.localIpv4NetworkCidr != null) {
      result
        ..add(const _i5.XmlElementName('LocalIpv4NetworkCidr'))
        ..add(serializers.serialize(
          payload.localIpv4NetworkCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.remoteIpv4NetworkCidr != null) {
      result
        ..add(const _i5.XmlElementName('RemoteIpv4NetworkCidr'))
        ..add(serializers.serialize(
          payload.remoteIpv4NetworkCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.localIpv6NetworkCidr != null) {
      result
        ..add(const _i5.XmlElementName('LocalIpv6NetworkCidr'))
        ..add(serializers.serialize(
          payload.localIpv6NetworkCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.remoteIpv6NetworkCidr != null) {
      result
        ..add(const _i5.XmlElementName('RemoteIpv6NetworkCidr'))
        ..add(serializers.serialize(
          payload.remoteIpv6NetworkCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.outsideIpAddressType != null) {
      result
        ..add(const _i5.XmlElementName('OutsideIpAddressType'))
        ..add(serializers.serialize(
          payload.outsideIpAddressType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transportTransitGatewayAttachmentId != null) {
      result
        ..add(const _i5.XmlElementName('TransportTransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          payload.transportTransitGatewayAttachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
