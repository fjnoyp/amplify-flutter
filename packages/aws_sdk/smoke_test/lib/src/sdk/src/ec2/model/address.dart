// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/domain_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'address.g.dart';

/// Describes an Elastic IP address, or a carrier IP address.
abstract class Address
    with _i1.AWSEquatable<Address>
    implements Built<Address, AddressBuilder> {
  /// Describes an Elastic IP address, or a carrier IP address.
  factory Address({
    String? instanceId,
    String? publicIp,
    String? allocationId,
    String? associationId,
    _i2.DomainType? domain,
    String? networkInterfaceId,
    String? networkInterfaceOwnerId,
    String? privateIpAddress,
    List<_i3.Tag>? tags,
    String? publicIpv4Pool,
    String? networkBorderGroup,
    String? customerOwnedIp,
    String? customerOwnedIpv4Pool,
    String? carrierIp,
  }) {
    return _$Address._(
      instanceId: instanceId,
      publicIp: publicIp,
      allocationId: allocationId,
      associationId: associationId,
      domain: domain,
      networkInterfaceId: networkInterfaceId,
      networkInterfaceOwnerId: networkInterfaceOwnerId,
      privateIpAddress: privateIpAddress,
      tags: tags == null ? null : _i4.BuiltList(tags),
      publicIpv4Pool: publicIpv4Pool,
      networkBorderGroup: networkBorderGroup,
      customerOwnedIp: customerOwnedIp,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      carrierIp: carrierIp,
    );
  }

  /// Describes an Elastic IP address, or a carrier IP address.
  factory Address.build([void Function(AddressBuilder) updates]) = _$Address;

  const Address._();

  static const List<_i5.SmithySerializer> serializers = [
    AddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddressBuilder b) {}

  /// The ID of the instance that the address is associated with (if any).
  String? get instanceId;

  /// The Elastic IP address.
  String? get publicIp;

  /// The ID representing the allocation of the address for use with EC2-VPC.
  String? get allocationId;

  /// The ID representing the association of the address with an instance in a VPC.
  String? get associationId;

  /// Indicates whether this Elastic IP address is for use with instances in EC2-Classic (`standard`) or instances in a VPC (`vpc`).
  _i2.DomainType? get domain;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The ID of the Amazon Web Services account that owns the network interface.
  String? get networkInterfaceOwnerId;

  /// The private IP address associated with the Elastic IP address.
  String? get privateIpAddress;

  /// Any tags assigned to the Elastic IP address.
  _i4.BuiltList<_i3.Tag>? get tags;

  /// The ID of an address pool.
  String? get publicIpv4Pool;

  /// The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.
  String? get networkBorderGroup;

  /// The customer-owned IP address.
  String? get customerOwnedIp;

  /// The ID of the customer-owned address pool.
  String? get customerOwnedIpv4Pool;

  /// The carrier IP address associated. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance).
  String? get carrierIp;
  @override
  List<Object?> get props => [
        instanceId,
        publicIp,
        allocationId,
        associationId,
        domain,
        networkInterfaceId,
        networkInterfaceOwnerId,
        privateIpAddress,
        tags,
        publicIpv4Pool,
        networkBorderGroup,
        customerOwnedIp,
        customerOwnedIpv4Pool,
        carrierIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Address');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'publicIp',
      publicIp,
    );
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'domain',
      domain,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'networkInterfaceOwnerId',
      networkInterfaceOwnerId,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'publicIpv4Pool',
      publicIpv4Pool,
    );
    helper.add(
      'networkBorderGroup',
      networkBorderGroup,
    );
    helper.add(
      'customerOwnedIp',
      customerOwnedIp,
    );
    helper.add(
      'customerOwnedIpv4Pool',
      customerOwnedIpv4Pool,
    );
    helper.add(
      'carrierIp',
      carrierIp,
    );
    return helper.toString();
  }
}

class AddressEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<Address> {
  const AddressEc2QuerySerializer() : super('Address');

  @override
  Iterable<Type> get types => const [
        Address,
        _$Address,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Address deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'publicIp':
          if (value != null) {
            result.publicIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'allocationId':
          if (value != null) {
            result.allocationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'associationId':
          if (value != null) {
            result.associationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'domain':
          if (value != null) {
            result.domain = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DomainType),
            ) as _i2.DomainType);
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
        case 'networkInterfaceOwnerId':
          if (value != null) {
            result.networkInterfaceOwnerId = (serializers.deserialize(
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
          }
          break;
        case 'publicIpv4Pool':
          if (value != null) {
            result.publicIpv4Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkBorderGroup':
          if (value != null) {
            result.networkBorderGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'customerOwnedIp':
          if (value != null) {
            result.customerOwnedIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'customerOwnedIpv4Pool':
          if (value != null) {
            result.customerOwnedIpv4Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'carrierIp':
          if (value != null) {
            result.carrierIp = (serializers.deserialize(
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
    final payload = (object as Address);
    final result = <Object?>[
      const _i5.XmlElementName(
        'AddressResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i5.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicIp != null) {
      result
        ..add(const _i5.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          payload.publicIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.allocationId != null) {
      result
        ..add(const _i5.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          payload.allocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.associationId != null) {
      result
        ..add(const _i5.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          payload.associationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.domain != null) {
      result
        ..add(const _i5.XmlElementName('Domain'))
        ..add(serializers.serialize(
          payload.domain!,
          specifiedType: const FullType.nullable(_i2.DomainType),
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
    if (payload.networkInterfaceOwnerId != null) {
      result
        ..add(const _i5.XmlElementName('NetworkInterfaceOwnerId'))
        ..add(serializers.serialize(
          payload.networkInterfaceOwnerId!,
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
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (payload.publicIpv4Pool != null) {
      result
        ..add(const _i5.XmlElementName('PublicIpv4Pool'))
        ..add(serializers.serialize(
          payload.publicIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkBorderGroup != null) {
      result
        ..add(const _i5.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          payload.networkBorderGroup!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.customerOwnedIp != null) {
      result
        ..add(const _i5.XmlElementName('CustomerOwnedIp'))
        ..add(serializers.serialize(
          payload.customerOwnedIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.customerOwnedIpv4Pool != null) {
      result
        ..add(const _i5.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          payload.customerOwnedIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.carrierIp != null) {
      result
        ..add(const _i5.XmlElementName('CarrierIp'))
        ..add(serializers.serialize(
          payload.carrierIp!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
