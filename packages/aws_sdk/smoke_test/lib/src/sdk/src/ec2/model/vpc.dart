// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_association.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_ipv6_cidr_block_association.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_state.dart' as _i2;

part 'vpc.g.dart';

/// Describes a VPC.
abstract class Vpc
    with _i1.AWSEquatable<Vpc>
    implements Built<Vpc, VpcBuilder> {
  /// Describes a VPC.
  factory Vpc({
    String? cidrBlock,
    String? dhcpOptionsId,
    _i2.VpcState? state,
    String? vpcId,
    String? ownerId,
    _i3.Tenancy? instanceTenancy,
    List<_i4.VpcIpv6CidrBlockAssociation>? ipv6CidrBlockAssociationSet,
    List<_i5.VpcCidrBlockAssociation>? cidrBlockAssociationSet,
    bool? isDefault,
    List<_i6.Tag>? tags,
  }) {
    isDefault ??= false;
    return _$Vpc._(
      cidrBlock: cidrBlock,
      dhcpOptionsId: dhcpOptionsId,
      state: state,
      vpcId: vpcId,
      ownerId: ownerId,
      instanceTenancy: instanceTenancy,
      ipv6CidrBlockAssociationSet: ipv6CidrBlockAssociationSet == null
          ? null
          : _i7.BuiltList(ipv6CidrBlockAssociationSet),
      cidrBlockAssociationSet: cidrBlockAssociationSet == null
          ? null
          : _i7.BuiltList(cidrBlockAssociationSet),
      isDefault: isDefault,
      tags: tags == null ? null : _i7.BuiltList(tags),
    );
  }

  /// Describes a VPC.
  factory Vpc.build([void Function(VpcBuilder) updates]) = _$Vpc;

  const Vpc._();

  static const List<_i8.SmithySerializer> serializers = [
    VpcEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcBuilder b) {
    b.isDefault = false;
  }

  /// The primary IPv4 CIDR block for the VPC.
  String? get cidrBlock;

  /// The ID of the set of DHCP options you've associated with the VPC.
  String? get dhcpOptionsId;

  /// The current state of the VPC.
  _i2.VpcState? get state;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the VPC.
  String? get ownerId;

  /// The allowed tenancy of instances launched into the VPC.
  _i3.Tenancy? get instanceTenancy;

  /// Information about the IPv6 CIDR blocks associated with the VPC.
  _i7.BuiltList<_i4.VpcIpv6CidrBlockAssociation>?
      get ipv6CidrBlockAssociationSet;

  /// Information about the IPv4 CIDR blocks associated with the VPC.
  _i7.BuiltList<_i5.VpcCidrBlockAssociation>? get cidrBlockAssociationSet;

  /// Indicates whether the VPC is the default VPC.
  bool get isDefault;

  /// Any tags assigned to the VPC.
  _i7.BuiltList<_i6.Tag>? get tags;
  @override
  List<Object?> get props => [
        cidrBlock,
        dhcpOptionsId,
        state,
        vpcId,
        ownerId,
        instanceTenancy,
        ipv6CidrBlockAssociationSet,
        cidrBlockAssociationSet,
        isDefault,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Vpc');
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'dhcpOptionsId',
      dhcpOptionsId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'instanceTenancy',
      instanceTenancy,
    );
    helper.add(
      'ipv6CidrBlockAssociationSet',
      ipv6CidrBlockAssociationSet,
    );
    helper.add(
      'cidrBlockAssociationSet',
      cidrBlockAssociationSet,
    );
    helper.add(
      'isDefault',
      isDefault,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class VpcEc2QuerySerializer extends _i8.StructuredSmithySerializer<Vpc> {
  const VpcEc2QuerySerializer() : super('Vpc');

  @override
  Iterable<Type> get types => const [
        Vpc,
        _$Vpc,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Vpc deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcBuilder();
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
        case 'dhcpOptionsId':
          if (value != null) {
            result.dhcpOptionsId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpcState),
            ) as _i2.VpcState);
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
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceTenancy':
          if (value != null) {
            result.instanceTenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Tenancy),
            ) as _i3.Tenancy);
          }
          break;
        case 'ipv6CidrBlockAssociationSet':
          if (value != null) {
            result.ipv6CidrBlockAssociationSet
                .replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i4.VpcIpv6CidrBlockAssociation)],
              ),
            ) as _i7.BuiltList<_i4.VpcIpv6CidrBlockAssociation>));
          }
          break;
        case 'cidrBlockAssociationSet':
          if (value != null) {
            result.cidrBlockAssociationSet
                .replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i5.VpcCidrBlockAssociation)],
              ),
            ) as _i7.BuiltList<_i5.VpcCidrBlockAssociation>));
          }
          break;
        case 'isDefault':
          result.isDefault = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.Tag)],
              ),
            ) as _i7.BuiltList<_i6.Tag>));
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
    final payload = (object as Vpc);
    final result = <Object?>[
      const _i8.XmlElementName(
        'VpcResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidrBlock != null) {
      result
        ..add(const _i8.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          payload.cidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.dhcpOptionsId != null) {
      result
        ..add(const _i8.XmlElementName('DhcpOptionsId'))
        ..add(serializers.serialize(
          payload.dhcpOptionsId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i8.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.VpcState),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i8.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i8.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceTenancy != null) {
      result
        ..add(const _i8.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          payload.instanceTenancy!,
          specifiedType: const FullType.nullable(_i3.Tenancy),
        ));
    }
    if (payload.ipv6CidrBlockAssociationSet != null) {
      result
        ..add(const _i8.XmlElementName('Ipv6CidrBlockAssociationSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6CidrBlockAssociationSet!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i4.VpcIpv6CidrBlockAssociation)],
          ),
        ));
    }
    if (payload.cidrBlockAssociationSet != null) {
      result
        ..add(const _i8.XmlElementName('CidrBlockAssociationSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.cidrBlockAssociationSet!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.VpcCidrBlockAssociation)],
          ),
        ));
    }
    result
      ..add(const _i8.XmlElementName('IsDefault'))
      ..add(serializers.serialize(
        payload.isDefault,
        specifiedType: const FullType(bool),
      ));
    if (payload.tags != null) {
      result
        ..add(const _i8.XmlElementName('TagSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i6.Tag)],
          ),
        ));
    }
    return result;
  }
}
