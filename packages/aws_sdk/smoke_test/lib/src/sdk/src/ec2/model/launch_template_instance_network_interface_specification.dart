// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_network_interface_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_response.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_response.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/private_ip_address_specification.dart'
    as _i3;

part 'launch_template_instance_network_interface_specification.g.dart';

/// Describes a network interface.
abstract class LaunchTemplateInstanceNetworkInterfaceSpecification
    with
        _i1.AWSEquatable<LaunchTemplateInstanceNetworkInterfaceSpecification>
    implements
        Built<LaunchTemplateInstanceNetworkInterfaceSpecification,
            LaunchTemplateInstanceNetworkInterfaceSpecificationBuilder> {
  /// Describes a network interface.
  factory LaunchTemplateInstanceNetworkInterfaceSpecification({
    bool? associateCarrierIpAddress,
    bool? associatePublicIpAddress,
    bool? deleteOnTermination,
    String? description,
    int? deviceIndex,
    List<String>? groups,
    String? interfaceType,
    int? ipv6AddressCount,
    List<_i2.InstanceIpv6Address>? ipv6Addresses,
    String? networkInterfaceId,
    String? privateIpAddress,
    List<_i3.PrivateIpAddressSpecification>? privateIpAddresses,
    int? secondaryPrivateIpAddressCount,
    String? subnetId,
    int? networkCardIndex,
    List<_i4.Ipv4PrefixSpecificationResponse>? ipv4Prefixes,
    int? ipv4PrefixCount,
    List<_i5.Ipv6PrefixSpecificationResponse>? ipv6Prefixes,
    int? ipv6PrefixCount,
  }) {
    associateCarrierIpAddress ??= false;
    associatePublicIpAddress ??= false;
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    ipv6AddressCount ??= 0;
    secondaryPrivateIpAddressCount ??= 0;
    networkCardIndex ??= 0;
    ipv4PrefixCount ??= 0;
    ipv6PrefixCount ??= 0;
    return _$LaunchTemplateInstanceNetworkInterfaceSpecification._(
      associateCarrierIpAddress: associateCarrierIpAddress,
      associatePublicIpAddress: associatePublicIpAddress,
      deleteOnTermination: deleteOnTermination,
      description: description,
      deviceIndex: deviceIndex,
      groups: groups == null ? null : _i6.BuiltList(groups),
      interfaceType: interfaceType,
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i6.BuiltList(ipv6Addresses),
      networkInterfaceId: networkInterfaceId,
      privateIpAddress: privateIpAddress,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i6.BuiltList(privateIpAddresses),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
      subnetId: subnetId,
      networkCardIndex: networkCardIndex,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i6.BuiltList(ipv4Prefixes),
      ipv4PrefixCount: ipv4PrefixCount,
      ipv6Prefixes: ipv6Prefixes == null ? null : _i6.BuiltList(ipv6Prefixes),
      ipv6PrefixCount: ipv6PrefixCount,
    );
  }

  /// Describes a network interface.
  factory LaunchTemplateInstanceNetworkInterfaceSpecification.build(
      [void Function(LaunchTemplateInstanceNetworkInterfaceSpecificationBuilder)
          updates]) = _$LaunchTemplateInstanceNetworkInterfaceSpecification;

  const LaunchTemplateInstanceNetworkInterfaceSpecification._();

  static const List<_i7.SmithySerializer> serializers = [
    LaunchTemplateInstanceNetworkInterfaceSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      LaunchTemplateInstanceNetworkInterfaceSpecificationBuilder b) {
    b.associateCarrierIpAddress = false;
    b.associatePublicIpAddress = false;
    b.deleteOnTermination = false;
    b.deviceIndex = 0;
    b.ipv6AddressCount = 0;
    b.secondaryPrivateIpAddressCount = 0;
    b.networkCardIndex = 0;
    b.ipv4PrefixCount = 0;
    b.ipv6PrefixCount = 0;
  }

  /// Indicates whether to associate a Carrier IP address with eth0 for a new network interface.
  ///
  /// Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. For more information about Carrier IP addresses, see [Carrier IP addresses](https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#provider-owned-ip) in the _Wavelength Developer Guide_.
  bool get associateCarrierIpAddress;

  /// Indicates whether to associate a public IPv4 address with eth0 for a new network interface.
  bool get associatePublicIpAddress;

  /// Indicates whether the network interface is deleted when the instance is terminated.
  bool get deleteOnTermination;

  /// A description for the network interface.
  String? get description;

  /// The device index for the network interface attachment.
  int get deviceIndex;

  /// The IDs of one or more security groups.
  _i6.BuiltList<String>? get groups;

  /// The type of network interface.
  String? get interfaceType;

  /// The number of IPv6 addresses for the network interface.
  int get ipv6AddressCount;

  /// The IPv6 addresses for the network interface.
  _i6.BuiltList<_i2.InstanceIpv6Address>? get ipv6Addresses;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The primary private IPv4 address of the network interface.
  String? get privateIpAddress;

  /// One or more private IPv4 addresses.
  _i6.BuiltList<_i3.PrivateIpAddressSpecification>? get privateIpAddresses;

  /// The number of secondary private IPv4 addresses for the network interface.
  int get secondaryPrivateIpAddressCount;

  /// The ID of the subnet for the network interface.
  String? get subnetId;

  /// The index of the network card.
  int get networkCardIndex;

  /// One or more IPv4 prefixes assigned to the network interface.
  _i6.BuiltList<_i4.Ipv4PrefixSpecificationResponse>? get ipv4Prefixes;

  /// The number of IPv4 prefixes that Amazon Web Services automatically assigned to the network interface.
  int get ipv4PrefixCount;

  /// One or more IPv6 prefixes assigned to the network interface.
  _i6.BuiltList<_i5.Ipv6PrefixSpecificationResponse>? get ipv6Prefixes;

  /// The number of IPv6 prefixes that Amazon Web Services automatically assigned to the network interface.
  int get ipv6PrefixCount;
  @override
  List<Object?> get props => [
        associateCarrierIpAddress,
        associatePublicIpAddress,
        deleteOnTermination,
        description,
        deviceIndex,
        groups,
        interfaceType,
        ipv6AddressCount,
        ipv6Addresses,
        networkInterfaceId,
        privateIpAddress,
        privateIpAddresses,
        secondaryPrivateIpAddressCount,
        subnetId,
        networkCardIndex,
        ipv4Prefixes,
        ipv4PrefixCount,
        ipv6Prefixes,
        ipv6PrefixCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateInstanceNetworkInterfaceSpecification');
    helper.add(
      'associateCarrierIpAddress',
      associateCarrierIpAddress,
    );
    helper.add(
      'associatePublicIpAddress',
      associatePublicIpAddress,
    );
    helper.add(
      'deleteOnTermination',
      deleteOnTermination,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'deviceIndex',
      deviceIndex,
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
      'ipv6AddressCount',
      ipv6AddressCount,
    );
    helper.add(
      'ipv6Addresses',
      ipv6Addresses,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
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
      'secondaryPrivateIpAddressCount',
      secondaryPrivateIpAddressCount,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'networkCardIndex',
      networkCardIndex,
    );
    helper.add(
      'ipv4Prefixes',
      ipv4Prefixes,
    );
    helper.add(
      'ipv4PrefixCount',
      ipv4PrefixCount,
    );
    helper.add(
      'ipv6Prefixes',
      ipv6Prefixes,
    );
    helper.add(
      'ipv6PrefixCount',
      ipv6PrefixCount,
    );
    return helper.toString();
  }
}

class LaunchTemplateInstanceNetworkInterfaceSpecificationEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<
        LaunchTemplateInstanceNetworkInterfaceSpecification> {
  const LaunchTemplateInstanceNetworkInterfaceSpecificationEc2QuerySerializer()
      : super('LaunchTemplateInstanceNetworkInterfaceSpecification');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceNetworkInterfaceSpecification,
        _$LaunchTemplateInstanceNetworkInterfaceSpecification,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceNetworkInterfaceSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceNetworkInterfaceSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associateCarrierIpAddress':
          result.associateCarrierIpAddress = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'associatePublicIpAddress':
          result.associatePublicIpAddress = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'deviceIndex':
          result.deviceIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'groupSet':
          if (value != null) {
            result.groups.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'groupId',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'interfaceType':
          if (value != null) {
            result.interfaceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ipv6AddressesSet':
          if (value != null) {
            result.ipv6Addresses.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.InstanceIpv6Address)],
              ),
            ) as _i6.BuiltList<_i2.InstanceIpv6Address>));
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
            result.privateIpAddresses.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.PrivateIpAddressSpecification)],
              ),
            ) as _i6.BuiltList<_i3.PrivateIpAddressSpecification>));
          }
          break;
        case 'secondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ipv4PrefixSet':
          if (value != null) {
            result.ipv4Prefixes.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.Ipv4PrefixSpecificationResponse)],
              ),
            ) as _i6.BuiltList<_i4.Ipv4PrefixSpecificationResponse>));
          }
          break;
        case 'ipv4PrefixCount':
          result.ipv4PrefixCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ipv6PrefixSet':
          if (value != null) {
            result.ipv6Prefixes.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Ipv6PrefixSpecificationResponse)],
              ),
            ) as _i6.BuiltList<_i5.Ipv6PrefixSpecificationResponse>));
          }
          break;
        case 'ipv6PrefixCount':
          result.ipv6PrefixCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload =
        (object as LaunchTemplateInstanceNetworkInterfaceSpecification);
    final result = <Object?>[
      const _i7.XmlElementName(
        'LaunchTemplateInstanceNetworkInterfaceSpecificationResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i7.XmlElementName('AssociateCarrierIpAddress'))
      ..add(serializers.serialize(
        payload.associateCarrierIpAddress,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('AssociatePublicIpAddress'))
      ..add(serializers.serialize(
        payload.associatePublicIpAddress,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i7.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        payload.deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    if (payload.description != null) {
      result
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('DeviceIndex'))
      ..add(serializers.serialize(
        payload.deviceIndex,
        specifiedType: const FullType(int),
      ));
    if (payload.groups != null) {
      result
        ..add(const _i7.XmlElementName('GroupSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'groupId',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.interfaceType != null) {
      result
        ..add(const _i7.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          payload.interfaceType!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Ipv6AddressCount'))
      ..add(serializers.serialize(
        payload.ipv6AddressCount,
        specifiedType: const FullType(int),
      ));
    if (payload.ipv6Addresses != null) {
      result
        ..add(const _i7.XmlElementName('Ipv6AddressesSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Addresses!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.InstanceIpv6Address)],
          ),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i7.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i7.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddresses != null) {
      result
        ..add(const _i7.XmlElementName('PrivateIpAddressesSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.privateIpAddresses!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.PrivateIpAddressSpecification)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('SecondaryPrivateIpAddressCount'))
      ..add(serializers.serialize(
        payload.secondaryPrivateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (payload.subnetId != null) {
      result
        ..add(const _i7.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        payload.networkCardIndex,
        specifiedType: const FullType(int),
      ));
    if (payload.ipv4Prefixes != null) {
      result
        ..add(const _i7.XmlElementName('Ipv4PrefixSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv4Prefixes!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.Ipv4PrefixSpecificationResponse)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Ipv4PrefixCount'))
      ..add(serializers.serialize(
        payload.ipv4PrefixCount,
        specifiedType: const FullType(int),
      ));
    if (payload.ipv6Prefixes != null) {
      result
        ..add(const _i7.XmlElementName('Ipv6PrefixSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Prefixes!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Ipv6PrefixSpecificationResponse)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Ipv6PrefixCount'))
      ..add(serializers.serialize(
        payload.ipv6PrefixCount,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
