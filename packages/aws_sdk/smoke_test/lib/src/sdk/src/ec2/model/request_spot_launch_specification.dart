// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.request_spot_launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_monitoring_enabled.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement.dart' as _i7;

part 'request_spot_launch_specification.g.dart';

/// Describes the launch specification for an instance.
abstract class RequestSpotLaunchSpecification
    with
        _i1.AWSEquatable<RequestSpotLaunchSpecification>
    implements
        Built<RequestSpotLaunchSpecification,
            RequestSpotLaunchSpecificationBuilder> {
  /// Describes the launch specification for an instance.
  factory RequestSpotLaunchSpecification({
    List<String>? securityGroupIds,
    List<String>? securityGroups,
    String? addressingType,
    List<_i2.BlockDeviceMapping>? blockDeviceMappings,
    bool? ebsOptimized,
    _i3.IamInstanceProfileSpecification? iamInstanceProfile,
    String? imageId,
    _i4.InstanceType? instanceType,
    String? kernelId,
    String? keyName,
    _i5.RunInstancesMonitoringEnabled? monitoring,
    List<_i6.InstanceNetworkInterfaceSpecification>? networkInterfaces,
    _i7.SpotPlacement? placement,
    String? ramdiskId,
    String? subnetId,
    String? userData,
  }) {
    ebsOptimized ??= false;
    return _$RequestSpotLaunchSpecification._(
      securityGroupIds:
          securityGroupIds == null ? null : _i8.BuiltList(securityGroupIds),
      securityGroups:
          securityGroups == null ? null : _i8.BuiltList(securityGroups),
      addressingType: addressingType,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i8.BuiltList(blockDeviceMappings),
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      imageId: imageId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      monitoring: monitoring,
      networkInterfaces:
          networkInterfaces == null ? null : _i8.BuiltList(networkInterfaces),
      placement: placement,
      ramdiskId: ramdiskId,
      subnetId: subnetId,
      userData: userData,
    );
  }

  /// Describes the launch specification for an instance.
  factory RequestSpotLaunchSpecification.build(
          [void Function(RequestSpotLaunchSpecificationBuilder) updates]) =
      _$RequestSpotLaunchSpecification;

  const RequestSpotLaunchSpecification._();

  static const List<_i9.SmithySerializer> serializers = [
    RequestSpotLaunchSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestSpotLaunchSpecificationBuilder b) {
    b.ebsOptimized = false;
  }

  /// One or more security group IDs.
  _i8.BuiltList<String>? get securityGroupIds;

  /// One or more security groups. When requesting instances in a VPC, you must specify the IDs of the security groups. When requesting instances in EC2-Classic, you can specify the names or the IDs of the security groups.
  _i8.BuiltList<String>? get securityGroups;

  /// Deprecated.
  String? get addressingType;

  /// One or more block device mapping entries. You can't specify both a snapshot ID and an encryption value. This is because only blank volumes can be encrypted on creation. If a snapshot is the basis for a volume, it is not blank and its encryption status is used for the volume encryption status.
  _i8.BuiltList<_i2.BlockDeviceMapping>? get blockDeviceMappings;

  /// Indicates whether the instance is optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The IAM instance profile.
  _i3.IamInstanceProfileSpecification? get iamInstanceProfile;

  /// The ID of the AMI.
  String? get imageId;

  /// The instance type. Only one instance type can be specified.
  _i4.InstanceType? get instanceType;

  /// The ID of the kernel.
  String? get kernelId;

  /// The name of the key pair.
  String? get keyName;

  /// Indicates whether basic or detailed monitoring is enabled for the instance.
  ///
  /// Default: Disabled
  _i5.RunInstancesMonitoringEnabled? get monitoring;

  /// One or more network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
  _i8.BuiltList<_i6.InstanceNetworkInterfaceSpecification>?
      get networkInterfaces;

  /// The placement information for the instance.
  _i7.SpotPlacement? get placement;

  /// The ID of the RAM disk.
  String? get ramdiskId;

  /// The ID of the subnet in which to launch the instance.
  String? get subnetId;

  /// The Base64-encoded user data for the instance. User data is limited to 16 KB.
  String? get userData;
  @override
  List<Object?> get props => [
        securityGroupIds,
        securityGroups,
        addressingType,
        blockDeviceMappings,
        ebsOptimized,
        iamInstanceProfile,
        imageId,
        instanceType,
        kernelId,
        keyName,
        monitoring,
        networkInterfaces,
        placement,
        ramdiskId,
        subnetId,
        userData,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RequestSpotLaunchSpecification');
    helper.add(
      'securityGroupIds',
      securityGroupIds,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'addressingType',
      addressingType,
    );
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
    );
    helper.add(
      'ebsOptimized',
      ebsOptimized,
    );
    helper.add(
      'iamInstanceProfile',
      iamInstanceProfile,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'kernelId',
      kernelId,
    );
    helper.add(
      'keyName',
      keyName,
    );
    helper.add(
      'monitoring',
      monitoring,
    );
    helper.add(
      'networkInterfaces',
      networkInterfaces,
    );
    helper.add(
      'placement',
      placement,
    );
    helper.add(
      'ramdiskId',
      ramdiskId,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'userData',
      userData,
    );
    return helper.toString();
  }
}

class RequestSpotLaunchSpecificationEc2QuerySerializer
    extends _i9.StructuredSmithySerializer<RequestSpotLaunchSpecification> {
  const RequestSpotLaunchSpecificationEc2QuerySerializer()
      : super('RequestSpotLaunchSpecification');

  @override
  Iterable<Type> get types => const [
        RequestSpotLaunchSpecification,
        _$RequestSpotLaunchSpecification,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestSpotLaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestSpotLaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SecurityGroupId':
          if (value != null) {
            result.securityGroupIds.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'SecurityGroup':
          if (value != null) {
            result.securityGroups.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'addressingType':
          if (value != null) {
            result.addressingType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'blockDeviceMapping':
          if (value != null) {
            result.blockDeviceMappings
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i2.BlockDeviceMapping)],
              ),
            ) as _i8.BuiltList<_i2.BlockDeviceMapping>));
          }
          break;
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'iamInstanceProfile':
          if (value != null) {
            result.iamInstanceProfile.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.IamInstanceProfileSpecification),
            ) as _i3.IamInstanceProfileSpecification));
          }
          break;
        case 'imageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.InstanceType),
            ) as _i4.InstanceType);
          }
          break;
        case 'kernelId':
          if (value != null) {
            result.kernelId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'keyName':
          if (value != null) {
            result.keyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'monitoring':
          if (value != null) {
            result.monitoring.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.RunInstancesMonitoringEnabled),
            ) as _i5.RunInstancesMonitoringEnabled));
          }
          break;
        case 'NetworkInterface':
          if (value != null) {
            result.networkInterfaces.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i6.InstanceNetworkInterfaceSpecification)],
              ),
            ) as _i8.BuiltList<_i6.InstanceNetworkInterfaceSpecification>));
          }
          break;
        case 'placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.SpotPlacement),
            ) as _i7.SpotPlacement));
          }
          break;
        case 'ramdiskId':
          if (value != null) {
            result.ramdiskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'userData':
          if (value != null) {
            result.userData = (serializers.deserialize(
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
    final payload = (object as RequestSpotLaunchSpecification);
    final result = <Object?>[
      const _i9.XmlElementName(
        'RequestSpotLaunchSpecificationResponse',
        _i9.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.securityGroupIds != null) {
      result
        ..add(const _i9.XmlElementName('SecurityGroupId'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupIds!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.securityGroups != null) {
      result
        ..add(const _i9.XmlElementName('SecurityGroup'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroups!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.addressingType != null) {
      result
        ..add(const _i9.XmlElementName('AddressingType'))
        ..add(serializers.serialize(
          payload.addressingType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i9.XmlElementName('BlockDeviceMapping'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i2.BlockDeviceMapping)],
          ),
        ));
    }
    result
      ..add(const _i9.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (payload.iamInstanceProfile != null) {
      result
        ..add(const _i9.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          payload.iamInstanceProfile!,
          specifiedType: const FullType(_i3.IamInstanceProfileSpecification),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i9.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i9.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i4.InstanceType),
        ));
    }
    if (payload.kernelId != null) {
      result
        ..add(const _i9.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          payload.kernelId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyName != null) {
      result
        ..add(const _i9.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          payload.keyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.monitoring != null) {
      result
        ..add(const _i9.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          payload.monitoring!,
          specifiedType: const FullType(_i5.RunInstancesMonitoringEnabled),
        ));
    }
    if (payload.networkInterfaces != null) {
      result
        ..add(const _i9.XmlElementName('NetworkInterface'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaces!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i6.InstanceNetworkInterfaceSpecification)],
          ),
        ));
    }
    if (payload.placement != null) {
      result
        ..add(const _i9.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i7.SpotPlacement),
        ));
    }
    if (payload.ramdiskId != null) {
      result
        ..add(const _i9.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          payload.ramdiskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i9.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userData != null) {
      result
        ..add(const _i9.XmlElementName('UserData'))
        ..add(serializers.serialize(
          payload.userData!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
