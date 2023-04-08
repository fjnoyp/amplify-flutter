// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_interface_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv4_prefix_specification_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_prefix_specification_request.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_creation_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/private_ip_address_specification.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i8;

part 'create_network_interface_request.g.dart';

abstract class CreateNetworkInterfaceRequest
    with
        _i1.HttpInput<CreateNetworkInterfaceRequest>,
        _i2.AWSEquatable<CreateNetworkInterfaceRequest>
    implements
        Built<CreateNetworkInterfaceRequest,
            CreateNetworkInterfaceRequestBuilder> {
  factory CreateNetworkInterfaceRequest({
    String? description,
    bool? dryRun,
    List<String>? groups,
    int? ipv6AddressCount,
    List<_i3.InstanceIpv6Address>? ipv6Addresses,
    String? privateIpAddress,
    List<_i4.PrivateIpAddressSpecification>? privateIpAddresses,
    int? secondaryPrivateIpAddressCount,
    List<_i5.Ipv4PrefixSpecificationRequest>? ipv4Prefixes,
    int? ipv4PrefixCount,
    List<_i6.Ipv6PrefixSpecificationRequest>? ipv6Prefixes,
    int? ipv6PrefixCount,
    _i7.NetworkInterfaceCreationType? interfaceType,
    required String subnetId,
    List<_i8.TagSpecification>? tagSpecifications,
    String? clientToken,
  }) {
    dryRun ??= false;
    ipv6AddressCount ??= 0;
    secondaryPrivateIpAddressCount ??= 0;
    ipv4PrefixCount ??= 0;
    ipv6PrefixCount ??= 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$CreateNetworkInterfaceRequest._(
      description: description,
      dryRun: dryRun,
      groups: groups == null ? null : _i9.BuiltList(groups),
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i9.BuiltList(ipv6Addresses),
      privateIpAddress: privateIpAddress,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i9.BuiltList(privateIpAddresses),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
      ipv4Prefixes: ipv4Prefixes == null ? null : _i9.BuiltList(ipv4Prefixes),
      ipv4PrefixCount: ipv4PrefixCount,
      ipv6Prefixes: ipv6Prefixes == null ? null : _i9.BuiltList(ipv6Prefixes),
      ipv6PrefixCount: ipv6PrefixCount,
      interfaceType: interfaceType,
      subnetId: subnetId,
      tagSpecifications:
          tagSpecifications == null ? null : _i9.BuiltList(tagSpecifications),
      clientToken: clientToken,
    );
  }

  factory CreateNetworkInterfaceRequest.build(
          [void Function(CreateNetworkInterfaceRequestBuilder) updates]) =
      _$CreateNetworkInterfaceRequest;

  const CreateNetworkInterfaceRequest._();

  factory CreateNetworkInterfaceRequest.fromRequest(
    CreateNetworkInterfaceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateNetworkInterfaceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInterfaceRequestBuilder b) {
    b.dryRun = false;
    b.ipv6AddressCount = 0;
    b.secondaryPrivateIpAddressCount = 0;
    b.ipv4PrefixCount = 0;
    b.ipv6PrefixCount = 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// A description for the network interface.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of one or more security groups.
  _i9.BuiltList<String>? get groups;

  /// The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range.
  ///
  /// You can't specify a count of IPv6 addresses using this parameter if you've specified one of the following: specific IPv6 addresses, specific IPv6 prefixes, or a count of IPv6 prefixes.
  ///
  /// If your subnet has the `AssignIpv6AddressOnCreation` attribute set, you can override that setting by specifying 0 as the IPv6 address count.
  int get ipv6AddressCount;

  /// The IPv6 addresses from the IPv6 CIDR block range of your subnet.
  ///
  /// You can't specify IPv6 addresses using this parameter if you've specified one of the following: a count of IPv6 addresses, specific IPv6 prefixes, or a count of IPv6 prefixes.
  _i9.BuiltList<_i3.InstanceIpv6Address>? get ipv6Addresses;

  /// The primary private IPv4 address of the network interface. If you don't specify an IPv4 address, Amazon EC2 selects one for you from the subnet's IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in `privateIpAddresses` as primary (only one IP address can be designated as primary).
  String? get privateIpAddress;

  /// The private IPv4 addresses.
  ///
  /// You can't specify private IPv4 addresses if you've specified one of the following: a count of private IPv4 addresses, specific IPv4 prefixes, or a count of IPv4 prefixes.
  _i9.BuiltList<_i4.PrivateIpAddressSpecification>? get privateIpAddresses;

  /// The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using `privateIpAddresses`.
  ///
  /// You can't specify a count of private IPv4 addresses if you've specified one of the following: specific private IPv4 addresses, specific IPv4 prefixes, or a count of IPv4 prefixes.
  int get secondaryPrivateIpAddressCount;

  /// The IPv4 prefixes assigned to the network interface.
  ///
  /// You can't specify IPv4 prefixes if you've specified one of the following: a count of IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  _i9.BuiltList<_i5.Ipv4PrefixSpecificationRequest>? get ipv4Prefixes;

  /// The number of IPv4 prefixes that Amazon Web Services automatically assigns to the network interface.
  ///
  /// You can't specify a count of IPv4 prefixes if you've specified one of the following: specific IPv4 prefixes, specific private IPv4 addresses, or a count of private IPv4 addresses.
  int get ipv4PrefixCount;

  /// The IPv6 prefixes assigned to the network interface.
  ///
  /// You can't specify IPv6 prefixes if you've specified one of the following: a count of IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  _i9.BuiltList<_i6.Ipv6PrefixSpecificationRequest>? get ipv6Prefixes;

  /// The number of IPv6 prefixes that Amazon Web Services automatically assigns to the network interface.
  ///
  /// You can't specify a count of IPv6 prefixes if you've specified one of the following: specific IPv6 prefixes, specific IPv6 addresses, or a count of IPv6 addresses.
  int get ipv6PrefixCount;

  /// The type of network interface. The default is `interface`.
  ///
  /// The only supported values are `efa` and `trunk`.
  _i7.NetworkInterfaceCreationType? get interfaceType;

  /// The ID of the subnet to associate with the network interface.
  String get subnetId;

  /// The tags to apply to the new network interface.
  _i9.BuiltList<_i8.TagSpecification>? get tagSpecifications;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  CreateNetworkInterfaceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        dryRun,
        groups,
        ipv6AddressCount,
        ipv6Addresses,
        privateIpAddress,
        privateIpAddresses,
        secondaryPrivateIpAddressCount,
        ipv4Prefixes,
        ipv4PrefixCount,
        ipv6Prefixes,
        ipv6PrefixCount,
        interfaceType,
        subnetId,
        tagSpecifications,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNetworkInterfaceRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'dryRun',
      dryRun,
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
    helper.add(
      'interfaceType',
      interfaceType,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateNetworkInterfaceRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateNetworkInterfaceRequest> {
  const CreateNetworkInterfaceRequestEc2QuerySerializer()
      : super('CreateNetworkInterfaceRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInterfaceRequest,
        _$CreateNetworkInterfaceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInterfaceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInterfaceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'SecurityGroupId':
          if (value != null) {
            result.groups.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'SecurityGroupId',
              indexer: _i1.XmlIndexer.ec2QueryList,
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
        case 'ipv6AddressCount':
          result.ipv6AddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ipv6Addresses':
          if (value != null) {
            result.ipv6Addresses.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i3.InstanceIpv6Address)],
              ),
            ) as _i9.BuiltList<_i3.InstanceIpv6Address>));
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
        case 'privateIpAddresses':
          if (value != null) {
            result.privateIpAddresses.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i4.PrivateIpAddressSpecification)],
              ),
            ) as _i9.BuiltList<_i4.PrivateIpAddressSpecification>));
          }
          break;
        case 'secondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Ipv4Prefix':
          if (value != null) {
            result.ipv4Prefixes.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i5.Ipv4PrefixSpecificationRequest)],
              ),
            ) as _i9.BuiltList<_i5.Ipv4PrefixSpecificationRequest>));
          }
          break;
        case 'Ipv4PrefixCount':
          result.ipv4PrefixCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Ipv6Prefix':
          if (value != null) {
            result.ipv6Prefixes.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i6.Ipv6PrefixSpecificationRequest)],
              ),
            ) as _i9.BuiltList<_i6.Ipv6PrefixSpecificationRequest>));
          }
          break;
        case 'Ipv6PrefixCount':
          result.ipv6PrefixCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'InterfaceType':
          if (value != null) {
            result.interfaceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.NetworkInterfaceCreationType),
            ) as _i7.NetworkInterfaceCreationType);
          }
          break;
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i9.BuiltList,
                [FullType(_i8.TagSpecification)],
              ),
            ) as _i9.BuiltList<_i8.TagSpecification>));
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
    final payload = (object as CreateNetworkInterfaceRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkInterfaceRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.groups != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Ipv6AddressCount'))
      ..add(serializers.serialize(
        payload.ipv6AddressCount,
        specifiedType: const FullType(int),
      ));
    if (payload.ipv6Addresses != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6Addresses'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Addresses!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i3.InstanceIpv6Address)],
          ),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddresses != null) {
      result
        ..add(const _i1.XmlElementName('PrivateIpAddresses'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.privateIpAddresses!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i4.PrivateIpAddressSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SecondaryPrivateIpAddressCount'))
      ..add(serializers.serialize(
        payload.secondaryPrivateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    if (payload.ipv4Prefixes != null) {
      result
        ..add(const _i1.XmlElementName('Ipv4Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv4Prefixes!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i5.Ipv4PrefixSpecificationRequest)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Ipv4PrefixCount'))
      ..add(serializers.serialize(
        payload.ipv4PrefixCount,
        specifiedType: const FullType(int),
      ));
    if (payload.ipv6Prefixes != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Prefixes!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i6.Ipv6PrefixSpecificationRequest)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Ipv6PrefixCount'))
      ..add(serializers.serialize(
        payload.ipv6PrefixCount,
        specifiedType: const FullType(int),
      ));
    if (payload.interfaceType != null) {
      result
        ..add(const _i1.XmlElementName('InterfaceType'))
        ..add(serializers.serialize(
          payload.interfaceType!,
          specifiedType:
              const FullType.nullable(_i7.NetworkInterfaceCreationType),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SubnetId'))
      ..add(serializers.serialize(
        payload.subnetId,
        specifiedType: const FullType(String),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i9.BuiltList,
            [FullType(_i8.TagSpecification)],
          ),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
