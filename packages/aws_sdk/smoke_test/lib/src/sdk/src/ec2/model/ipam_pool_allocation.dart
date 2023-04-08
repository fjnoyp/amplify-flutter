// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipam_pool_allocation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation_resource_type.dart'
    as _i2;

part 'ipam_pool_allocation.g.dart';

/// In IPAM, an allocation is a CIDR assignment from an IPAM pool to another resource or IPAM pool.
abstract class IpamPoolAllocation
    with _i1.AWSEquatable<IpamPoolAllocation>
    implements Built<IpamPoolAllocation, IpamPoolAllocationBuilder> {
  /// In IPAM, an allocation is a CIDR assignment from an IPAM pool to another resource or IPAM pool.
  factory IpamPoolAllocation({
    String? cidr,
    String? ipamPoolAllocationId,
    String? description,
    String? resourceId,
    _i2.IpamPoolAllocationResourceType? resourceType,
    String? resourceRegion,
    String? resourceOwner,
  }) {
    return _$IpamPoolAllocation._(
      cidr: cidr,
      ipamPoolAllocationId: ipamPoolAllocationId,
      description: description,
      resourceId: resourceId,
      resourceType: resourceType,
      resourceRegion: resourceRegion,
      resourceOwner: resourceOwner,
    );
  }

  /// In IPAM, an allocation is a CIDR assignment from an IPAM pool to another resource or IPAM pool.
  factory IpamPoolAllocation.build(
          [void Function(IpamPoolAllocationBuilder) updates]) =
      _$IpamPoolAllocation;

  const IpamPoolAllocation._();

  static const List<_i3.SmithySerializer> serializers = [
    IpamPoolAllocationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamPoolAllocationBuilder b) {}

  /// The CIDR for the allocation. A CIDR is a representation of an IP address and its associated network mask (or netmask) and refers to a range of IP addresses. An IPv4 CIDR example is `10.24.34.0/23`. An IPv6 CIDR example is `2001:DB8::/32`.
  String? get cidr;

  /// The ID of an allocation.
  String? get ipamPoolAllocationId;

  /// A description of the pool allocation.
  String? get description;

  /// The ID of the resource.
  String? get resourceId;

  /// The type of the resource.
  _i2.IpamPoolAllocationResourceType? get resourceType;

  /// The Amazon Web Services Region of the resource.
  String? get resourceRegion;

  /// The owner of the resource.
  String? get resourceOwner;
  @override
  List<Object?> get props => [
        cidr,
        ipamPoolAllocationId,
        description,
        resourceId,
        resourceType,
        resourceRegion,
        resourceOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamPoolAllocation');
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'ipamPoolAllocationId',
      ipamPoolAllocationId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceRegion',
      resourceRegion,
    );
    helper.add(
      'resourceOwner',
      resourceOwner,
    );
    return helper.toString();
  }
}

class IpamPoolAllocationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamPoolAllocation> {
  const IpamPoolAllocationEc2QuerySerializer() : super('IpamPoolAllocation');

  @override
  Iterable<Type> get types => const [
        IpamPoolAllocation,
        _$IpamPoolAllocation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamPoolAllocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamPoolAllocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidr':
          if (value != null) {
            result.cidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamPoolAllocationId':
          if (value != null) {
            result.ipamPoolAllocationId = (serializers.deserialize(
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
        case 'resourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamPoolAllocationResourceType),
            ) as _i2.IpamPoolAllocationResourceType);
          }
          break;
        case 'resourceRegion':
          if (value != null) {
            result.resourceRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceOwner':
          if (value != null) {
            result.resourceOwner = (serializers.deserialize(
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
    final payload = (object as IpamPoolAllocation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'IpamPoolAllocationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidr != null) {
      result
        ..add(const _i3.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          payload.cidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamPoolAllocationId != null) {
      result
        ..add(const _i3.XmlElementName('IpamPoolAllocationId'))
        ..add(serializers.serialize(
          payload.ipamPoolAllocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i3.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType:
              const FullType.nullable(_i2.IpamPoolAllocationResourceType),
        ));
    }
    if (payload.resourceRegion != null) {
      result
        ..add(const _i3.XmlElementName('ResourceRegion'))
        ..add(serializers.serialize(
          payload.resourceRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceOwner != null) {
      result
        ..add(const _i3.XmlElementName('ResourceOwner'))
        ..add(serializers.serialize(
          payload.resourceOwner!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
