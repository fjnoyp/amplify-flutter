// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.subnet; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_on_launch.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_ipv6_cidr_block_association.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_state.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'subnet.g.dart';

/// Describes a subnet.
abstract class Subnet
    with _i1.AWSEquatable<Subnet>
    implements Built<Subnet, SubnetBuilder> {
  /// Describes a subnet.
  factory Subnet({
    String? availabilityZone,
    String? availabilityZoneId,
    int? availableIpAddressCount,
    String? cidrBlock,
    bool? defaultForAz,
    int? enableLniAtDeviceIndex,
    bool? mapPublicIpOnLaunch,
    bool? mapCustomerOwnedIpOnLaunch,
    String? customerOwnedIpv4Pool,
    _i2.SubnetState? state,
    String? subnetId,
    String? vpcId,
    String? ownerId,
    bool? assignIpv6AddressOnCreation,
    List<_i3.SubnetIpv6CidrBlockAssociation>? ipv6CidrBlockAssociationSet,
    List<_i4.Tag>? tags,
    String? subnetArn,
    String? outpostArn,
    bool? enableDns64,
    bool? ipv6Native,
    _i5.PrivateDnsNameOptionsOnLaunch? privateDnsNameOptionsOnLaunch,
  }) {
    availableIpAddressCount ??= 0;
    defaultForAz ??= false;
    enableLniAtDeviceIndex ??= 0;
    mapPublicIpOnLaunch ??= false;
    mapCustomerOwnedIpOnLaunch ??= false;
    assignIpv6AddressOnCreation ??= false;
    enableDns64 ??= false;
    ipv6Native ??= false;
    return _$Subnet._(
      availabilityZone: availabilityZone,
      availabilityZoneId: availabilityZoneId,
      availableIpAddressCount: availableIpAddressCount,
      cidrBlock: cidrBlock,
      defaultForAz: defaultForAz,
      enableLniAtDeviceIndex: enableLniAtDeviceIndex,
      mapPublicIpOnLaunch: mapPublicIpOnLaunch,
      mapCustomerOwnedIpOnLaunch: mapCustomerOwnedIpOnLaunch,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      state: state,
      subnetId: subnetId,
      vpcId: vpcId,
      ownerId: ownerId,
      assignIpv6AddressOnCreation: assignIpv6AddressOnCreation,
      ipv6CidrBlockAssociationSet: ipv6CidrBlockAssociationSet == null
          ? null
          : _i6.BuiltList(ipv6CidrBlockAssociationSet),
      tags: tags == null ? null : _i6.BuiltList(tags),
      subnetArn: subnetArn,
      outpostArn: outpostArn,
      enableDns64: enableDns64,
      ipv6Native: ipv6Native,
      privateDnsNameOptionsOnLaunch: privateDnsNameOptionsOnLaunch,
    );
  }

  /// Describes a subnet.
  factory Subnet.build([void Function(SubnetBuilder) updates]) = _$Subnet;

  const Subnet._();

  static const List<_i7.SmithySerializer> serializers = [
    SubnetEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SubnetBuilder b) {
    b.availableIpAddressCount = 0;
    b.defaultForAz = false;
    b.enableLniAtDeviceIndex = 0;
    b.mapPublicIpOnLaunch = false;
    b.mapCustomerOwnedIpOnLaunch = false;
    b.assignIpv6AddressOnCreation = false;
    b.enableDns64 = false;
    b.ipv6Native = false;
  }

  /// The Availability Zone of the subnet.
  String? get availabilityZone;

  /// The AZ ID of the subnet.
  String? get availabilityZoneId;

  /// The number of unused private IPv4 addresses in the subnet. The IPv4 addresses for any stopped instances are considered unavailable.
  int get availableIpAddressCount;

  /// The IPv4 CIDR block assigned to the subnet.
  String? get cidrBlock;

  /// Indicates whether this is the default subnet for the Availability Zone.
  bool get defaultForAz;

  /// Indicates the device position for local network interfaces in this subnet. For example, `1` indicates local network interfaces in this subnet are the secondary network interface (eth1).
  int get enableLniAtDeviceIndex;

  /// Indicates whether instances launched in this subnet receive a public IPv4 address.
  bool get mapPublicIpOnLaunch;

  /// Indicates whether a network interface created in this subnet (including a network interface created by RunInstances) receives a customer-owned IPv4 address.
  bool get mapCustomerOwnedIpOnLaunch;

  /// The customer-owned IPv4 address pool associated with the subnet.
  String? get customerOwnedIpv4Pool;

  /// The current state of the subnet.
  _i2.SubnetState? get state;

  /// The ID of the subnet.
  String? get subnetId;

  /// The ID of the VPC the subnet is in.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the subnet.
  String? get ownerId;

  /// Indicates whether a network interface created in this subnet (including a network interface created by RunInstances) receives an IPv6 address.
  bool get assignIpv6AddressOnCreation;

  /// Information about the IPv6 CIDR blocks associated with the subnet.
  _i6.BuiltList<_i3.SubnetIpv6CidrBlockAssociation>?
      get ipv6CidrBlockAssociationSet;

  /// Any tags assigned to the subnet.
  _i6.BuiltList<_i4.Tag>? get tags;

  /// The Amazon Resource Name (ARN) of the subnet.
  String? get subnetArn;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations.
  bool get enableDns64;

  /// Indicates whether this is an IPv6 only subnet.
  bool get ipv6Native;

  /// The type of hostnames to assign to instances in the subnet at launch. An instance hostname is based on the IPv4 address or ID of the instance.
  _i5.PrivateDnsNameOptionsOnLaunch? get privateDnsNameOptionsOnLaunch;
  @override
  List<Object?> get props => [
        availabilityZone,
        availabilityZoneId,
        availableIpAddressCount,
        cidrBlock,
        defaultForAz,
        enableLniAtDeviceIndex,
        mapPublicIpOnLaunch,
        mapCustomerOwnedIpOnLaunch,
        customerOwnedIpv4Pool,
        state,
        subnetId,
        vpcId,
        ownerId,
        assignIpv6AddressOnCreation,
        ipv6CidrBlockAssociationSet,
        tags,
        subnetArn,
        outpostArn,
        enableDns64,
        ipv6Native,
        privateDnsNameOptionsOnLaunch,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Subnet');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'availabilityZoneId',
      availabilityZoneId,
    );
    helper.add(
      'availableIpAddressCount',
      availableIpAddressCount,
    );
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'defaultForAz',
      defaultForAz,
    );
    helper.add(
      'enableLniAtDeviceIndex',
      enableLniAtDeviceIndex,
    );
    helper.add(
      'mapPublicIpOnLaunch',
      mapPublicIpOnLaunch,
    );
    helper.add(
      'mapCustomerOwnedIpOnLaunch',
      mapCustomerOwnedIpOnLaunch,
    );
    helper.add(
      'customerOwnedIpv4Pool',
      customerOwnedIpv4Pool,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'subnetId',
      subnetId,
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
      'assignIpv6AddressOnCreation',
      assignIpv6AddressOnCreation,
    );
    helper.add(
      'ipv6CidrBlockAssociationSet',
      ipv6CidrBlockAssociationSet,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'subnetArn',
      subnetArn,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'enableDns64',
      enableDns64,
    );
    helper.add(
      'ipv6Native',
      ipv6Native,
    );
    helper.add(
      'privateDnsNameOptionsOnLaunch',
      privateDnsNameOptionsOnLaunch,
    );
    return helper.toString();
  }
}

class SubnetEc2QuerySerializer extends _i7.StructuredSmithySerializer<Subnet> {
  const SubnetEc2QuerySerializer() : super('Subnet');

  @override
  Iterable<Type> get types => const [
        Subnet,
        _$Subnet,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Subnet deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZoneId':
          if (value != null) {
            result.availabilityZoneId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availableIpAddressCount':
          result.availableIpAddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'cidrBlock':
          if (value != null) {
            result.cidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'defaultForAz':
          result.defaultForAz = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'enableLniAtDeviceIndex':
          result.enableLniAtDeviceIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'mapPublicIpOnLaunch':
          result.mapPublicIpOnLaunch = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'mapCustomerOwnedIpOnLaunch':
          result.mapCustomerOwnedIpOnLaunch = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'customerOwnedIpv4Pool':
          if (value != null) {
            result.customerOwnedIpv4Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SubnetState),
            ) as _i2.SubnetState);
          }
          break;
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'assignIpv6AddressOnCreation':
          result.assignIpv6AddressOnCreation = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ipv6CidrBlockAssociationSet':
          if (value != null) {
            result.ipv6CidrBlockAssociationSet
                .replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.SubnetIpv6CidrBlockAssociation)],
              ),
            ) as _i6.BuiltList<_i3.SubnetIpv6CidrBlockAssociation>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i6.BuiltList<_i4.Tag>));
          }
          break;
        case 'subnetArn':
          if (value != null) {
            result.subnetArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'outpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'enableDns64':
          result.enableDns64 = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ipv6Native':
          result.ipv6Native = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'privateDnsNameOptionsOnLaunch':
          if (value != null) {
            result.privateDnsNameOptionsOnLaunch
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.PrivateDnsNameOptionsOnLaunch),
            ) as _i5.PrivateDnsNameOptionsOnLaunch));
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
    final payload = (object as Subnet);
    final result = <Object?>[
      const _i7.XmlElementName(
        'SubnetResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i7.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZoneId != null) {
      result
        ..add(const _i7.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          payload.availabilityZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('AvailableIpAddressCount'))
      ..add(serializers.serialize(
        payload.availableIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (payload.cidrBlock != null) {
      result
        ..add(const _i7.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          payload.cidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('DefaultForAz'))
      ..add(serializers.serialize(
        payload.defaultForAz,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('EnableLniAtDeviceIndex'))
      ..add(serializers.serialize(
        payload.enableLniAtDeviceIndex,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i7.XmlElementName('MapPublicIpOnLaunch'))
      ..add(serializers.serialize(
        payload.mapPublicIpOnLaunch,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('MapCustomerOwnedIpOnLaunch'))
      ..add(serializers.serialize(
        payload.mapCustomerOwnedIpOnLaunch,
        specifiedType: const FullType(bool),
      ));
    if (payload.customerOwnedIpv4Pool != null) {
      result
        ..add(const _i7.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          payload.customerOwnedIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.SubnetState),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i7.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i7.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i7.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('AssignIpv6AddressOnCreation'))
      ..add(serializers.serialize(
        payload.assignIpv6AddressOnCreation,
        specifiedType: const FullType(bool),
      ));
    if (payload.ipv6CidrBlockAssociationSet != null) {
      result
        ..add(const _i7.XmlElementName('Ipv6CidrBlockAssociationSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6CidrBlockAssociationSet!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.SubnetIpv6CidrBlockAssociation)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    if (payload.subnetArn != null) {
      result
        ..add(const _i7.XmlElementName('SubnetArn'))
        ..add(serializers.serialize(
          payload.subnetArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.outpostArn != null) {
      result
        ..add(const _i7.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('EnableDns64'))
      ..add(serializers.serialize(
        payload.enableDns64,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('Ipv6Native'))
      ..add(serializers.serialize(
        payload.ipv6Native,
        specifiedType: const FullType(bool),
      ));
    if (payload.privateDnsNameOptionsOnLaunch != null) {
      result
        ..add(const _i7.XmlElementName('PrivateDnsNameOptionsOnLaunch'))
        ..add(serializers.serialize(
          payload.privateDnsNameOptionsOnLaunch!,
          specifiedType: const FullType(_i5.PrivateDnsNameOptionsOnLaunch),
        ));
    }
    return result;
  }
}
