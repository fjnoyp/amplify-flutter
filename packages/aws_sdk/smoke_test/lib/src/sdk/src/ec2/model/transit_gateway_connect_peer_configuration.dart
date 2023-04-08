// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_connect_peer_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol_value.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_bgp_configuration.dart'
    as _i3;

part 'transit_gateway_connect_peer_configuration.g.dart';

/// Describes the Connect peer details.
abstract class TransitGatewayConnectPeerConfiguration
    with
        _i1.AWSEquatable<TransitGatewayConnectPeerConfiguration>
    implements
        Built<TransitGatewayConnectPeerConfiguration,
            TransitGatewayConnectPeerConfigurationBuilder> {
  /// Describes the Connect peer details.
  factory TransitGatewayConnectPeerConfiguration({
    String? transitGatewayAddress,
    String? peerAddress,
    List<String>? insideCidrBlocks,
    _i2.ProtocolValue? protocol,
    List<_i3.TransitGatewayAttachmentBgpConfiguration>? bgpConfigurations,
  }) {
    return _$TransitGatewayConnectPeerConfiguration._(
      transitGatewayAddress: transitGatewayAddress,
      peerAddress: peerAddress,
      insideCidrBlocks:
          insideCidrBlocks == null ? null : _i4.BuiltList(insideCidrBlocks),
      protocol: protocol,
      bgpConfigurations:
          bgpConfigurations == null ? null : _i4.BuiltList(bgpConfigurations),
    );
  }

  /// Describes the Connect peer details.
  factory TransitGatewayConnectPeerConfiguration.build(
      [void Function(TransitGatewayConnectPeerConfigurationBuilder)
          updates]) = _$TransitGatewayConnectPeerConfiguration;

  const TransitGatewayConnectPeerConfiguration._();

  static const List<_i5.SmithySerializer> serializers = [
    TransitGatewayConnectPeerConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayConnectPeerConfigurationBuilder b) {}

  /// The Connect peer IP address on the transit gateway side of the tunnel.
  String? get transitGatewayAddress;

  /// The Connect peer IP address on the appliance side of the tunnel.
  String? get peerAddress;

  /// The range of interior BGP peer IP addresses.
  _i4.BuiltList<String>? get insideCidrBlocks;

  /// The tunnel protocol.
  _i2.ProtocolValue? get protocol;

  /// The BGP configuration details.
  _i4.BuiltList<_i3.TransitGatewayAttachmentBgpConfiguration>?
      get bgpConfigurations;
  @override
  List<Object?> get props => [
        transitGatewayAddress,
        peerAddress,
        insideCidrBlocks,
        protocol,
        bgpConfigurations,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayConnectPeerConfiguration');
    helper.add(
      'transitGatewayAddress',
      transitGatewayAddress,
    );
    helper.add(
      'peerAddress',
      peerAddress,
    );
    helper.add(
      'insideCidrBlocks',
      insideCidrBlocks,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'bgpConfigurations',
      bgpConfigurations,
    );
    return helper.toString();
  }
}

class TransitGatewayConnectPeerConfigurationEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<TransitGatewayConnectPeerConfiguration> {
  const TransitGatewayConnectPeerConfigurationEc2QuerySerializer()
      : super('TransitGatewayConnectPeerConfiguration');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnectPeerConfiguration,
        _$TransitGatewayConnectPeerConfiguration,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnectPeerConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectPeerConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayAddress':
          if (value != null) {
            result.transitGatewayAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'peerAddress':
          if (value != null) {
            result.peerAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'insideCidrBlocks':
          if (value != null) {
            result.insideCidrBlocks.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'protocol':
          if (value != null) {
            result.protocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ProtocolValue),
            ) as _i2.ProtocolValue);
          }
          break;
        case 'bgpConfigurations':
          if (value != null) {
            result.bgpConfigurations.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TransitGatewayAttachmentBgpConfiguration)],
              ),
            ) as _i4.BuiltList<_i3.TransitGatewayAttachmentBgpConfiguration>));
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
    final payload = (object as TransitGatewayConnectPeerConfiguration);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TransitGatewayConnectPeerConfigurationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAddress != null) {
      result
        ..add(const _i5.XmlElementName('TransitGatewayAddress'))
        ..add(serializers.serialize(
          payload.transitGatewayAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.peerAddress != null) {
      result
        ..add(const _i5.XmlElementName('PeerAddress'))
        ..add(serializers.serialize(
          payload.peerAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.insideCidrBlocks != null) {
      result
        ..add(const _i5.XmlElementName('InsideCidrBlocks'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.insideCidrBlocks!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.protocol != null) {
      result
        ..add(const _i5.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          payload.protocol!,
          specifiedType: const FullType.nullable(_i2.ProtocolValue),
        ));
    }
    if (payload.bgpConfigurations != null) {
      result
        ..add(const _i5.XmlElementName('BgpConfigurations'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.bgpConfigurations!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TransitGatewayAttachmentBgpConfiguration)],
          ),
        ));
    }
    return result;
  }
}
