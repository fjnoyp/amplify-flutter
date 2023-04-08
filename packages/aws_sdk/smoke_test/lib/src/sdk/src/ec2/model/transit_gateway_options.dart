// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_attachments_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_association_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_propagation_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/multicast_support_value.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_ecmp_support_value.dart'
    as _i6;

part 'transit_gateway_options.g.dart';

/// Describes the options for a transit gateway.
abstract class TransitGatewayOptions
    with _i1.AWSEquatable<TransitGatewayOptions>
    implements Built<TransitGatewayOptions, TransitGatewayOptionsBuilder> {
  /// Describes the options for a transit gateway.
  factory TransitGatewayOptions({
    _i2.Int64? amazonSideAsn,
    List<String>? transitGatewayCidrBlocks,
    _i3.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments,
    _i4.DefaultRouteTableAssociationValue? defaultRouteTableAssociation,
    String? associationDefaultRouteTableId,
    _i5.DefaultRouteTablePropagationValue? defaultRouteTablePropagation,
    String? propagationDefaultRouteTableId,
    _i6.VpnEcmpSupportValue? vpnEcmpSupport,
    _i7.DnsSupportValue? dnsSupport,
    _i8.MulticastSupportValue? multicastSupport,
  }) {
    amazonSideAsn ??= _i2.Int64.ZERO;
    return _$TransitGatewayOptions._(
      amazonSideAsn: amazonSideAsn,
      transitGatewayCidrBlocks: transitGatewayCidrBlocks == null
          ? null
          : _i9.BuiltList(transitGatewayCidrBlocks),
      autoAcceptSharedAttachments: autoAcceptSharedAttachments,
      defaultRouteTableAssociation: defaultRouteTableAssociation,
      associationDefaultRouteTableId: associationDefaultRouteTableId,
      defaultRouteTablePropagation: defaultRouteTablePropagation,
      propagationDefaultRouteTableId: propagationDefaultRouteTableId,
      vpnEcmpSupport: vpnEcmpSupport,
      dnsSupport: dnsSupport,
      multicastSupport: multicastSupport,
    );
  }

  /// Describes the options for a transit gateway.
  factory TransitGatewayOptions.build(
          [void Function(TransitGatewayOptionsBuilder) updates]) =
      _$TransitGatewayOptions;

  const TransitGatewayOptions._();

  static const List<_i10.SmithySerializer> serializers = [
    TransitGatewayOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayOptionsBuilder b) {
    b.amazonSideAsn = _i2.Int64.ZERO;
  }

  /// A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.
  _i2.Int64 get amazonSideAsn;

  /// The transit gateway CIDR blocks.
  _i9.BuiltList<String>? get transitGatewayCidrBlocks;

  /// Indicates whether attachment requests are automatically accepted.
  _i3.AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments;

  /// Indicates whether resource attachments are automatically associated with the default association route table.
  _i4.DefaultRouteTableAssociationValue? get defaultRouteTableAssociation;

  /// The ID of the default association route table.
  String? get associationDefaultRouteTableId;

  /// Indicates whether resource attachments automatically propagate routes to the default propagation route table.
  _i5.DefaultRouteTablePropagationValue? get defaultRouteTablePropagation;

  /// The ID of the default propagation route table.
  String? get propagationDefaultRouteTableId;

  /// Indicates whether Equal Cost Multipath Protocol support is enabled.
  _i6.VpnEcmpSupportValue? get vpnEcmpSupport;

  /// Indicates whether DNS support is enabled.
  _i7.DnsSupportValue? get dnsSupport;

  /// Indicates whether multicast is enabled on the transit gateway
  _i8.MulticastSupportValue? get multicastSupport;
  @override
  List<Object?> get props => [
        amazonSideAsn,
        transitGatewayCidrBlocks,
        autoAcceptSharedAttachments,
        defaultRouteTableAssociation,
        associationDefaultRouteTableId,
        defaultRouteTablePropagation,
        propagationDefaultRouteTableId,
        vpnEcmpSupport,
        dnsSupport,
        multicastSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayOptions');
    helper.add(
      'amazonSideAsn',
      amazonSideAsn,
    );
    helper.add(
      'transitGatewayCidrBlocks',
      transitGatewayCidrBlocks,
    );
    helper.add(
      'autoAcceptSharedAttachments',
      autoAcceptSharedAttachments,
    );
    helper.add(
      'defaultRouteTableAssociation',
      defaultRouteTableAssociation,
    );
    helper.add(
      'associationDefaultRouteTableId',
      associationDefaultRouteTableId,
    );
    helper.add(
      'defaultRouteTablePropagation',
      defaultRouteTablePropagation,
    );
    helper.add(
      'propagationDefaultRouteTableId',
      propagationDefaultRouteTableId,
    );
    helper.add(
      'vpnEcmpSupport',
      vpnEcmpSupport,
    );
    helper.add(
      'dnsSupport',
      dnsSupport,
    );
    helper.add(
      'multicastSupport',
      multicastSupport,
    );
    return helper.toString();
  }
}

class TransitGatewayOptionsEc2QuerySerializer
    extends _i10.StructuredSmithySerializer<TransitGatewayOptions> {
  const TransitGatewayOptionsEc2QuerySerializer()
      : super('TransitGatewayOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayOptions,
        _$TransitGatewayOptions,
      ];
  @override
  Iterable<_i10.ShapeId> get supportedProtocols => const [
        _i10.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'amazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'transitGatewayCidrBlocks':
          if (value != null) {
            result.transitGatewayCidrBlocks
                .replace((const _i10.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i10.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(String)],
              ),
            ) as _i9.BuiltList<String>));
          }
          break;
        case 'autoAcceptSharedAttachments':
          if (value != null) {
            result.autoAcceptSharedAttachments = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.AutoAcceptSharedAttachmentsValue),
            ) as _i3.AutoAcceptSharedAttachmentsValue);
          }
          break;
        case 'defaultRouteTableAssociation':
          if (value != null) {
            result.defaultRouteTableAssociation = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.DefaultRouteTableAssociationValue),
            ) as _i4.DefaultRouteTableAssociationValue);
          }
          break;
        case 'associationDefaultRouteTableId':
          if (value != null) {
            result.associationDefaultRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'defaultRouteTablePropagation':
          if (value != null) {
            result.defaultRouteTablePropagation = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.DefaultRouteTablePropagationValue),
            ) as _i5.DefaultRouteTablePropagationValue);
          }
          break;
        case 'propagationDefaultRouteTableId':
          if (value != null) {
            result.propagationDefaultRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpnEcmpSupport':
          if (value != null) {
            result.vpnEcmpSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.VpnEcmpSupportValue),
            ) as _i6.VpnEcmpSupportValue);
          }
          break;
        case 'dnsSupport':
          if (value != null) {
            result.dnsSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.DnsSupportValue),
            ) as _i7.DnsSupportValue);
          }
          break;
        case 'multicastSupport':
          if (value != null) {
            result.multicastSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.MulticastSupportValue),
            ) as _i8.MulticastSupportValue);
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
    final payload = (object as TransitGatewayOptions);
    final result = <Object?>[
      const _i10.XmlElementName(
        'TransitGatewayOptionsResponse',
        _i10.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i10.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        payload.amazonSideAsn,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (payload.transitGatewayCidrBlocks != null) {
      result
        ..add(const _i10.XmlElementName('TransitGatewayCidrBlocks'))
        ..add(const _i10.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i10.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayCidrBlocks!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.autoAcceptSharedAttachments != null) {
      result
        ..add(const _i10.XmlElementName('AutoAcceptSharedAttachments'))
        ..add(serializers.serialize(
          payload.autoAcceptSharedAttachments!,
          specifiedType:
              const FullType.nullable(_i3.AutoAcceptSharedAttachmentsValue),
        ));
    }
    if (payload.defaultRouteTableAssociation != null) {
      result
        ..add(const _i10.XmlElementName('DefaultRouteTableAssociation'))
        ..add(serializers.serialize(
          payload.defaultRouteTableAssociation!,
          specifiedType:
              const FullType.nullable(_i4.DefaultRouteTableAssociationValue),
        ));
    }
    if (payload.associationDefaultRouteTableId != null) {
      result
        ..add(const _i10.XmlElementName('AssociationDefaultRouteTableId'))
        ..add(serializers.serialize(
          payload.associationDefaultRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.defaultRouteTablePropagation != null) {
      result
        ..add(const _i10.XmlElementName('DefaultRouteTablePropagation'))
        ..add(serializers.serialize(
          payload.defaultRouteTablePropagation!,
          specifiedType:
              const FullType.nullable(_i5.DefaultRouteTablePropagationValue),
        ));
    }
    if (payload.propagationDefaultRouteTableId != null) {
      result
        ..add(const _i10.XmlElementName('PropagationDefaultRouteTableId'))
        ..add(serializers.serialize(
          payload.propagationDefaultRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpnEcmpSupport != null) {
      result
        ..add(const _i10.XmlElementName('VpnEcmpSupport'))
        ..add(serializers.serialize(
          payload.vpnEcmpSupport!,
          specifiedType: const FullType.nullable(_i6.VpnEcmpSupportValue),
        ));
    }
    if (payload.dnsSupport != null) {
      result
        ..add(const _i10.XmlElementName('DnsSupport'))
        ..add(serializers.serialize(
          payload.dnsSupport!,
          specifiedType: const FullType.nullable(_i7.DnsSupportValue),
        ));
    }
    if (payload.multicastSupport != null) {
      result
        ..add(const _i10.XmlElementName('MulticastSupport'))
        ..add(serializers.serialize(
          payload.multicastSupport!,
          specifiedType: const FullType.nullable(_i8.MulticastSupportValue),
        ));
    }
    return result;
  }
}
