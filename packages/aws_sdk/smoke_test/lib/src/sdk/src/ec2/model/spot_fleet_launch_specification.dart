// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_fleet_launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i11;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_monitoring.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_tag_specification.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement.dart' as _i8;

part 'spot_fleet_launch_specification.g.dart';

/// Describes the launch specification for one or more Spot Instances. If you include On-Demand capacity in your fleet request or want to specify an EFA network device, you can't use `SpotFleetLaunchSpecification`; you must use [LaunchTemplateConfig](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_LaunchTemplateConfig.html).
abstract class SpotFleetLaunchSpecification
    with
        _i1.AWSEquatable<SpotFleetLaunchSpecification>
    implements
        Built<SpotFleetLaunchSpecification,
            SpotFleetLaunchSpecificationBuilder> {
  /// Describes the launch specification for one or more Spot Instances. If you include On-Demand capacity in your fleet request or want to specify an EFA network device, you can't use `SpotFleetLaunchSpecification`; you must use [LaunchTemplateConfig](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_LaunchTemplateConfig.html).
  factory SpotFleetLaunchSpecification({
    List<_i2.GroupIdentifier>? securityGroups,
    String? addressingType,
    List<_i3.BlockDeviceMapping>? blockDeviceMappings,
    bool? ebsOptimized,
    _i4.IamInstanceProfileSpecification? iamInstanceProfile,
    String? imageId,
    _i5.InstanceType? instanceType,
    String? kernelId,
    String? keyName,
    _i6.SpotFleetMonitoring? monitoring,
    List<_i7.InstanceNetworkInterfaceSpecification>? networkInterfaces,
    _i8.SpotPlacement? placement,
    String? ramdiskId,
    String? spotPrice,
    String? subnetId,
    String? userData,
    double? weightedCapacity,
    List<_i9.SpotFleetTagSpecification>? tagSpecifications,
    _i10.InstanceRequirements? instanceRequirements,
  }) {
    ebsOptimized ??= false;
    weightedCapacity ??= 0;
    return _$SpotFleetLaunchSpecification._(
      securityGroups:
          securityGroups == null ? null : _i11.BuiltList(securityGroups),
      addressingType: addressingType,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i11.BuiltList(blockDeviceMappings),
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      imageId: imageId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      monitoring: monitoring,
      networkInterfaces:
          networkInterfaces == null ? null : _i11.BuiltList(networkInterfaces),
      placement: placement,
      ramdiskId: ramdiskId,
      spotPrice: spotPrice,
      subnetId: subnetId,
      userData: userData,
      weightedCapacity: weightedCapacity,
      tagSpecifications:
          tagSpecifications == null ? null : _i11.BuiltList(tagSpecifications),
      instanceRequirements: instanceRequirements,
    );
  }

  /// Describes the launch specification for one or more Spot Instances. If you include On-Demand capacity in your fleet request or want to specify an EFA network device, you can't use `SpotFleetLaunchSpecification`; you must use [LaunchTemplateConfig](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_LaunchTemplateConfig.html).
  factory SpotFleetLaunchSpecification.build(
          [void Function(SpotFleetLaunchSpecificationBuilder) updates]) =
      _$SpotFleetLaunchSpecification;

  const SpotFleetLaunchSpecification._();

  static const List<_i12.SmithySerializer> serializers = [
    SpotFleetLaunchSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotFleetLaunchSpecificationBuilder b) {
    b.ebsOptimized = false;
    b.weightedCapacity = 0;
  }

  /// One or more security groups. When requesting instances in a VPC, you must specify the IDs of the security groups. When requesting instances in EC2-Classic, you can specify the names or the IDs of the security groups.
  _i11.BuiltList<_i2.GroupIdentifier>? get securityGroups;

  /// Deprecated.
  String? get addressingType;

  /// One or more block devices that are mapped to the Spot Instances. You can't specify both a snapshot ID and an encryption value. This is because only blank volumes can be encrypted on creation. If a snapshot is the basis for a volume, it is not blank and its encryption status is used for the volume encryption status.
  _i11.BuiltList<_i3.BlockDeviceMapping>? get blockDeviceMappings;

  /// Indicates whether the instances are optimized for EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The IAM instance profile.
  _i4.IamInstanceProfileSpecification? get iamInstanceProfile;

  /// The ID of the AMI.
  String? get imageId;

  /// The instance type.
  _i5.InstanceType? get instanceType;

  /// The ID of the kernel.
  String? get kernelId;

  /// The name of the key pair.
  String? get keyName;

  /// Enable or disable monitoring for the instances.
  _i6.SpotFleetMonitoring? get monitoring;

  /// One or more network interfaces. If you specify a network interface, you must specify subnet IDs and security group IDs using the network interface.
  ///
  /// `SpotFleetLaunchSpecification` currently does not support Elastic Fabric Adapter (EFA). To specify an EFA, you must use [LaunchTemplateConfig](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_LaunchTemplateConfig.html).
  _i11.BuiltList<_i7.InstanceNetworkInterfaceSpecification>?
      get networkInterfaces;

  /// The placement information.
  _i8.SpotPlacement? get placement;

  /// The ID of the RAM disk. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, refer to the Amazon Web Services Resource Center and search for the kernel ID.
  String? get ramdiskId;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The IDs of the subnets in which to launch the instances. To specify multiple subnets, separate them using commas; for example, "subnet-1234abcdeexample1, subnet-0987cdef6example2".
  String? get subnetId;

  /// The Base64-encoded user data that instances use when starting up.
  String? get userData;

  /// The number of units provided by the specified instance type. These are the same units that you chose to set the target capacity in terms of instances, or a performance characteristic such as vCPUs, memory, or I/O.
  ///
  /// If the target capacity divided by this value is not a whole number, Amazon EC2 rounds the number of instances to the next whole number. If this value is not specified, the default is 1.
  double get weightedCapacity;

  /// The tags to apply during creation.
  _i11.BuiltList<_i9.SpotFleetTagSpecification>? get tagSpecifications;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceType`.
  _i10.InstanceRequirements? get instanceRequirements;
  @override
  List<Object?> get props => [
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
        spotPrice,
        subnetId,
        userData,
        weightedCapacity,
        tagSpecifications,
        instanceRequirements,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotFleetLaunchSpecification');
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
      'spotPrice',
      spotPrice,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'userData',
      userData,
    );
    helper.add(
      'weightedCapacity',
      weightedCapacity,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'instanceRequirements',
      instanceRequirements,
    );
    return helper.toString();
  }
}

class SpotFleetLaunchSpecificationEc2QuerySerializer
    extends _i12.StructuredSmithySerializer<SpotFleetLaunchSpecification> {
  const SpotFleetLaunchSpecificationEc2QuerySerializer()
      : super('SpotFleetLaunchSpecification');

  @override
  Iterable<Type> get types => const [
        SpotFleetLaunchSpecification,
        _$SpotFleetLaunchSpecification,
      ];
  @override
  Iterable<_i12.ShapeId> get supportedProtocols => const [
        _i12.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotFleetLaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotFleetLaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupSet':
          if (value != null) {
            result.securityGroups.replace((const _i12.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i12.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i11.BuiltList,
                [FullType(_i2.GroupIdentifier)],
              ),
            ) as _i11.BuiltList<_i2.GroupIdentifier>));
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
                .replace((const _i12.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i12.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i11.BuiltList,
                [FullType(_i3.BlockDeviceMapping)],
              ),
            ) as _i11.BuiltList<_i3.BlockDeviceMapping>));
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
                  const FullType(_i4.IamInstanceProfileSpecification),
            ) as _i4.IamInstanceProfileSpecification));
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
              specifiedType: const FullType(_i5.InstanceType),
            ) as _i5.InstanceType);
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
              specifiedType: const FullType(_i6.SpotFleetMonitoring),
            ) as _i6.SpotFleetMonitoring));
          }
          break;
        case 'networkInterfaceSet':
          if (value != null) {
            result.networkInterfaces.replace((const _i12.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i12.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i11.BuiltList,
                [FullType(_i7.InstanceNetworkInterfaceSpecification)],
              ),
            ) as _i11.BuiltList<_i7.InstanceNetworkInterfaceSpecification>));
          }
          break;
        case 'placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.SpotPlacement),
            ) as _i8.SpotPlacement));
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
        case 'spotPrice':
          if (value != null) {
            result.spotPrice = (serializers.deserialize(
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
        case 'weightedCapacity':
          result.weightedCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'tagSpecificationSet':
          if (value != null) {
            result.tagSpecifications.replace((const _i12.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i12.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i11.BuiltList,
                [FullType(_i9.SpotFleetTagSpecification)],
              ),
            ) as _i11.BuiltList<_i9.SpotFleetTagSpecification>));
          }
          break;
        case 'instanceRequirements':
          if (value != null) {
            result.instanceRequirements.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.InstanceRequirements),
            ) as _i10.InstanceRequirements));
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
    final payload = (object as SpotFleetLaunchSpecification);
    final result = <Object?>[
      const _i12.XmlElementName(
        'SpotFleetLaunchSpecificationResponse',
        _i12.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.securityGroups != null) {
      result
        ..add(const _i12.XmlElementName('GroupSet'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroups!,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(_i2.GroupIdentifier)],
          ),
        ));
    }
    if (payload.addressingType != null) {
      result
        ..add(const _i12.XmlElementName('AddressingType'))
        ..add(serializers.serialize(
          payload.addressingType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i12.XmlElementName('BlockDeviceMapping'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(_i3.BlockDeviceMapping)],
          ),
        ));
    }
    result
      ..add(const _i12.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (payload.iamInstanceProfile != null) {
      result
        ..add(const _i12.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          payload.iamInstanceProfile!,
          specifiedType: const FullType(_i4.IamInstanceProfileSpecification),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i12.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i12.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i5.InstanceType),
        ));
    }
    if (payload.kernelId != null) {
      result
        ..add(const _i12.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          payload.kernelId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyName != null) {
      result
        ..add(const _i12.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          payload.keyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.monitoring != null) {
      result
        ..add(const _i12.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          payload.monitoring!,
          specifiedType: const FullType(_i6.SpotFleetMonitoring),
        ));
    }
    if (payload.networkInterfaces != null) {
      result
        ..add(const _i12.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaces!,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(_i7.InstanceNetworkInterfaceSpecification)],
          ),
        ));
    }
    if (payload.placement != null) {
      result
        ..add(const _i12.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i8.SpotPlacement),
        ));
    }
    if (payload.ramdiskId != null) {
      result
        ..add(const _i12.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          payload.ramdiskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotPrice != null) {
      result
        ..add(const _i12.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          payload.spotPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i12.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userData != null) {
      result
        ..add(const _i12.XmlElementName('UserData'))
        ..add(serializers.serialize(
          payload.userData!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i12.XmlElementName('WeightedCapacity'))
      ..add(serializers.serialize(
        payload.weightedCapacity,
        specifiedType: const FullType(double),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i12.XmlElementName('TagSpecificationSet'))
        ..add(const _i12.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i12.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i11.BuiltList,
            [FullType(_i9.SpotFleetTagSpecification)],
          ),
        ));
    }
    if (payload.instanceRequirements != null) {
      result
        ..add(const _i12.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          payload.instanceRequirements!,
          specifiedType: const FullType(_i10.InstanceRequirements),
        ));
    }
    return result;
  }
}
