// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpn_connection_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_inside_ip_version.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tunnel_option.dart' as _i3;

part 'vpn_connection_options.g.dart';

/// Describes VPN connection options.
abstract class VpnConnectionOptions
    with _i1.AWSEquatable<VpnConnectionOptions>
    implements Built<VpnConnectionOptions, VpnConnectionOptionsBuilder> {
  /// Describes VPN connection options.
  factory VpnConnectionOptions({
    bool? enableAcceleration,
    bool? staticRoutesOnly,
    String? localIpv4NetworkCidr,
    String? remoteIpv4NetworkCidr,
    String? localIpv6NetworkCidr,
    String? remoteIpv6NetworkCidr,
    String? outsideIpAddressType,
    String? transportTransitGatewayAttachmentId,
    _i2.TunnelInsideIpVersion? tunnelInsideIpVersion,
    List<_i3.TunnelOption>? tunnelOptions,
  }) {
    enableAcceleration ??= false;
    staticRoutesOnly ??= false;
    return _$VpnConnectionOptions._(
      enableAcceleration: enableAcceleration,
      staticRoutesOnly: staticRoutesOnly,
      localIpv4NetworkCidr: localIpv4NetworkCidr,
      remoteIpv4NetworkCidr: remoteIpv4NetworkCidr,
      localIpv6NetworkCidr: localIpv6NetworkCidr,
      remoteIpv6NetworkCidr: remoteIpv6NetworkCidr,
      outsideIpAddressType: outsideIpAddressType,
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
      tunnelInsideIpVersion: tunnelInsideIpVersion,
      tunnelOptions:
          tunnelOptions == null ? null : _i4.BuiltList(tunnelOptions),
    );
  }

  /// Describes VPN connection options.
  factory VpnConnectionOptions.build(
          [void Function(VpnConnectionOptionsBuilder) updates]) =
      _$VpnConnectionOptions;

  const VpnConnectionOptions._();

  static const List<_i5.SmithySerializer> serializers = [
    VpnConnectionOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnConnectionOptionsBuilder b) {
    b.enableAcceleration = false;
    b.staticRoutesOnly = false;
  }

  /// Indicates whether acceleration is enabled for the VPN connection.
  bool get enableAcceleration;

  /// Indicates whether the VPN connection uses static routes only. Static routes must be used for devices that don't support BGP.
  bool get staticRoutesOnly;

  /// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
  String? get localIpv4NetworkCidr;

  /// The IPv4 CIDR on the Amazon Web Services side of the VPN connection.
  String? get remoteIpv4NetworkCidr;

  /// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
  String? get localIpv6NetworkCidr;

  /// The IPv6 CIDR on the Amazon Web Services side of the VPN connection.
  String? get remoteIpv6NetworkCidr;

  /// The type of IPv4 address assigned to the outside interface of the customer gateway.
  ///
  /// Valid values: `PrivateIpv4` | `PublicIpv4`
  ///
  /// Default: `PublicIpv4`
  String? get outsideIpAddressType;

  /// The transit gateway attachment ID in use for the VPN tunnel.
  String? get transportTransitGatewayAttachmentId;

  /// Indicates whether the VPN tunnels process IPv4 or IPv6 traffic.
  _i2.TunnelInsideIpVersion? get tunnelInsideIpVersion;

  /// Indicates the VPN tunnel options.
  _i4.BuiltList<_i3.TunnelOption>? get tunnelOptions;
  @override
  List<Object?> get props => [
        enableAcceleration,
        staticRoutesOnly,
        localIpv4NetworkCidr,
        remoteIpv4NetworkCidr,
        localIpv6NetworkCidr,
        remoteIpv6NetworkCidr,
        outsideIpAddressType,
        transportTransitGatewayAttachmentId,
        tunnelInsideIpVersion,
        tunnelOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnConnectionOptions');
    helper.add(
      'enableAcceleration',
      enableAcceleration,
    );
    helper.add(
      'staticRoutesOnly',
      staticRoutesOnly,
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
    helper.add(
      'tunnelInsideIpVersion',
      tunnelInsideIpVersion,
    );
    helper.add(
      'tunnelOptions',
      tunnelOptions,
    );
    return helper.toString();
  }
}

class VpnConnectionOptionsEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<VpnConnectionOptions> {
  const VpnConnectionOptionsEc2QuerySerializer()
      : super('VpnConnectionOptions');

  @override
  Iterable<Type> get types => const [
        VpnConnectionOptions,
        _$VpnConnectionOptions,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnConnectionOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnConnectionOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'enableAcceleration':
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
        case 'localIpv4NetworkCidr':
          if (value != null) {
            result.localIpv4NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'remoteIpv4NetworkCidr':
          if (value != null) {
            result.remoteIpv4NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'localIpv6NetworkCidr':
          if (value != null) {
            result.localIpv6NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'remoteIpv6NetworkCidr':
          if (value != null) {
            result.remoteIpv6NetworkCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'outsideIpAddressType':
          if (value != null) {
            result.outsideIpAddressType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transportTransitGatewayAttachmentId':
          if (value != null) {
            result.transportTransitGatewayAttachmentId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tunnelInsideIpVersion':
          if (value != null) {
            result.tunnelInsideIpVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TunnelInsideIpVersion),
            ) as _i2.TunnelInsideIpVersion);
          }
          break;
        case 'tunnelOptionSet':
          if (value != null) {
            result.tunnelOptions.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TunnelOption)],
              ),
            ) as _i4.BuiltList<_i3.TunnelOption>));
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
    final payload = (object as VpnConnectionOptions);
    final result = <Object?>[
      const _i5.XmlElementName(
        'VpnConnectionOptionsResponse',
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
        ..add(const _i5.XmlElementName('TunnelOptionSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tunnelOptions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TunnelOption)],
          ),
        ));
    }
    return result;
  }
}
