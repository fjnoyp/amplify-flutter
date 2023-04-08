// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scheduled_instances_network_interface; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_ipv6_address.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instances_private_ip_address_config.dart'
    as _i3;

part 'scheduled_instances_network_interface.g.dart';

/// Describes a network interface for a Scheduled Instance.
abstract class ScheduledInstancesNetworkInterface
    with
        _i1.AWSEquatable<ScheduledInstancesNetworkInterface>
    implements
        Built<ScheduledInstancesNetworkInterface,
            ScheduledInstancesNetworkInterfaceBuilder> {
  /// Describes a network interface for a Scheduled Instance.
  factory ScheduledInstancesNetworkInterface({
    bool? associatePublicIpAddress,
    bool? deleteOnTermination,
    String? description,
    int? deviceIndex,
    List<String>? groups,
    int? ipv6AddressCount,
    List<_i2.ScheduledInstancesIpv6Address>? ipv6Addresses,
    String? networkInterfaceId,
    String? privateIpAddress,
    List<_i3.ScheduledInstancesPrivateIpAddressConfig>? privateIpAddressConfigs,
    int? secondaryPrivateIpAddressCount,
    String? subnetId,
  }) {
    associatePublicIpAddress ??= false;
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    ipv6AddressCount ??= 0;
    secondaryPrivateIpAddressCount ??= 0;
    return _$ScheduledInstancesNetworkInterface._(
      associatePublicIpAddress: associatePublicIpAddress,
      deleteOnTermination: deleteOnTermination,
      description: description,
      deviceIndex: deviceIndex,
      groups: groups == null ? null : _i4.BuiltList(groups),
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i4.BuiltList(ipv6Addresses),
      networkInterfaceId: networkInterfaceId,
      privateIpAddress: privateIpAddress,
      privateIpAddressConfigs: privateIpAddressConfigs == null
          ? null
          : _i4.BuiltList(privateIpAddressConfigs),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
      subnetId: subnetId,
    );
  }

  /// Describes a network interface for a Scheduled Instance.
  factory ScheduledInstancesNetworkInterface.build(
          [void Function(ScheduledInstancesNetworkInterfaceBuilder) updates]) =
      _$ScheduledInstancesNetworkInterface;

  const ScheduledInstancesNetworkInterface._();

  static const List<_i5.SmithySerializer> serializers = [
    ScheduledInstancesNetworkInterfaceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesNetworkInterfaceBuilder b) {
    b.associatePublicIpAddress = false;
    b.deleteOnTermination = false;
    b.deviceIndex = 0;
    b.ipv6AddressCount = 0;
    b.secondaryPrivateIpAddressCount = 0;
  }

  /// Indicates whether to assign a public IPv4 address to instances launched in a VPC. The public IPv4 address can only be assigned to a network interface for eth0, and can only be assigned to a new network interface, not an existing one. You cannot specify more than one network interface in the request. If launching into a default subnet, the default value is `true`.
  bool get associatePublicIpAddress;

  /// Indicates whether to delete the interface when the instance is terminated.
  bool get deleteOnTermination;

  /// The description.
  String? get description;

  /// The index of the device for the network interface attachment.
  int get deviceIndex;

  /// The IDs of the security groups.
  _i4.BuiltList<String>? get groups;

  /// The number of IPv6 addresses to assign to the network interface. The IPv6 addresses are automatically selected from the subnet range.
  int get ipv6AddressCount;

  /// The specific IPv6 addresses from the subnet range.
  _i4.BuiltList<_i2.ScheduledInstancesIpv6Address>? get ipv6Addresses;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The IPv4 address of the network interface within the subnet.
  String? get privateIpAddress;

  /// The private IPv4 addresses.
  _i4.BuiltList<_i3.ScheduledInstancesPrivateIpAddressConfig>?
      get privateIpAddressConfigs;

  /// The number of secondary private IPv4 addresses.
  int get secondaryPrivateIpAddressCount;

  /// The ID of the subnet.
  String? get subnetId;
  @override
  List<Object?> get props => [
        associatePublicIpAddress,
        deleteOnTermination,
        description,
        deviceIndex,
        groups,
        ipv6AddressCount,
        ipv6Addresses,
        networkInterfaceId,
        privateIpAddress,
        privateIpAddressConfigs,
        secondaryPrivateIpAddressCount,
        subnetId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstancesNetworkInterface');
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
      'privateIpAddressConfigs',
      privateIpAddressConfigs,
    );
    helper.add(
      'secondaryPrivateIpAddressCount',
      secondaryPrivateIpAddressCount,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    return helper.toString();
  }
}

class ScheduledInstancesNetworkInterfaceEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ScheduledInstancesNetworkInterface> {
  const ScheduledInstancesNetworkInterfaceEc2QuerySerializer()
      : super('ScheduledInstancesNetworkInterface');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesNetworkInterface,
        _$ScheduledInstancesNetworkInterface,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesNetworkInterface deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesNetworkInterfaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AssociatePublicIpAddress':
          result.associatePublicIpAddress = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'DeleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeviceIndex':
          result.deviceIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Group':
          if (value != null) {
            result.groups.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'SecurityGroupId',
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
        case 'Ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Ipv6Address':
          if (value != null) {
            result.ipv6Addresses.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'Ipv6Address',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.ScheduledInstancesIpv6Address)],
              ),
            ) as _i4.BuiltList<_i2.ScheduledInstancesIpv6Address>));
          }
          break;
        case 'NetworkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PrivateIpAddress':
          if (value != null) {
            result.privateIpAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PrivateIpAddressConfig':
          if (value != null) {
            result.privateIpAddressConfigs
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'PrivateIpAddressConfigSet',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ScheduledInstancesPrivateIpAddressConfig)],
              ),
            ) as _i4.BuiltList<_i3.ScheduledInstancesPrivateIpAddressConfig>));
          }
          break;
        case 'SecondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'SubnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
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
    final payload = (object as ScheduledInstancesNetworkInterface);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ScheduledInstancesNetworkInterfaceResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i5.XmlElementName('AssociatePublicIpAddress'))
      ..add(serializers.serialize(
        payload.associatePublicIpAddress,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i5.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        payload.deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('DeviceIndex'))
      ..add(serializers.serialize(
        payload.deviceIndex,
        specifiedType: const FullType(int),
      ));
    if (payload.groups != null) {
      result
        ..add(const _i5.XmlElementName('Group'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i5.XmlElementName('Ipv6AddressCount'))
      ..add(serializers.serialize(
        payload.ipv6AddressCount,
        specifiedType: const FullType(int),
      ));
    if (payload.ipv6Addresses != null) {
      result
        ..add(const _i5.XmlElementName('Ipv6Address'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'Ipv6Address',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Addresses!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.ScheduledInstancesIpv6Address)],
          ),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i5.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i5.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddressConfigs != null) {
      result
        ..add(const _i5.XmlElementName('PrivateIpAddressConfig'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'PrivateIpAddressConfigSet',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.privateIpAddressConfigs!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ScheduledInstancesPrivateIpAddressConfig)],
          ),
        ));
    }
    result
      ..add(const _i5.XmlElementName('SecondaryPrivateIpAddressCount'))
      ..add(serializers.serialize(
        payload.secondaryPrivateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (payload.subnetId != null) {
      result
        ..add(const _i5.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
