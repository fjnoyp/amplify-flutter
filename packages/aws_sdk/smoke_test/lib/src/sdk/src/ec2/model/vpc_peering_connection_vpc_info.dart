// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_peering_connection_vpc_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/cidr_block.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_block.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_options_description.dart'
    as _i4;

part 'vpc_peering_connection_vpc_info.g.dart';

/// Describes a VPC in a VPC peering connection.
abstract class VpcPeeringConnectionVpcInfo
    with _i1.AWSEquatable<VpcPeeringConnectionVpcInfo>
    implements
        Built<VpcPeeringConnectionVpcInfo, VpcPeeringConnectionVpcInfoBuilder> {
  /// Describes a VPC in a VPC peering connection.
  factory VpcPeeringConnectionVpcInfo({
    String? cidrBlock,
    List<_i2.Ipv6CidrBlock>? ipv6CidrBlockSet,
    List<_i3.CidrBlock>? cidrBlockSet,
    String? ownerId,
    _i4.VpcPeeringConnectionOptionsDescription? peeringOptions,
    String? vpcId,
    String? region,
  }) {
    return _$VpcPeeringConnectionVpcInfo._(
      cidrBlock: cidrBlock,
      ipv6CidrBlockSet:
          ipv6CidrBlockSet == null ? null : _i5.BuiltList(ipv6CidrBlockSet),
      cidrBlockSet: cidrBlockSet == null ? null : _i5.BuiltList(cidrBlockSet),
      ownerId: ownerId,
      peeringOptions: peeringOptions,
      vpcId: vpcId,
      region: region,
    );
  }

  /// Describes a VPC in a VPC peering connection.
  factory VpcPeeringConnectionVpcInfo.build(
          [void Function(VpcPeeringConnectionVpcInfoBuilder) updates]) =
      _$VpcPeeringConnectionVpcInfo;

  const VpcPeeringConnectionVpcInfo._();

  static const List<_i6.SmithySerializer> serializers = [
    VpcPeeringConnectionVpcInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcPeeringConnectionVpcInfoBuilder b) {}

  /// The IPv4 CIDR block for the VPC.
  String? get cidrBlock;

  /// The IPv6 CIDR block for the VPC.
  _i5.BuiltList<_i2.Ipv6CidrBlock>? get ipv6CidrBlockSet;

  /// Information about the IPv4 CIDR blocks for the VPC.
  _i5.BuiltList<_i3.CidrBlock>? get cidrBlockSet;

  /// The ID of the Amazon Web Services account that owns the VPC.
  String? get ownerId;

  /// Information about the VPC peering connection options for the accepter or requester VPC.
  _i4.VpcPeeringConnectionOptionsDescription? get peeringOptions;

  /// The ID of the VPC.
  String? get vpcId;

  /// The Region in which the VPC is located.
  String? get region;
  @override
  List<Object?> get props => [
        cidrBlock,
        ipv6CidrBlockSet,
        cidrBlockSet,
        ownerId,
        peeringOptions,
        vpcId,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcPeeringConnectionVpcInfo');
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'ipv6CidrBlockSet',
      ipv6CidrBlockSet,
    );
    helper.add(
      'cidrBlockSet',
      cidrBlockSet,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'peeringOptions',
      peeringOptions,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'region',
      region,
    );
    return helper.toString();
  }
}

class VpcPeeringConnectionVpcInfoEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<VpcPeeringConnectionVpcInfo> {
  const VpcPeeringConnectionVpcInfoEc2QuerySerializer()
      : super('VpcPeeringConnectionVpcInfo');

  @override
  Iterable<Type> get types => const [
        VpcPeeringConnectionVpcInfo,
        _$VpcPeeringConnectionVpcInfo,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcPeeringConnectionVpcInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcPeeringConnectionVpcInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidrBlock':
          if (value != null) {
            result.cidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipv6CidrBlockSet':
          if (value != null) {
            result.ipv6CidrBlockSet.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.Ipv6CidrBlock)],
              ),
            ) as _i5.BuiltList<_i2.Ipv6CidrBlock>));
          }
          break;
        case 'cidrBlockSet':
          if (value != null) {
            result.cidrBlockSet.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.CidrBlock)],
              ),
            ) as _i5.BuiltList<_i3.CidrBlock>));
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'peeringOptions':
          if (value != null) {
            result.peeringOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.VpcPeeringConnectionOptionsDescription),
            ) as _i4.VpcPeeringConnectionOptionsDescription));
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'region':
          if (value != null) {
            result.region = (serializers.deserialize(
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
    final payload = (object as VpcPeeringConnectionVpcInfo);
    final result = <Object?>[
      const _i6.XmlElementName(
        'VpcPeeringConnectionVpcInfoResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidrBlock != null) {
      result
        ..add(const _i6.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          payload.cidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipv6CidrBlockSet != null) {
      result
        ..add(const _i6.XmlElementName('Ipv6CidrBlockSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6CidrBlockSet!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.Ipv6CidrBlock)],
          ),
        ));
    }
    if (payload.cidrBlockSet != null) {
      result
        ..add(const _i6.XmlElementName('CidrBlockSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.cidrBlockSet!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.CidrBlock)],
          ),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i6.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.peeringOptions != null) {
      result
        ..add(const _i6.XmlElementName('PeeringOptions'))
        ..add(serializers.serialize(
          payload.peeringOptions!,
          specifiedType:
              const FullType(_i4.VpcPeeringConnectionOptionsDescription),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i6.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.region != null) {
      result
        ..add(const _i6.XmlElementName('Region'))
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
