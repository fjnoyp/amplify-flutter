// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.ipam_resource_cidr; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_compliance_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_management_state.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_overlap_status.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_tag.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_type.dart'
    as _i2;

part 'ipam_resource_cidr.g.dart';

/// The CIDR for an IPAM resource.
abstract class IpamResourceCidr
    with _i1.AWSEquatable<IpamResourceCidr>
    implements Built<IpamResourceCidr, IpamResourceCidrBuilder> {
  /// The CIDR for an IPAM resource.
  factory IpamResourceCidr({
    String? ipamId,
    String? ipamScopeId,
    String? ipamPoolId,
    String? resourceRegion,
    String? resourceOwnerId,
    String? resourceId,
    String? resourceName,
    String? resourceCidr,
    _i2.IpamResourceType? resourceType,
    List<_i3.IpamResourceTag>? resourceTags,
    double? ipUsage,
    _i4.IpamComplianceStatus? complianceStatus,
    _i5.IpamManagementState? managementState,
    _i6.IpamOverlapStatus? overlapStatus,
    String? vpcId,
  }) {
    return _$IpamResourceCidr._(
      ipamId: ipamId,
      ipamScopeId: ipamScopeId,
      ipamPoolId: ipamPoolId,
      resourceRegion: resourceRegion,
      resourceOwnerId: resourceOwnerId,
      resourceId: resourceId,
      resourceName: resourceName,
      resourceCidr: resourceCidr,
      resourceType: resourceType,
      resourceTags: resourceTags == null ? null : _i7.BuiltList(resourceTags),
      ipUsage: ipUsage,
      complianceStatus: complianceStatus,
      managementState: managementState,
      overlapStatus: overlapStatus,
      vpcId: vpcId,
    );
  }

  /// The CIDR for an IPAM resource.
  factory IpamResourceCidr.build(
      [void Function(IpamResourceCidrBuilder) updates]) = _$IpamResourceCidr;

  const IpamResourceCidr._();

  static const List<_i8.SmithySerializer> serializers = [
    IpamResourceCidrEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamResourceCidrBuilder b) {}

  /// The IPAM ID for an IPAM resource.
  String? get ipamId;

  /// The scope ID for an IPAM resource.
  String? get ipamScopeId;

  /// The pool ID for an IPAM resource.
  String? get ipamPoolId;

  /// The Amazon Web Services Region for an IPAM resource.
  String? get resourceRegion;

  /// The Amazon Web Services account number of the owner of an IPAM resource.
  String? get resourceOwnerId;

  /// The ID of an IPAM resource.
  String? get resourceId;

  /// The name of an IPAM resource.
  String? get resourceName;

  /// The CIDR for an IPAM resource.
  String? get resourceCidr;

  /// The type of IPAM resource.
  _i2.IpamResourceType? get resourceType;

  /// The tags for an IPAM resource.
  _i7.BuiltList<_i3.IpamResourceTag>? get resourceTags;

  /// The percentage of IP address space in use. To convert the decimal to a percentage, multiply the decimal by 100. Note the following:
  ///
  /// *   For a resources that are VPCs, this is the percentage of IP address space in the VPC that's taken up by subnet CIDRs.
  ///
  /// *   For resources that are subnets, if the subnet has an IPv4 CIDR provisioned to it, this is the percentage of IPv4 address space in the subnet that's in use. If the subnet has an IPv6 CIDR provisioned to it, the percentage of IPv6 address space in use is not represented. The percentage of IPv6 address space in use cannot currently be calculated.
  ///
  /// *   For resources that are public IPv4 pools, this is the percentage of IP address space in the pool that's been allocated to Elastic IP addresses (EIPs).
  double? get ipUsage;

  /// The compliance status of the IPAM resource. For more information on compliance statuses, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i4.IpamComplianceStatus? get complianceStatus;

  /// The management state of the resource. For more information about management states, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i5.IpamManagementState? get managementState;

  /// The overlap status of an IPAM resource. The overlap status tells you if the CIDR for a resource overlaps with another CIDR in the scope. For more information on overlap statuses, see [Monitor CIDR usage by resource](https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i6.IpamOverlapStatus? get overlapStatus;

  /// The ID of a VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        ipamId,
        ipamScopeId,
        ipamPoolId,
        resourceRegion,
        resourceOwnerId,
        resourceId,
        resourceName,
        resourceCidr,
        resourceType,
        resourceTags,
        ipUsage,
        complianceStatus,
        managementState,
        overlapStatus,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamResourceCidr');
    helper.add(
      'ipamId',
      ipamId,
    );
    helper.add(
      'ipamScopeId',
      ipamScopeId,
    );
    helper.add(
      'ipamPoolId',
      ipamPoolId,
    );
    helper.add(
      'resourceRegion',
      resourceRegion,
    );
    helper.add(
      'resourceOwnerId',
      resourceOwnerId,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceName',
      resourceName,
    );
    helper.add(
      'resourceCidr',
      resourceCidr,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'resourceTags',
      resourceTags,
    );
    helper.add(
      'ipUsage',
      ipUsage,
    );
    helper.add(
      'complianceStatus',
      complianceStatus,
    );
    helper.add(
      'managementState',
      managementState,
    );
    helper.add(
      'overlapStatus',
      overlapStatus,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class IpamResourceCidrEc2QuerySerializer
    extends _i8.StructuredSmithySerializer<IpamResourceCidr> {
  const IpamResourceCidrEc2QuerySerializer() : super('IpamResourceCidr');

  @override
  Iterable<Type> get types => const [
        IpamResourceCidr,
        _$IpamResourceCidr,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamResourceCidr deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamResourceCidrBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamId':
          if (value != null) {
            result.ipamId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamScopeId':
          if (value != null) {
            result.ipamScopeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamPoolId':
          if (value != null) {
            result.ipamPoolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'resourceOwnerId':
          if (value != null) {
            result.resourceOwnerId = (serializers.deserialize(
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
        case 'resourceName':
          if (value != null) {
            result.resourceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceCidr':
          if (value != null) {
            result.resourceCidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamResourceType),
            ) as _i2.IpamResourceType);
          }
          break;
        case 'resourceTagSet':
          if (value != null) {
            result.resourceTags.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i3.IpamResourceTag)],
              ),
            ) as _i7.BuiltList<_i3.IpamResourceTag>));
          }
          break;
        case 'ipUsage':
          if (value != null) {
            result.ipUsage = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'complianceStatus':
          if (value != null) {
            result.complianceStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.IpamComplianceStatus),
            ) as _i4.IpamComplianceStatus);
          }
          break;
        case 'managementState':
          if (value != null) {
            result.managementState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.IpamManagementState),
            ) as _i5.IpamManagementState);
          }
          break;
        case 'overlapStatus':
          if (value != null) {
            result.overlapStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.IpamOverlapStatus),
            ) as _i6.IpamOverlapStatus);
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
    final payload = (object as IpamResourceCidr);
    final result = <Object?>[
      const _i8.XmlElementName(
        'IpamResourceCidrResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamId != null) {
      result
        ..add(const _i8.XmlElementName('IpamId'))
        ..add(serializers.serialize(
          payload.ipamId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamScopeId != null) {
      result
        ..add(const _i8.XmlElementName('IpamScopeId'))
        ..add(serializers.serialize(
          payload.ipamScopeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamPoolId != null) {
      result
        ..add(const _i8.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          payload.ipamPoolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceRegion != null) {
      result
        ..add(const _i8.XmlElementName('ResourceRegion'))
        ..add(serializers.serialize(
          payload.resourceRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceOwnerId != null) {
      result
        ..add(const _i8.XmlElementName('ResourceOwnerId'))
        ..add(serializers.serialize(
          payload.resourceOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i8.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceName != null) {
      result
        ..add(const _i8.XmlElementName('ResourceName'))
        ..add(serializers.serialize(
          payload.resourceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceCidr != null) {
      result
        ..add(const _i8.XmlElementName('ResourceCidr'))
        ..add(serializers.serialize(
          payload.resourceCidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add(const _i8.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType.nullable(_i2.IpamResourceType),
        ));
    }
    if (payload.resourceTags != null) {
      result
        ..add(const _i8.XmlElementName('ResourceTagSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.resourceTags!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i3.IpamResourceTag)],
          ),
        ));
    }
    if (payload.ipUsage != null) {
      result
        ..add(const _i8.XmlElementName('IpUsage'))
        ..add(serializers.serialize(
          payload.ipUsage!,
          specifiedType: const FullType.nullable(double),
        ));
    }
    if (payload.complianceStatus != null) {
      result
        ..add(const _i8.XmlElementName('ComplianceStatus'))
        ..add(serializers.serialize(
          payload.complianceStatus!,
          specifiedType: const FullType.nullable(_i4.IpamComplianceStatus),
        ));
    }
    if (payload.managementState != null) {
      result
        ..add(const _i8.XmlElementName('ManagementState'))
        ..add(serializers.serialize(
          payload.managementState!,
          specifiedType: const FullType.nullable(_i5.IpamManagementState),
        ));
    }
    if (payload.overlapStatus != null) {
      result
        ..add(const _i8.XmlElementName('OverlapStatus'))
        ..add(serializers.serialize(
          payload.overlapStatus!,
          specifiedType: const FullType.nullable(_i6.IpamOverlapStatus),
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
    return result;
  }
}
