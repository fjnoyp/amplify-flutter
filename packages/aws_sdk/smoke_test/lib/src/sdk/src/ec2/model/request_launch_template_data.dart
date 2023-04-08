// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.request_launch_template_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i23;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i24;
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification_request.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_request.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options_request.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options_request.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options_request.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification_request.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options_request.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options_request.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options_request.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration_request.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement_request.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options_request.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification_request.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring_request.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart' as _i8;

part 'request_launch_template_data.g.dart';

/// The information to include in the launch template.
///
/// You must specify at least one parameter for the launch template data.
abstract class RequestLaunchTemplateData
    with _i1.AWSEquatable<RequestLaunchTemplateData>
    implements
        Built<RequestLaunchTemplateData, RequestLaunchTemplateDataBuilder> {
  /// The information to include in the launch template.
  ///
  /// You must specify at least one parameter for the launch template data.
  factory RequestLaunchTemplateData({
    String? kernelId,
    bool? ebsOptimized,
    _i2.LaunchTemplateIamInstanceProfileSpecificationRequest?
        iamInstanceProfile,
    List<_i3.LaunchTemplateBlockDeviceMappingRequest>? blockDeviceMappings,
    List<_i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>?
        networkInterfaces,
    String? imageId,
    _i5.InstanceType? instanceType,
    String? keyName,
    _i6.LaunchTemplatesMonitoringRequest? monitoring,
    _i7.LaunchTemplatePlacementRequest? placement,
    String? ramDiskId,
    bool? disableApiTermination,
    _i8.ShutdownBehavior? instanceInitiatedShutdownBehavior,
    String? userData,
    List<_i9.LaunchTemplateTagSpecificationRequest>? tagSpecifications,
    List<_i10.ElasticGpuSpecification>? elasticGpuSpecifications,
    List<_i11.LaunchTemplateElasticInferenceAccelerator>?
        elasticInferenceAccelerators,
    List<String>? securityGroupIds,
    List<String>? securityGroups,
    _i12.LaunchTemplateInstanceMarketOptionsRequest? instanceMarketOptions,
    _i13.CreditSpecificationRequest? creditSpecification,
    _i14.LaunchTemplateCpuOptionsRequest? cpuOptions,
    _i15.LaunchTemplateCapacityReservationSpecificationRequest?
        capacityReservationSpecification,
    List<_i16.LaunchTemplateLicenseConfigurationRequest>? licenseSpecifications,
    _i17.LaunchTemplateHibernationOptionsRequest? hibernationOptions,
    _i18.LaunchTemplateInstanceMetadataOptionsRequest? metadataOptions,
    _i19.LaunchTemplateEnclaveOptionsRequest? enclaveOptions,
    _i20.InstanceRequirementsRequest? instanceRequirements,
    _i21.LaunchTemplatePrivateDnsNameOptionsRequest? privateDnsNameOptions,
    _i22.LaunchTemplateInstanceMaintenanceOptionsRequest? maintenanceOptions,
    bool? disableApiStop,
  }) {
    ebsOptimized ??= false;
    disableApiTermination ??= false;
    disableApiStop ??= false;
    return _$RequestLaunchTemplateData._(
      kernelId: kernelId,
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i23.BuiltList(blockDeviceMappings),
      networkInterfaces:
          networkInterfaces == null ? null : _i23.BuiltList(networkInterfaces),
      imageId: imageId,
      instanceType: instanceType,
      keyName: keyName,
      monitoring: monitoring,
      placement: placement,
      ramDiskId: ramDiskId,
      disableApiTermination: disableApiTermination,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      userData: userData,
      tagSpecifications:
          tagSpecifications == null ? null : _i23.BuiltList(tagSpecifications),
      elasticGpuSpecifications: elasticGpuSpecifications == null
          ? null
          : _i23.BuiltList(elasticGpuSpecifications),
      elasticInferenceAccelerators: elasticInferenceAccelerators == null
          ? null
          : _i23.BuiltList(elasticInferenceAccelerators),
      securityGroupIds:
          securityGroupIds == null ? null : _i23.BuiltList(securityGroupIds),
      securityGroups:
          securityGroups == null ? null : _i23.BuiltList(securityGroups),
      instanceMarketOptions: instanceMarketOptions,
      creditSpecification: creditSpecification,
      cpuOptions: cpuOptions,
      capacityReservationSpecification: capacityReservationSpecification,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i23.BuiltList(licenseSpecifications),
      hibernationOptions: hibernationOptions,
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      instanceRequirements: instanceRequirements,
      privateDnsNameOptions: privateDnsNameOptions,
      maintenanceOptions: maintenanceOptions,
      disableApiStop: disableApiStop,
    );
  }

  /// The information to include in the launch template.
  ///
  /// You must specify at least one parameter for the launch template data.
  factory RequestLaunchTemplateData.build(
          [void Function(RequestLaunchTemplateDataBuilder) updates]) =
      _$RequestLaunchTemplateData;

  const RequestLaunchTemplateData._();

  static const List<_i24.SmithySerializer> serializers = [
    RequestLaunchTemplateDataEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestLaunchTemplateDataBuilder b) {
    b.ebsOptimized = false;
    b.disableApiTermination = false;
    b.disableApiStop = false;
  }

  /// The ID of the kernel.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [User provided kernels](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get kernelId;

  /// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
  bool get ebsOptimized;

  /// The name or Amazon Resource Name (ARN) of an IAM instance profile.
  _i2.LaunchTemplateIamInstanceProfileSpecificationRequest?
      get iamInstanceProfile;

  /// The block device mapping.
  _i23.BuiltList<_i3.LaunchTemplateBlockDeviceMappingRequest>?
      get blockDeviceMappings;

  /// One or more network interfaces. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
  _i23.BuiltList<
          _i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>?
      get networkInterfaces;

  /// The ID of the AMI.
  String? get imageId;

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// If you specify `InstanceType`, you can't specify `InstanceRequirements`.
  _i5.InstanceType? get instanceType;

  /// The name of the key pair. You can create a key pair using [CreateKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html) or [ImportKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).
  ///
  /// If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
  String? get keyName;

  /// The monitoring for the instance.
  _i6.LaunchTemplatesMonitoringRequest? get monitoring;

  /// The placement for the instance.
  _i7.LaunchTemplatePlacementRequest? get placement;

  /// The ID of the RAM disk.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [User provided kernels](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon Elastic Compute Cloud User Guide_.
  String? get ramDiskId;

  /// If you set this parameter to `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use [ModifyInstanceAttribute](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html). Alternatively, if you set `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate the instance by running the shutdown command from the instance.
  bool get disableApiTermination;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  ///
  /// Default: `stop`
  _i8.ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The user data to make available to the instance. You must provide base64-encoded text. User data is limited to 16 KB. For more information, see [Run commands on your Linux instance at launch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) (Linux) or [Work with instance user data](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/instancedata-add-user-data.html) (Windows) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// If you are creating the launch template for use with Batch, the user data must be provided in the [MIME multi-part archive format](https://cloudinit.readthedocs.io/en/latest/topics/format.html#mime-multi-part-archive). For more information, see [Amazon EC2 user data in launch templates](https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html) in the _Batch User Guide_.
  String? get userData;

  /// The tags to apply to the resources that are created during instance launch.
  ///
  /// You can specify tags for the following resources only:
  ///
  /// *   Instances
  ///
  /// *   Volumes
  ///
  /// *   Elastic graphics
  ///
  /// *   Spot Instance requests
  ///
  /// *   Network interfaces
  ///
  ///
  /// To tag a resource after it has been created, see [CreateTags](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
  ///
  /// To tag the launch template itself, you must use the [TagSpecification](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html) parameter.
  _i23.BuiltList<_i9.LaunchTemplateTagSpecificationRequest>?
      get tagSpecifications;

  /// An elastic GPU to associate with the instance.
  _i23.BuiltList<_i10.ElasticGpuSpecification>? get elasticGpuSpecifications;

  /// The elastic inference accelerator for the instance.
  _i23.BuiltList<_i11.LaunchTemplateElasticInferenceAccelerator>?
      get elasticInferenceAccelerators;

  /// One or more security group IDs. You can create a security group using [CreateSecurityGroup](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html). You cannot specify both a security group ID and security name in the same request.
  _i23.BuiltList<String>? get securityGroupIds;

  /// One or more security group names. For a nondefault VPC, you must use security group IDs instead. You cannot specify both a security group ID and security name in the same request.
  _i23.BuiltList<String>? get securityGroups;

  /// The market (purchasing) option for the instances.
  _i12.LaunchTemplateInstanceMarketOptionsRequest? get instanceMarketOptions;

  /// The credit option for CPU usage of the instance. Valid only for T instances.
  _i13.CreditSpecificationRequest? get creditSpecification;

  /// The CPU options for the instance. For more information, see [Optimizing CPU Options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i14.LaunchTemplateCpuOptionsRequest? get cpuOptions;

  /// The Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to `open`, which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  _i15.LaunchTemplateCapacityReservationSpecificationRequest?
      get capacityReservationSpecification;

  /// The license configurations.
  _i23.BuiltList<_i16.LaunchTemplateLicenseConfigurationRequest>?
      get licenseSpecifications;

  /// Indicates whether an instance is enabled for hibernation. This parameter is valid only if the instance meets the [hibernation prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html). For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i17.LaunchTemplateHibernationOptionsRequest? get hibernationOptions;

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i18.LaunchTemplateInstanceMetadataOptionsRequest? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves. For more information, see [What is Amazon Web Services Nitro Enclaves?](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  ///
  /// You can't enable Amazon Web Services Nitro Enclaves and hibernation on the same instance.
  _i19.LaunchTemplateEnclaveOptionsRequest? get enclaveOptions;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceType`.
  _i20.InstanceRequirementsRequest? get instanceRequirements;

  /// The options for the instance hostname. The default values are inherited from the subnet.
  _i21.LaunchTemplatePrivateDnsNameOptionsRequest? get privateDnsNameOptions;

  /// The maintenance options for the instance.
  _i22.LaunchTemplateInstanceMaintenanceOptionsRequest? get maintenanceOptions;

  /// Indicates whether to enable the instance for stop protection. For more information, see [Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  bool get disableApiStop;
  @override
  List<Object?> get props => [
        kernelId,
        ebsOptimized,
        iamInstanceProfile,
        blockDeviceMappings,
        networkInterfaces,
        imageId,
        instanceType,
        keyName,
        monitoring,
        placement,
        ramDiskId,
        disableApiTermination,
        instanceInitiatedShutdownBehavior,
        userData,
        tagSpecifications,
        elasticGpuSpecifications,
        elasticInferenceAccelerators,
        securityGroupIds,
        securityGroups,
        instanceMarketOptions,
        creditSpecification,
        cpuOptions,
        capacityReservationSpecification,
        licenseSpecifications,
        hibernationOptions,
        metadataOptions,
        enclaveOptions,
        instanceRequirements,
        privateDnsNameOptions,
        maintenanceOptions,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestLaunchTemplateData');
    helper.add(
      'kernelId',
      '***SENSITIVE***',
    );
    helper.add(
      'ebsOptimized',
      '***SENSITIVE***',
    );
    helper.add(
      'iamInstanceProfile',
      '***SENSITIVE***',
    );
    helper.add(
      'blockDeviceMappings',
      '***SENSITIVE***',
    );
    helper.add(
      'networkInterfaces',
      '***SENSITIVE***',
    );
    helper.add(
      'imageId',
      '***SENSITIVE***',
    );
    helper.add(
      'instanceType',
      '***SENSITIVE***',
    );
    helper.add(
      'keyName',
      '***SENSITIVE***',
    );
    helper.add(
      'monitoring',
      '***SENSITIVE***',
    );
    helper.add(
      'placement',
      '***SENSITIVE***',
    );
    helper.add(
      'ramDiskId',
      '***SENSITIVE***',
    );
    helper.add(
      'disableApiTermination',
      '***SENSITIVE***',
    );
    helper.add(
      'instanceInitiatedShutdownBehavior',
      '***SENSITIVE***',
    );
    helper.add(
      'userData',
      '***SENSITIVE***',
    );
    helper.add(
      'tagSpecifications',
      '***SENSITIVE***',
    );
    helper.add(
      'elasticGpuSpecifications',
      '***SENSITIVE***',
    );
    helper.add(
      'elasticInferenceAccelerators',
      '***SENSITIVE***',
    );
    helper.add(
      'securityGroupIds',
      '***SENSITIVE***',
    );
    helper.add(
      'securityGroups',
      '***SENSITIVE***',
    );
    helper.add(
      'instanceMarketOptions',
      '***SENSITIVE***',
    );
    helper.add(
      'creditSpecification',
      '***SENSITIVE***',
    );
    helper.add(
      'cpuOptions',
      '***SENSITIVE***',
    );
    helper.add(
      'capacityReservationSpecification',
      '***SENSITIVE***',
    );
    helper.add(
      'licenseSpecifications',
      '***SENSITIVE***',
    );
    helper.add(
      'hibernationOptions',
      '***SENSITIVE***',
    );
    helper.add(
      'metadataOptions',
      '***SENSITIVE***',
    );
    helper.add(
      'enclaveOptions',
      '***SENSITIVE***',
    );
    helper.add(
      'instanceRequirements',
      '***SENSITIVE***',
    );
    helper.add(
      'privateDnsNameOptions',
      '***SENSITIVE***',
    );
    helper.add(
      'maintenanceOptions',
      '***SENSITIVE***',
    );
    helper.add(
      'disableApiStop',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class RequestLaunchTemplateDataEc2QuerySerializer
    extends _i24.StructuredSmithySerializer<RequestLaunchTemplateData> {
  const RequestLaunchTemplateDataEc2QuerySerializer()
      : super('RequestLaunchTemplateData');

  @override
  Iterable<Type> get types => const [
        RequestLaunchTemplateData,
        _$RequestLaunchTemplateData,
      ];
  @override
  Iterable<_i24.ShapeId> get supportedProtocols => const [
        _i24.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestLaunchTemplateData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestLaunchTemplateDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'KernelId':
          if (value != null) {
            result.kernelId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'EbsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'IamInstanceProfile':
          if (value != null) {
            result.iamInstanceProfile.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.LaunchTemplateIamInstanceProfileSpecificationRequest),
            ) as _i2.LaunchTemplateIamInstanceProfileSpecificationRequest));
          }
          break;
        case 'BlockDeviceMapping':
          if (value != null) {
            result.blockDeviceMappings
                .replace((const _i24.XmlBuiltListSerializer(
              memberName: 'BlockDeviceMapping',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i3.LaunchTemplateBlockDeviceMappingRequest)],
              ),
            ) as _i23.BuiltList<_i3.LaunchTemplateBlockDeviceMappingRequest>));
          }
          break;
        case 'NetworkInterface':
          if (value != null) {
            result.networkInterfaces.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'InstanceNetworkInterfaceSpecification',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [
                  FullType(_i4
                      .LaunchTemplateInstanceNetworkInterfaceSpecificationRequest)
                ],
              ),
            ) as _i23.BuiltList<
                _i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>));
          }
          break;
        case 'ImageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InstanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.InstanceType),
            ) as _i5.InstanceType);
          }
          break;
        case 'KeyName':
          if (value != null) {
            result.keyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Monitoring':
          if (value != null) {
            result.monitoring.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i6.LaunchTemplatesMonitoringRequest),
            ) as _i6.LaunchTemplatesMonitoringRequest));
          }
          break;
        case 'Placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.LaunchTemplatePlacementRequest),
            ) as _i7.LaunchTemplatePlacementRequest));
          }
          break;
        case 'RamDiskId':
          if (value != null) {
            result.ramDiskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DisableApiTermination':
          result.disableApiTermination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InstanceInitiatedShutdownBehavior':
          if (value != null) {
            result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.ShutdownBehavior),
            ) as _i8.ShutdownBehavior);
          }
          break;
        case 'UserData':
          if (value != null) {
            result.userData = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'LaunchTemplateTagSpecificationRequest',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i9.LaunchTemplateTagSpecificationRequest)],
              ),
            ) as _i23.BuiltList<_i9.LaunchTemplateTagSpecificationRequest>));
          }
          break;
        case 'ElasticGpuSpecification':
          if (value != null) {
            result.elasticGpuSpecifications
                .replace((const _i24.XmlBuiltListSerializer(
              memberName: 'ElasticGpuSpecification',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i10.ElasticGpuSpecification)],
              ),
            ) as _i23.BuiltList<_i10.ElasticGpuSpecification>));
          }
          break;
        case 'ElasticInferenceAccelerator':
          if (value != null) {
            result.elasticInferenceAccelerators.replace(
                (const _i24.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i11.LaunchTemplateElasticInferenceAccelerator)],
              ),
            ) as _i23.BuiltList<
                    _i11.LaunchTemplateElasticInferenceAccelerator>));
          }
          break;
        case 'SecurityGroupId':
          if (value != null) {
            result.securityGroupIds.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'SecurityGroupId',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(String)],
              ),
            ) as _i23.BuiltList<String>));
          }
          break;
        case 'SecurityGroup':
          if (value != null) {
            result.securityGroups.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'SecurityGroup',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(String)],
              ),
            ) as _i23.BuiltList<String>));
          }
          break;
        case 'InstanceMarketOptions':
          if (value != null) {
            result.instanceMarketOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i12.LaunchTemplateInstanceMarketOptionsRequest),
            ) as _i12.LaunchTemplateInstanceMarketOptionsRequest));
          }
          break;
        case 'CreditSpecification':
          if (value != null) {
            result.creditSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i13.CreditSpecificationRequest),
            ) as _i13.CreditSpecificationRequest));
          }
          break;
        case 'CpuOptions':
          if (value != null) {
            result.cpuOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i14.LaunchTemplateCpuOptionsRequest),
            ) as _i14.LaunchTemplateCpuOptionsRequest));
          }
          break;
        case 'CapacityReservationSpecification':
          if (value != null) {
            result.capacityReservationSpecification
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i15.LaunchTemplateCapacityReservationSpecificationRequest),
            ) as _i15.LaunchTemplateCapacityReservationSpecificationRequest));
          }
          break;
        case 'LicenseSpecification':
          if (value != null) {
            result.licenseSpecifications.replace(
                (const _i24.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i16.LaunchTemplateLicenseConfigurationRequest)],
              ),
            ) as _i23.BuiltList<
                    _i16.LaunchTemplateLicenseConfigurationRequest>));
          }
          break;
        case 'HibernationOptions':
          if (value != null) {
            result.hibernationOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i17.LaunchTemplateHibernationOptionsRequest),
            ) as _i17.LaunchTemplateHibernationOptionsRequest));
          }
          break;
        case 'MetadataOptions':
          if (value != null) {
            result.metadataOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i18.LaunchTemplateInstanceMetadataOptionsRequest),
            ) as _i18.LaunchTemplateInstanceMetadataOptionsRequest));
          }
          break;
        case 'EnclaveOptions':
          if (value != null) {
            result.enclaveOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i19.LaunchTemplateEnclaveOptionsRequest),
            ) as _i19.LaunchTemplateEnclaveOptionsRequest));
          }
          break;
        case 'InstanceRequirements':
          if (value != null) {
            result.instanceRequirements.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i20.InstanceRequirementsRequest),
            ) as _i20.InstanceRequirementsRequest));
          }
          break;
        case 'PrivateDnsNameOptions':
          if (value != null) {
            result.privateDnsNameOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i21.LaunchTemplatePrivateDnsNameOptionsRequest),
            ) as _i21.LaunchTemplatePrivateDnsNameOptionsRequest));
          }
          break;
        case 'MaintenanceOptions':
          if (value != null) {
            result.maintenanceOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i22.LaunchTemplateInstanceMaintenanceOptionsRequest),
            ) as _i22.LaunchTemplateInstanceMaintenanceOptionsRequest));
          }
          break;
        case 'DisableApiStop':
          result.disableApiStop = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as RequestLaunchTemplateData);
    final result = <Object?>[
      const _i24.XmlElementName(
        'RequestLaunchTemplateDataResponse',
        _i24.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.kernelId != null) {
      result
        ..add(const _i24.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          payload.kernelId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i24.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (payload.iamInstanceProfile != null) {
      result
        ..add(const _i24.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          payload.iamInstanceProfile!,
          specifiedType: const FullType(
              _i2.LaunchTemplateIamInstanceProfileSpecificationRequest),
        ));
    }
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i24.XmlElementName('BlockDeviceMapping'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i3.LaunchTemplateBlockDeviceMappingRequest)],
          ),
        ));
    }
    if (payload.networkInterfaces != null) {
      result
        ..add(const _i24.XmlElementName('NetworkInterface'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'InstanceNetworkInterfaceSpecification',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaces!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [
              FullType(_i4
                  .LaunchTemplateInstanceNetworkInterfaceSpecificationRequest)
            ],
          ),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i24.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i24.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i5.InstanceType),
        ));
    }
    if (payload.keyName != null) {
      result
        ..add(const _i24.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          payload.keyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.monitoring != null) {
      result
        ..add(const _i24.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          payload.monitoring!,
          specifiedType: const FullType(_i6.LaunchTemplatesMonitoringRequest),
        ));
    }
    if (payload.placement != null) {
      result
        ..add(const _i24.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i7.LaunchTemplatePlacementRequest),
        ));
    }
    if (payload.ramDiskId != null) {
      result
        ..add(const _i24.XmlElementName('RamDiskId'))
        ..add(serializers.serialize(
          payload.ramDiskId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i24.XmlElementName('DisableApiTermination'))
      ..add(serializers.serialize(
        payload.disableApiTermination,
        specifiedType: const FullType(bool),
      ));
    if (payload.instanceInitiatedShutdownBehavior != null) {
      result
        ..add(const _i24.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          payload.instanceInitiatedShutdownBehavior!,
          specifiedType: const FullType.nullable(_i8.ShutdownBehavior),
        ));
    }
    if (payload.userData != null) {
      result
        ..add(const _i24.XmlElementName('UserData'))
        ..add(serializers.serialize(
          payload.userData!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i24.XmlElementName('TagSpecification'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'LaunchTemplateTagSpecificationRequest',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i9.LaunchTemplateTagSpecificationRequest)],
          ),
        ));
    }
    if (payload.elasticGpuSpecifications != null) {
      result
        ..add(const _i24.XmlElementName('ElasticGpuSpecification'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'ElasticGpuSpecification',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticGpuSpecifications!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i10.ElasticGpuSpecification)],
          ),
        ));
    }
    if (payload.elasticInferenceAccelerators != null) {
      result
        ..add(const _i24.XmlElementName('ElasticInferenceAccelerator'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticInferenceAccelerators!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i11.LaunchTemplateElasticInferenceAccelerator)],
          ),
        ));
    }
    if (payload.securityGroupIds != null) {
      result
        ..add(const _i24.XmlElementName('SecurityGroupId'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupIds!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.securityGroups != null) {
      result
        ..add(const _i24.XmlElementName('SecurityGroup'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'SecurityGroup',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroups!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.instanceMarketOptions != null) {
      result
        ..add(const _i24.XmlElementName('InstanceMarketOptions'))
        ..add(serializers.serialize(
          payload.instanceMarketOptions!,
          specifiedType:
              const FullType(_i12.LaunchTemplateInstanceMarketOptionsRequest),
        ));
    }
    if (payload.creditSpecification != null) {
      result
        ..add(const _i24.XmlElementName('CreditSpecification'))
        ..add(serializers.serialize(
          payload.creditSpecification!,
          specifiedType: const FullType(_i13.CreditSpecificationRequest),
        ));
    }
    if (payload.cpuOptions != null) {
      result
        ..add(const _i24.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          payload.cpuOptions!,
          specifiedType: const FullType(_i14.LaunchTemplateCpuOptionsRequest),
        ));
    }
    if (payload.capacityReservationSpecification != null) {
      result
        ..add(const _i24.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          payload.capacityReservationSpecification!,
          specifiedType: const FullType(
              _i15.LaunchTemplateCapacityReservationSpecificationRequest),
        ));
    }
    if (payload.licenseSpecifications != null) {
      result
        ..add(const _i24.XmlElementName('LicenseSpecification'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.licenseSpecifications!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i16.LaunchTemplateLicenseConfigurationRequest)],
          ),
        ));
    }
    if (payload.hibernationOptions != null) {
      result
        ..add(const _i24.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          payload.hibernationOptions!,
          specifiedType:
              const FullType(_i17.LaunchTemplateHibernationOptionsRequest),
        ));
    }
    if (payload.metadataOptions != null) {
      result
        ..add(const _i24.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          payload.metadataOptions!,
          specifiedType:
              const FullType(_i18.LaunchTemplateInstanceMetadataOptionsRequest),
        ));
    }
    if (payload.enclaveOptions != null) {
      result
        ..add(const _i24.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          payload.enclaveOptions!,
          specifiedType:
              const FullType(_i19.LaunchTemplateEnclaveOptionsRequest),
        ));
    }
    if (payload.instanceRequirements != null) {
      result
        ..add(const _i24.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          payload.instanceRequirements!,
          specifiedType: const FullType(_i20.InstanceRequirementsRequest),
        ));
    }
    if (payload.privateDnsNameOptions != null) {
      result
        ..add(const _i24.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          payload.privateDnsNameOptions!,
          specifiedType:
              const FullType(_i21.LaunchTemplatePrivateDnsNameOptionsRequest),
        ));
    }
    if (payload.maintenanceOptions != null) {
      result
        ..add(const _i24.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          payload.maintenanceOptions!,
          specifiedType: const FullType(
              _i22.LaunchTemplateInstanceMaintenanceOptionsRequest),
        ));
    }
    result
      ..add(const _i24.XmlElementName('DisableApiStop'))
      ..add(serializers.serialize(
        payload.disableApiStop,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
