// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_interface; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_association.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_ipv6_address.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_private_ip_address.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_status.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_type.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i11;

part 'network_interface.g.dart';

/// Describes a network interface.
abstract class NetworkInterface
    with _i1.AWSEquatable<NetworkInterface>
    implements Built<NetworkInterface, NetworkInterfaceBuilder> {
  /// Describes a network interface.
  factory NetworkInterface({
    _i2.NetworkInterfaceAssociation? association,
    _i3.NetworkInterfaceAttachment? attachment,
    String? availabilityZone,
    String? description,
    List<_i4.GroupIdentifier>? groups,
    _i5.NetworkInterfaceType? interfaceType,
    List<_i6.NetworkInterfaceIpv6Address>? ipv6Addresses,
    String? macAddress,
    String? networkInterfaceId,
    String? outpostArn,
    String? ownerId,
    String? privateDnsName,
    String? privateIpAddress,
    List<_i7.NetworkInterfacePrivateIpAddress>? privateIpAddresses,
    List<_i8.Ipv4PrefixSpecification>? ipv4Prefixes,
    List<_i9.Ipv6PrefixSpecification>? ipv6Prefixes,
    String? requesterId,
    bool? requesterManaged,
    bool? sourceDestCheck,
    _i10.NetworkInterfaceStatus? status,
    String? subnetId,
    List<_i11.Tag>? tagSet,
    String? vpcId,
    bool? denyAllIgwTraffic,
    bool? ipv6Native,
    String? ipv6Address,
  }) {
    requesterManaged ??= false;
    sourceDestCheck ??= false;
    denyAllIgwTraffic ??= false;
    ipv6Native ??= false;
    return _$NetworkInterface._(
      association: association,
      attachment: attachment,
      availabilityZone: availabilityZone,
      description: description,
      groups: groups == null ? null : _i12.BuiltList(groups),
      interfaceType: interfaceType,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i12.BuiltList(ipv6Addresses),
      macAddress: macAddress,
      networkInterfaceId: networkInterfaceId,
      outpostArn: outpostArn,
      ownerId: ownerId,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
      privateIpAddresses: privateIpAddresses == null
          ? null
          : _i12.BuiltList(privateIpAddresses),
      ipv4Prefixes: ipv4Prefixes == null ? null : _i12.BuiltList(ipv4Prefixes),
      ipv6Prefixes: ipv6Prefixes == null ? null : _i12.BuiltList(ipv6Prefixes),
      requesterId: requesterId,
      requesterManaged: requesterManaged,
      sourceDestCheck: sourceDestCheck,
      status: status,
      subnetId: subnetId,
      tagSet: tagSet == null ? null : _i12.BuiltList(tagSet),
      vpcId: vpcId,
      denyAllIgwTraffic: denyAllIgwTraffic,
      ipv6Native: ipv6Native,
      ipv6Address: ipv6Address,
    );
  }

  /// Describes a network interface.
  factory NetworkInterface.build(
      [void Function(NetworkInterfaceBuilder) updates]) = _$NetworkInterface;

  const NetworkInterface._();

  static const List<_i13.SmithySerializer> serializers = [
    NetworkInterfaceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceBuilder b) {
    b.requesterManaged = false;
    b.sourceDestCheck = false;
    b.denyAllIgwTraffic = false;
    b.ipv6Native = false;
  }

  /// The association information for an Elastic IP address (IPv4) associated with the network interface.
  _i2.NetworkInterfaceAssociation? get association;

  /// The network interface attachment.
  _i3.NetworkInterfaceAttachment? get attachment;

  /// The Availability Zone.
  String? get availabilityZone;

  /// A description.
  String? get description;

  /// Any security groups for the network interface.
  _i12.BuiltList<_i4.GroupIdentifier>? get groups;

  /// The type of network interface.
  _i5.NetworkInterfaceType? get interfaceType;

  /// The IPv6 addresses associated with the network interface.
  _i12.BuiltList<_i6.NetworkInterfaceIpv6Address>? get ipv6Addresses;

  /// The MAC address.
  String? get macAddress;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The Amazon Web Services account ID of the owner of the network interface.
  String? get ownerId;

  /// The private DNS name.
  String? get privateDnsName;

  /// The IPv4 address of the network interface within the subnet.
  String? get privateIpAddress;

  /// The private IPv4 addresses associated with the network interface.
  _i12.BuiltList<_i7.NetworkInterfacePrivateIpAddress>? get privateIpAddresses;

  /// The IPv4 prefixes that are assigned to the network interface.
  _i12.BuiltList<_i8.Ipv4PrefixSpecification>? get ipv4Prefixes;

  /// The IPv6 prefixes that are assigned to the network interface.
  _i12.BuiltList<_i9.Ipv6PrefixSpecification>? get ipv6Prefixes;

  /// The alias or Amazon Web Services account ID of the principal or service that created the network interface.
  String? get requesterId;

  /// Indicates whether the network interface is being managed by Amazon Web Services.
  bool get requesterManaged;

  /// Indicates whether source/destination checking is enabled.
  bool get sourceDestCheck;

  /// The status of the network interface.
  _i10.NetworkInterfaceStatus? get status;

  /// The ID of the subnet.
  String? get subnetId;

  /// Any tags assigned to the network interface.
  _i12.BuiltList<_i11.Tag>? get tagSet;

  /// The ID of the VPC.
  String? get vpcId;

  /// Indicates whether a network interface with an IPv6 address is unreachable from the public internet. If the value is `true`, inbound traffic from the internet is dropped and you cannot assign an elastic IP address to the network interface. The network interface is reachable from peered VPCs and resources connected through a transit gateway, including on-premises networks.
  bool get denyAllIgwTraffic;

  /// Indicates whether this is an IPv6 only network interface.
  bool get ipv6Native;

  /// The IPv6 globally unique address associated with the network interface.
  String? get ipv6Address;
  @override
  List<Object?> get props => [
        association,
        attachment,
        availabilityZone,
        description,
        groups,
        interfaceType,
        ipv6Addresses,
        macAddress,
        networkInterfaceId,
        outpostArn,
        ownerId,
        privateDnsName,
        privateIpAddress,
        privateIpAddresses,
        ipv4Prefixes,
        ipv6Prefixes,
        requesterId,
        requesterManaged,
        sourceDestCheck,
        status,
        subnetId,
        tagSet,
        vpcId,
        denyAllIgwTraffic,
        ipv6Native,
        ipv6Address,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterface');
    helper.add(
      'association',
      association,
    );
    helper.add(
      'attachment',
      attachment,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groups',
      groups,
    );
    helper.add(
      'interfaceType',
      interfaceType,
    );
    helper.add(
      'ipv6Addresses',
      ipv6Addresses,
    );
    helper.add(
      'macAddress',
      macAddress,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    helper.add(
      'privateIpAddresses',
      privateIpAddresses,
    );
    helper.add(
      'ipv4Prefixes',
      ipv4Prefixes,
    );
    helper.add(
      'ipv6Prefixes',
      ipv6Prefixes,
    );
    helper.add(
      'requesterId',
      requesterId,
    );
    helper.add(
      'requesterManaged',
      requesterManaged,
    );
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'tagSet',
      tagSet,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'denyAllIgwTraffic',
      denyAllIgwTraffic,
    );
    helper.add(
      'ipv6Native',
      ipv6Native,
    );
    helper.add(
      'ipv6Address',
      ipv6Address,
    );
    return helper.toString();
  }
}

class NetworkInterfaceEc2QuerySerializer
    extends _i13.StructuredSmithySerializer<NetworkInterface> {
  const NetworkInterfaceEc2QuerySerializer() : super('NetworkInterface');

  @override
  Iterable<Type> get types => const [
        NetworkInterface,
        _$NetworkInterface,
      ];
  @override
  Iterable<_i13.ShapeId> get supportedProtocols => const [
        _i13.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterface deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'association':
          if (value != null) {
            result.association.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NetworkInterfaceAssociation),
            ) as _i2.NetworkInterfaceAssociation));
          }
          break;
        case 'attachment':
          if (value != null) {
            result.attachment.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.NetworkInterfaceAttachment),
            ) as _i3.NetworkInterfaceAttachment));
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupSet':
          if (value != null) {
            result.groups.replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i4.GroupIdentifier)],
              ),
            ) as _i12.BuiltList<_i4.GroupIdentifier>));
          }
          break;
        case 'interfaceType':
          if (value != null) {
            result.interfaceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.NetworkInterfaceType),
            ) as _i5.NetworkInterfaceType);
          }
          break;
        case 'ipv6AddressesSet':
          if (value != null) {
            result.ipv6Addresses.replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i6.NetworkInterfaceIpv6Address)],
              ),
            ) as _i12.BuiltList<_i6.NetworkInterfaceIpv6Address>));
          }
          break;
        case 'macAddress':
          if (value != null) {
            result.macAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
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
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'privateDnsName':
          if (value != null) {
            result.privateDnsName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'privateIpAddress':
          if (value != null) {
            result.privateIpAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'privateIpAddressesSet':
          if (value != null) {
            result.privateIpAddresses
                .replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i7.NetworkInterfacePrivateIpAddress)],
              ),
            ) as _i12.BuiltList<_i7.NetworkInterfacePrivateIpAddress>));
          }
          break;
        case 'ipv4PrefixSet':
          if (value != null) {
            result.ipv4Prefixes.replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i8.Ipv4PrefixSpecification)],
              ),
            ) as _i12.BuiltList<_i8.Ipv4PrefixSpecification>));
          }
          break;
        case 'ipv6PrefixSet':
          if (value != null) {
            result.ipv6Prefixes.replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i9.Ipv6PrefixSpecification)],
              ),
            ) as _i12.BuiltList<_i9.Ipv6PrefixSpecification>));
          }
          break;
        case 'requesterId':
          if (value != null) {
            result.requesterId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'requesterManaged':
          result.requesterManaged = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'sourceDestCheck':
          result.sourceDestCheck = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.NetworkInterfaceStatus),
            ) as _i10.NetworkInterfaceStatus);
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
        case 'tagSet':
          if (value != null) {
            result.tagSet.replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i11.Tag)],
              ),
            ) as _i12.BuiltList<_i11.Tag>));
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
        case 'denyAllIgwTraffic':
          result.denyAllIgwTraffic = (serializers.deserialize(
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
        case 'ipv6Address':
          if (value != null) {
            result.ipv6Address = (serializers.deserialize(
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
    final payload = (object as NetworkInterface);
    final result = <Object?>[
      const _i13.XmlElementName(
        'NetworkInterfaceResponse',
        _i13.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.association != null) {
      result
        ..add(const _i13.XmlElementName('Association'))
        ..add(serializers.serialize(
          payload.association!,
          specifiedType: const FullType(_i2.NetworkInterfaceAssociation),
        ));
    }
    if (payload.attachment != null) {
      result
        ..add(const _i13.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          payload.attachment!,
          specifiedType: const FullType(_i3.NetworkInterfaceAttachment),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i13.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i13.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groups != null) {
      result
        ..add(const _i13.XmlElementName('GroupSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i4.GroupIdentifier)],
          ),
        ));
    }
    if (payload.interfaceType != null) {
      result
        ..add(const _i13.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          payload.interfaceType!,
          specifiedType: const FullType.nullable(_i5.NetworkInterfaceType),
        ));
    }
    if (payload.ipv6Addresses != null) {
      result
        ..add(const _i13.XmlElementName('Ipv6AddressesSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Addresses!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i6.NetworkInterfaceIpv6Address)],
          ),
        ));
    }
    if (payload.macAddress != null) {
      result
        ..add(const _i13.XmlElementName('MacAddress'))
        ..add(serializers.serialize(
          payload.macAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i13.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.outpostArn != null) {
      result
        ..add(const _i13.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i13.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateDnsName != null) {
      result
        ..add(const _i13.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          payload.privateDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i13.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddresses != null) {
      result
        ..add(const _i13.XmlElementName('PrivateIpAddressesSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.privateIpAddresses!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i7.NetworkInterfacePrivateIpAddress)],
          ),
        ));
    }
    if (payload.ipv4Prefixes != null) {
      result
        ..add(const _i13.XmlElementName('Ipv4PrefixSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv4Prefixes!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i8.Ipv4PrefixSpecification)],
          ),
        ));
    }
    if (payload.ipv6Prefixes != null) {
      result
        ..add(const _i13.XmlElementName('Ipv6PrefixSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Prefixes!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i9.Ipv6PrefixSpecification)],
          ),
        ));
    }
    if (payload.requesterId != null) {
      result
        ..add(const _i13.XmlElementName('RequesterId'))
        ..add(serializers.serialize(
          payload.requesterId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i13.XmlElementName('RequesterManaged'))
      ..add(serializers.serialize(
        payload.requesterManaged,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i13.XmlElementName('SourceDestCheck'))
      ..add(serializers.serialize(
        payload.sourceDestCheck,
        specifiedType: const FullType(bool),
      ));
    if (payload.status != null) {
      result
        ..add(const _i13.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i10.NetworkInterfaceStatus),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i13.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagSet != null) {
      result
        ..add(const _i13.XmlElementName('TagSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSet!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i11.Tag)],
          ),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i13.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i13.XmlElementName('DenyAllIgwTraffic'))
      ..add(serializers.serialize(
        payload.denyAllIgwTraffic,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i13.XmlElementName('Ipv6Native'))
      ..add(serializers.serialize(
        payload.ipv6Native,
        specifiedType: const FullType(bool),
      ));
    if (payload.ipv6Address != null) {
      result
        ..add(const _i13.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          payload.ipv6Address!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
