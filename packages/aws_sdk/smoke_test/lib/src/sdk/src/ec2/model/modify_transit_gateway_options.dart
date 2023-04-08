// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_transit_gateway_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i7;
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_accept_shared_attachments_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_association_value.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/default_route_table_propagation_value.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_support_value.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_ecmp_support_value.dart'
    as _i2;

part 'modify_transit_gateway_options.g.dart';

/// The transit gateway options.
abstract class ModifyTransitGatewayOptions
    with _i1.AWSEquatable<ModifyTransitGatewayOptions>
    implements
        Built<ModifyTransitGatewayOptions, ModifyTransitGatewayOptionsBuilder> {
  /// The transit gateway options.
  factory ModifyTransitGatewayOptions({
    List<String>? addTransitGatewayCidrBlocks,
    List<String>? removeTransitGatewayCidrBlocks,
    _i2.VpnEcmpSupportValue? vpnEcmpSupport,
    _i3.DnsSupportValue? dnsSupport,
    _i4.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments,
    _i5.DefaultRouteTableAssociationValue? defaultRouteTableAssociation,
    String? associationDefaultRouteTableId,
    _i6.DefaultRouteTablePropagationValue? defaultRouteTablePropagation,
    String? propagationDefaultRouteTableId,
    _i7.Int64? amazonSideAsn,
  }) {
    amazonSideAsn ??= _i7.Int64.ZERO;
    return _$ModifyTransitGatewayOptions._(
      addTransitGatewayCidrBlocks: addTransitGatewayCidrBlocks == null
          ? null
          : _i8.BuiltList(addTransitGatewayCidrBlocks),
      removeTransitGatewayCidrBlocks: removeTransitGatewayCidrBlocks == null
          ? null
          : _i8.BuiltList(removeTransitGatewayCidrBlocks),
      vpnEcmpSupport: vpnEcmpSupport,
      dnsSupport: dnsSupport,
      autoAcceptSharedAttachments: autoAcceptSharedAttachments,
      defaultRouteTableAssociation: defaultRouteTableAssociation,
      associationDefaultRouteTableId: associationDefaultRouteTableId,
      defaultRouteTablePropagation: defaultRouteTablePropagation,
      propagationDefaultRouteTableId: propagationDefaultRouteTableId,
      amazonSideAsn: amazonSideAsn,
    );
  }

  /// The transit gateway options.
  factory ModifyTransitGatewayOptions.build(
          [void Function(ModifyTransitGatewayOptionsBuilder) updates]) =
      _$ModifyTransitGatewayOptions;

  const ModifyTransitGatewayOptions._();

  static const List<_i9.SmithySerializer> serializers = [
    ModifyTransitGatewayOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTransitGatewayOptionsBuilder b) {
    b.amazonSideAsn = _i7.Int64.ZERO;
  }

  /// Adds IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6.
  _i8.BuiltList<String>? get addTransitGatewayCidrBlocks;

  /// Removes CIDR blocks for the transit gateway.
  _i8.BuiltList<String>? get removeTransitGatewayCidrBlocks;

  /// Enable or disable Equal Cost Multipath Protocol support.
  _i2.VpnEcmpSupportValue? get vpnEcmpSupport;

  /// Enable or disable DNS support.
  _i3.DnsSupportValue? get dnsSupport;

  /// Enable or disable automatic acceptance of attachment requests.
  _i4.AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments;

  /// Enable or disable automatic association with the default association route table.
  _i5.DefaultRouteTableAssociationValue? get defaultRouteTableAssociation;

  /// The ID of the default association route table.
  String? get associationDefaultRouteTableId;

  /// Enable or disable automatic propagation of routes to the default propagation route table.
  _i6.DefaultRouteTablePropagationValue? get defaultRouteTablePropagation;

  /// The ID of the default propagation route table.
  String? get propagationDefaultRouteTableId;

  /// A private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.
  ///
  /// The modify ASN operation is not allowed on a transit gateway with active BGP sessions. You must first delete all transit gateway attachments that have BGP configured prior to modifying the ASN on the transit gateway.
  _i7.Int64 get amazonSideAsn;
  @override
  List<Object?> get props => [
        addTransitGatewayCidrBlocks,
        removeTransitGatewayCidrBlocks,
        vpnEcmpSupport,
        dnsSupport,
        autoAcceptSharedAttachments,
        defaultRouteTableAssociation,
        associationDefaultRouteTableId,
        defaultRouteTablePropagation,
        propagationDefaultRouteTableId,
        amazonSideAsn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyTransitGatewayOptions');
    helper.add(
      'addTransitGatewayCidrBlocks',
      addTransitGatewayCidrBlocks,
    );
    helper.add(
      'removeTransitGatewayCidrBlocks',
      removeTransitGatewayCidrBlocks,
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
      'amazonSideAsn',
      amazonSideAsn,
    );
    return helper.toString();
  }
}

class ModifyTransitGatewayOptionsEc2QuerySerializer
    extends _i9.StructuredSmithySerializer<ModifyTransitGatewayOptions> {
  const ModifyTransitGatewayOptionsEc2QuerySerializer()
      : super('ModifyTransitGatewayOptions');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayOptions,
        _$ModifyTransitGatewayOptions,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AddTransitGatewayCidrBlocks':
          if (value != null) {
            result.addTransitGatewayCidrBlocks
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'RemoveTransitGatewayCidrBlocks':
          if (value != null) {
            result.removeTransitGatewayCidrBlocks
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'VpnEcmpSupport':
          if (value != null) {
            result.vpnEcmpSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpnEcmpSupportValue),
            ) as _i2.VpnEcmpSupportValue);
          }
          break;
        case 'DnsSupport':
          if (value != null) {
            result.dnsSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DnsSupportValue),
            ) as _i3.DnsSupportValue);
          }
          break;
        case 'AutoAcceptSharedAttachments':
          if (value != null) {
            result.autoAcceptSharedAttachments = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.AutoAcceptSharedAttachmentsValue),
            ) as _i4.AutoAcceptSharedAttachmentsValue);
          }
          break;
        case 'DefaultRouteTableAssociation':
          if (value != null) {
            result.defaultRouteTableAssociation = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.DefaultRouteTableAssociationValue),
            ) as _i5.DefaultRouteTableAssociationValue);
          }
          break;
        case 'AssociationDefaultRouteTableId':
          if (value != null) {
            result.associationDefaultRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DefaultRouteTablePropagation':
          if (value != null) {
            result.defaultRouteTablePropagation = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i6.DefaultRouteTablePropagationValue),
            ) as _i6.DefaultRouteTablePropagationValue);
          }
          break;
        case 'PropagationDefaultRouteTableId':
          if (value != null) {
            result.propagationDefaultRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AmazonSideAsn':
          result.amazonSideAsn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i7.Int64),
          ) as _i7.Int64);
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
    final payload = (object as ModifyTransitGatewayOptions);
    final result = <Object?>[
      const _i9.XmlElementName(
        'ModifyTransitGatewayOptionsResponse',
        _i9.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.addTransitGatewayCidrBlocks != null) {
      result
        ..add(const _i9.XmlElementName('AddTransitGatewayCidrBlocks'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addTransitGatewayCidrBlocks!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.removeTransitGatewayCidrBlocks != null) {
      result
        ..add(const _i9.XmlElementName('RemoveTransitGatewayCidrBlocks'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.removeTransitGatewayCidrBlocks!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.vpnEcmpSupport != null) {
      result
        ..add(const _i9.XmlElementName('VpnEcmpSupport'))
        ..add(serializers.serialize(
          payload.vpnEcmpSupport!,
          specifiedType: const FullType.nullable(_i2.VpnEcmpSupportValue),
        ));
    }
    if (payload.dnsSupport != null) {
      result
        ..add(const _i9.XmlElementName('DnsSupport'))
        ..add(serializers.serialize(
          payload.dnsSupport!,
          specifiedType: const FullType.nullable(_i3.DnsSupportValue),
        ));
    }
    if (payload.autoAcceptSharedAttachments != null) {
      result
        ..add(const _i9.XmlElementName('AutoAcceptSharedAttachments'))
        ..add(serializers.serialize(
          payload.autoAcceptSharedAttachments!,
          specifiedType:
              const FullType.nullable(_i4.AutoAcceptSharedAttachmentsValue),
        ));
    }
    if (payload.defaultRouteTableAssociation != null) {
      result
        ..add(const _i9.XmlElementName('DefaultRouteTableAssociation'))
        ..add(serializers.serialize(
          payload.defaultRouteTableAssociation!,
          specifiedType:
              const FullType.nullable(_i5.DefaultRouteTableAssociationValue),
        ));
    }
    if (payload.associationDefaultRouteTableId != null) {
      result
        ..add(const _i9.XmlElementName('AssociationDefaultRouteTableId'))
        ..add(serializers.serialize(
          payload.associationDefaultRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.defaultRouteTablePropagation != null) {
      result
        ..add(const _i9.XmlElementName('DefaultRouteTablePropagation'))
        ..add(serializers.serialize(
          payload.defaultRouteTablePropagation!,
          specifiedType:
              const FullType.nullable(_i6.DefaultRouteTablePropagationValue),
        ));
    }
    if (payload.propagationDefaultRouteTableId != null) {
      result
        ..add(const _i9.XmlElementName('PropagationDefaultRouteTableId'))
        ..add(serializers.serialize(
          payload.propagationDefaultRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i9.XmlElementName('AmazonSideAsn'))
      ..add(serializers.serialize(
        payload.amazonSideAsn,
        specifiedType: const FullType(_i7.Int64),
      ));
    return result;
  }
}
