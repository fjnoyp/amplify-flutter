// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_attachment_bgp_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/bgp_status.dart' as _i3;

part 'transit_gateway_attachment_bgp_configuration.g.dart';

/// The BGP configuration information.
abstract class TransitGatewayAttachmentBgpConfiguration
    with
        _i1.AWSEquatable<TransitGatewayAttachmentBgpConfiguration>
    implements
        Built<TransitGatewayAttachmentBgpConfiguration,
            TransitGatewayAttachmentBgpConfigurationBuilder> {
  /// The BGP configuration information.
  factory TransitGatewayAttachmentBgpConfiguration({
    _i2.Int64? transitGatewayAsn,
    _i2.Int64? peerAsn,
    String? transitGatewayAddress,
    String? peerAddress,
    _i3.BgpStatus? bgpStatus,
  }) {
    transitGatewayAsn ??= _i2.Int64.ZERO;
    peerAsn ??= _i2.Int64.ZERO;
    return _$TransitGatewayAttachmentBgpConfiguration._(
      transitGatewayAsn: transitGatewayAsn,
      peerAsn: peerAsn,
      transitGatewayAddress: transitGatewayAddress,
      peerAddress: peerAddress,
      bgpStatus: bgpStatus,
    );
  }

  /// The BGP configuration information.
  factory TransitGatewayAttachmentBgpConfiguration.build(
      [void Function(TransitGatewayAttachmentBgpConfigurationBuilder)
          updates]) = _$TransitGatewayAttachmentBgpConfiguration;

  const TransitGatewayAttachmentBgpConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    TransitGatewayAttachmentBgpConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayAttachmentBgpConfigurationBuilder b) {
    b.transitGatewayAsn = _i2.Int64.ZERO;
    b.peerAsn = _i2.Int64.ZERO;
  }

  /// The transit gateway Autonomous System Number (ASN).
  _i2.Int64 get transitGatewayAsn;

  /// The peer Autonomous System Number (ASN).
  _i2.Int64 get peerAsn;

  /// The interior BGP peer IP address for the transit gateway.
  String? get transitGatewayAddress;

  /// The interior BGP peer IP address for the appliance.
  String? get peerAddress;

  /// The BGP status.
  _i3.BgpStatus? get bgpStatus;
  @override
  List<Object?> get props => [
        transitGatewayAsn,
        peerAsn,
        transitGatewayAddress,
        peerAddress,
        bgpStatus,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayAttachmentBgpConfiguration');
    helper.add(
      'transitGatewayAsn',
      transitGatewayAsn,
    );
    helper.add(
      'peerAsn',
      peerAsn,
    );
    helper.add(
      'transitGatewayAddress',
      transitGatewayAddress,
    );
    helper.add(
      'peerAddress',
      peerAddress,
    );
    helper.add(
      'bgpStatus',
      bgpStatus,
    );
    return helper.toString();
  }
}

class TransitGatewayAttachmentBgpConfigurationEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<TransitGatewayAttachmentBgpConfiguration> {
  const TransitGatewayAttachmentBgpConfigurationEc2QuerySerializer()
      : super('TransitGatewayAttachmentBgpConfiguration');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachmentBgpConfiguration,
        _$TransitGatewayAttachmentBgpConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachmentBgpConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentBgpConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayAsn':
          result.transitGatewayAsn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'peerAsn':
          result.peerAsn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
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
        case 'bgpStatus':
          if (value != null) {
            result.bgpStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BgpStatus),
            ) as _i3.BgpStatus);
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
    final payload = (object as TransitGatewayAttachmentBgpConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TransitGatewayAttachmentBgpConfigurationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('TransitGatewayAsn'))
      ..add(serializers.serialize(
        payload.transitGatewayAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    result
      ..add(const _i4.XmlElementName('PeerAsn'))
      ..add(serializers.serialize(
        payload.peerAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (payload.transitGatewayAddress != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayAddress'))
        ..add(serializers.serialize(
          payload.transitGatewayAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.peerAddress != null) {
      result
        ..add(const _i4.XmlElementName('PeerAddress'))
        ..add(serializers.serialize(
          payload.peerAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.bgpStatus != null) {
      result
        ..add(const _i4.XmlElementName('BgpStatus'))
        ..add(serializers.serialize(
          payload.bgpStatus!,
          specifiedType: const FullType.nullable(_i3.BgpStatus),
        ));
    }
    return result;
  }
}
