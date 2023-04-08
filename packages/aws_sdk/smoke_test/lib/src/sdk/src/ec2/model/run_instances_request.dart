// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.run_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i25;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options_request.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification_request.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options_request.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options_request.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_specification.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_ipv6_address.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options_request.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_market_options_request.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_request.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface_specification.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_specification.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration_request.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_request.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/ec2/model/run_instances_monitoring_enabled.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart'
    as _i13;

part 'run_instances_request.g.dart';

abstract class RunInstancesRequest
    with
        _i1.HttpInput<RunInstancesRequest>,
        _i2.AWSEquatable<RunInstancesRequest>
    implements Built<RunInstancesRequest, RunInstancesRequestBuilder> {
  factory RunInstancesRequest({
    List<_i3.BlockDeviceMapping>? blockDeviceMappings,
    String? imageId,
    _i4.InstanceType? instanceType,
    int? ipv6AddressCount,
    List<_i5.InstanceIpv6Address>? ipv6Addresses,
    String? kernelId,
    String? keyName,
    int? maxCount,
    int? minCount,
    _i6.RunInstancesMonitoringEnabled? monitoring,
    _i7.Placement? placement,
    String? ramdiskId,
    List<String>? securityGroupIds,
    List<String>? securityGroups,
    String? subnetId,
    String? userData,
    String? additionalInfo,
    String? clientToken,
    bool? disableApiTermination,
    bool? dryRun,
    bool? ebsOptimized,
    _i8.IamInstanceProfileSpecification? iamInstanceProfile,
    _i9.ShutdownBehavior? instanceInitiatedShutdownBehavior,
    List<_i10.InstanceNetworkInterfaceSpecification>? networkInterfaces,
    String? privateIpAddress,
    List<_i11.ElasticGpuSpecification>? elasticGpuSpecification,
    List<_i12.ElasticInferenceAccelerator>? elasticInferenceAccelerators,
    List<_i13.TagSpecification>? tagSpecifications,
    _i14.LaunchTemplateSpecification? launchTemplate,
    _i15.InstanceMarketOptionsRequest? instanceMarketOptions,
    _i16.CreditSpecificationRequest? creditSpecification,
    _i17.CpuOptionsRequest? cpuOptions,
    _i18.CapacityReservationSpecification? capacityReservationSpecification,
    _i19.HibernationOptionsRequest? hibernationOptions,
    List<_i20.LicenseConfigurationRequest>? licenseSpecifications,
    _i21.InstanceMetadataOptionsRequest? metadataOptions,
    _i22.EnclaveOptionsRequest? enclaveOptions,
    _i23.PrivateDnsNameOptionsRequest? privateDnsNameOptions,
    _i24.InstanceMaintenanceOptionsRequest? maintenanceOptions,
    bool? disableApiStop,
  }) {
    ipv6AddressCount ??= 0;
    maxCount ??= 0;
    minCount ??= 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    disableApiTermination ??= false;
    dryRun ??= false;
    ebsOptimized ??= false;
    disableApiStop ??= false;
    return _$RunInstancesRequest._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i25.BuiltList(blockDeviceMappings),
      imageId: imageId,
      instanceType: instanceType,
      ipv6AddressCount: ipv6AddressCount,
      ipv6Addresses:
          ipv6Addresses == null ? null : _i25.BuiltList(ipv6Addresses),
      kernelId: kernelId,
      keyName: keyName,
      maxCount: maxCount,
      minCount: minCount,
      monitoring: monitoring,
      placement: placement,
      ramdiskId: ramdiskId,
      securityGroupIds:
          securityGroupIds == null ? null : _i25.BuiltList(securityGroupIds),
      securityGroups:
          securityGroups == null ? null : _i25.BuiltList(securityGroups),
      subnetId: subnetId,
      userData: userData,
      additionalInfo: additionalInfo,
      clientToken: clientToken,
      disableApiTermination: disableApiTermination,
      dryRun: dryRun,
      ebsOptimized: ebsOptimized,
      iamInstanceProfile: iamInstanceProfile,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      networkInterfaces:
          networkInterfaces == null ? null : _i25.BuiltList(networkInterfaces),
      privateIpAddress: privateIpAddress,
      elasticGpuSpecification: elasticGpuSpecification == null
          ? null
          : _i25.BuiltList(elasticGpuSpecification),
      elasticInferenceAccelerators: elasticInferenceAccelerators == null
          ? null
          : _i25.BuiltList(elasticInferenceAccelerators),
      tagSpecifications:
          tagSpecifications == null ? null : _i25.BuiltList(tagSpecifications),
      launchTemplate: launchTemplate,
      instanceMarketOptions: instanceMarketOptions,
      creditSpecification: creditSpecification,
      cpuOptions: cpuOptions,
      capacityReservationSpecification: capacityReservationSpecification,
      hibernationOptions: hibernationOptions,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i25.BuiltList(licenseSpecifications),
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      privateDnsNameOptions: privateDnsNameOptions,
      maintenanceOptions: maintenanceOptions,
      disableApiStop: disableApiStop,
    );
  }

  factory RunInstancesRequest.build(
          [void Function(RunInstancesRequestBuilder) updates]) =
      _$RunInstancesRequest;

  const RunInstancesRequest._();

  factory RunInstancesRequest.fromRequest(
    RunInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RunInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RunInstancesRequestBuilder b) {
    b.ipv6AddressCount = 0;
    b.maxCount = 0;
    b.minCount = 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.disableApiTermination = false;
    b.dryRun = false;
    b.ebsOptimized = false;
    b.disableApiStop = false;
  }

  /// The block device mapping, which defines the EBS volumes and instance store volumes to attach to the instance at launch. For more information, see [Block device mappings](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html) in the _Amazon EC2 User Guide_.
  _i25.BuiltList<_i3.BlockDeviceMapping>? get blockDeviceMappings;

  /// The ID of the AMI. An AMI ID is required to launch an instance and must be specified here or in a launch template.
  String? get imageId;

  /// The instance type. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: `m1.small`
  _i4.InstanceType? get instanceType;

  /// \[EC2-VPC\] The number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch.
  ///
  /// You cannot specify this option and the network interfaces option in the same request.
  int get ipv6AddressCount;

  /// \[EC2-VPC\] The IPv6 addresses from the range of the subnet to associate with the primary network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you've specified a minimum number of instances to launch.
  ///
  /// You cannot specify this option and the network interfaces option in the same request.
  _i25.BuiltList<_i5.InstanceIpv6Address>? get ipv6Addresses;

  /// The ID of the kernel.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon EC2 User Guide_.
  String? get kernelId;

  /// The name of the key pair. You can create a key pair using [CreateKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html) or [ImportKeyPair](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportKeyPair.html).
  ///
  /// If you do not specify a key pair, you can't connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
  String? get keyName;

  /// The maximum number of instances to launch. If you specify more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches the largest possible number of instances above `MinCount`.
  ///
  /// Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 FAQ.
  int get maxCount;

  /// The minimum number of instances to launch. If you specify a minimum that is more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches no instances.
  ///
  /// Constraints: Between 1 and the maximum number you're allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 General FAQ.
  int get minCount;

  /// Specifies whether detailed monitoring is enabled for the instance.
  _i6.RunInstancesMonitoringEnabled? get monitoring;

  /// The placement for the instance.
  _i7.Placement? get placement;

  /// The ID of the RAM disk to select. Some kernels require additional drivers at launch. Check the kernel requirements for information about whether you need to specify a RAM disk. To find kernel requirements, go to the Amazon Web Services Resource Center and search for the kernel ID.
  ///
  /// We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the _Amazon EC2 User Guide_.
  String? get ramdiskId;

  /// The IDs of the security groups. You can create a security group using [CreateSecurityGroup](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html).
  ///
  /// If you specify a network interface, you must specify any security groups as part of the network interface.
  _i25.BuiltList<String>? get securityGroupIds;

  /// \[EC2-Classic, default VPC\] The names of the security groups. For a nondefault VPC, you must use security group IDs instead.
  ///
  /// If you specify a network interface, you must specify any security groups as part of the network interface.
  ///
  /// Default: Amazon EC2 uses the default security group.
  _i25.BuiltList<String>? get securityGroups;

  /// \[EC2-VPC\] The ID of the subnet to launch the instance into.
  ///
  /// If you specify a network interface, you must specify any subnets as part of the network interface.
  String? get subnetId;

  /// The user data script to make available to the instance. For more information, see [Run commands on your Linux instance at launch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) and [Run commands on your Windows instance at launch](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-windows-user-data.html). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text. User data is limited to 16 KB.
  String? get userData;

  /// Reserved.
  String? get additionalInfo;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency.
  ///
  /// For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraints: Maximum 64 ASCII characters
  String? get clientToken;

  /// If you set this parameter to `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute after launch, use [ModifyInstanceAttribute](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceAttribute.html). Alternatively, if you set `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate the instance by running the shutdown command from the instance.
  ///
  /// Default: `false`
  bool get disableApiTermination;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
  ///
  /// Default: `false`
  bool get ebsOptimized;

  /// The name or Amazon Resource Name (ARN) of an IAM instance profile.
  _i8.IamInstanceProfileSpecification? get iamInstanceProfile;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  ///
  /// Default: `stop`
  _i9.ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The network interfaces to associate with the instance. If you specify a network interface, you must specify any security groups and subnets as part of the network interface.
  _i25.BuiltList<_i10.InstanceNetworkInterfaceSpecification>?
      get networkInterfaces;

  /// \[EC2-VPC\] The primary IPv4 address. You must specify a value from the IPv4 address range of the subnet.
  ///
  /// Only one private IP address can be designated as primary. You can't specify this option if you've specified the option to designate a private IP address as the primary IP address in a network interface specification. You cannot specify this option if you're launching more than one instance in the request.
  ///
  /// You cannot specify this option and the network interfaces option in the same request.
  String? get privateIpAddress;

  /// An elastic GPU to associate with the instance. An Elastic GPU is a GPU resource that you can attach to your Windows instance to accelerate the graphics performance of your applications. For more information, see [Amazon EC2 Elastic GPUs](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html) in the _Amazon EC2 User Guide_.
  _i25.BuiltList<_i11.ElasticGpuSpecification>? get elasticGpuSpecification;

  /// An elastic inference accelerator to associate with the instance. Elastic inference accelerators are a resource you can attach to your Amazon EC2 instances to accelerate your Deep Learning (DL) inference workloads.
  ///
  /// You cannot specify accelerators from different generations in the same request.
  _i25.BuiltList<_i12.ElasticInferenceAccelerator>?
      get elasticInferenceAccelerators;

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
  _i25.BuiltList<_i13.TagSpecification>? get tagSpecifications;

  /// The launch template to use to launch the instances. Any parameters that you specify in RunInstances override the same parameters in the launch template. You can specify either the name or ID of a launch template, but not both.
  _i14.LaunchTemplateSpecification? get launchTemplate;

  /// The market (purchasing) option for the instances.
  ///
  /// For RunInstances, persistent Spot Instance requests are only supported when **InstanceInterruptionBehavior** is set to either `hibernate` or `stop`.
  _i15.InstanceMarketOptionsRequest? get instanceMarketOptions;

  /// The credit option for CPU usage of the burstable performance instance. Valid values are `standard` and `unlimited`. To change this attribute after launch, use [ModifyInstanceCreditSpecification](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyInstanceCreditSpecification.html). For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: `standard` (T2 instances) or `unlimited` (T3/T3a/T4g instances)
  ///
  /// For T3 instances with `host` tenancy, only `standard` is supported.
  _i16.CreditSpecificationRequest? get creditSpecification;

  /// The CPU options for the instance. For more information, see [Optimize CPU options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the _Amazon EC2 User Guide_.
  _i17.CpuOptionsRequest? get cpuOptions;

  /// Information about the Capacity Reservation targeting option. If you do not specify this parameter, the instance's Capacity Reservation preference defaults to `open`, which enables it to run in any open Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  _i18.CapacityReservationSpecification? get capacityReservationSpecification;

  /// Indicates whether an instance is enabled for hibernation. For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  ///
  /// You can't enable hibernation and Amazon Web Services Nitro Enclaves on the same instance.
  _i19.HibernationOptionsRequest? get hibernationOptions;

  /// The license configurations.
  _i25.BuiltList<_i20.LicenseConfigurationRequest>? get licenseSpecifications;

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).
  _i21.InstanceMetadataOptionsRequest? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves. For more information, see [What is Amazon Web Services Nitro Enclaves?](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html) in the _Amazon Web Services Nitro Enclaves User Guide_.
  ///
  /// You can't enable Amazon Web Services Nitro Enclaves and hibernation on the same instance.
  _i22.EnclaveOptionsRequest? get enclaveOptions;

  /// The options for the instance hostname. The default values are inherited from the subnet.
  _i23.PrivateDnsNameOptionsRequest? get privateDnsNameOptions;

  /// The maintenance and recovery options for the instance.
  _i24.InstanceMaintenanceOptionsRequest? get maintenanceOptions;

  /// Indicates whether an instance is enabled for stop protection. For more information, see [Stop protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  bool get disableApiStop;
  @override
  RunInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        imageId,
        instanceType,
        ipv6AddressCount,
        ipv6Addresses,
        kernelId,
        keyName,
        maxCount,
        minCount,
        monitoring,
        placement,
        ramdiskId,
        securityGroupIds,
        securityGroups,
        subnetId,
        userData,
        additionalInfo,
        clientToken,
        disableApiTermination,
        dryRun,
        ebsOptimized,
        iamInstanceProfile,
        instanceInitiatedShutdownBehavior,
        networkInterfaces,
        privateIpAddress,
        elasticGpuSpecification,
        elasticInferenceAccelerators,
        tagSpecifications,
        launchTemplate,
        instanceMarketOptions,
        creditSpecification,
        cpuOptions,
        capacityReservationSpecification,
        hibernationOptions,
        licenseSpecifications,
        metadataOptions,
        enclaveOptions,
        privateDnsNameOptions,
        maintenanceOptions,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RunInstancesRequest');
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
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
      'ipv6AddressCount',
      ipv6AddressCount,
    );
    helper.add(
      'ipv6Addresses',
      ipv6Addresses,
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
      'maxCount',
      maxCount,
    );
    helper.add(
      'minCount',
      minCount,
    );
    helper.add(
      'monitoring',
      monitoring,
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
      'securityGroupIds',
      securityGroupIds,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'userData',
      '***SENSITIVE***',
    );
    helper.add(
      'additionalInfo',
      additionalInfo,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'disableApiTermination',
      disableApiTermination,
    );
    helper.add(
      'dryRun',
      dryRun,
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
      'instanceInitiatedShutdownBehavior',
      instanceInitiatedShutdownBehavior,
    );
    helper.add(
      'networkInterfaces',
      networkInterfaces,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    helper.add(
      'elasticGpuSpecification',
      elasticGpuSpecification,
    );
    helper.add(
      'elasticInferenceAccelerators',
      elasticInferenceAccelerators,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'launchTemplate',
      launchTemplate,
    );
    helper.add(
      'instanceMarketOptions',
      instanceMarketOptions,
    );
    helper.add(
      'creditSpecification',
      creditSpecification,
    );
    helper.add(
      'cpuOptions',
      cpuOptions,
    );
    helper.add(
      'capacityReservationSpecification',
      capacityReservationSpecification,
    );
    helper.add(
      'hibernationOptions',
      hibernationOptions,
    );
    helper.add(
      'licenseSpecifications',
      licenseSpecifications,
    );
    helper.add(
      'metadataOptions',
      metadataOptions,
    );
    helper.add(
      'enclaveOptions',
      enclaveOptions,
    );
    helper.add(
      'privateDnsNameOptions',
      privateDnsNameOptions,
    );
    helper.add(
      'maintenanceOptions',
      maintenanceOptions,
    );
    helper.add(
      'disableApiStop',
      disableApiStop,
    );
    return helper.toString();
  }
}

class RunInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RunInstancesRequest> {
  const RunInstancesRequestEc2QuerySerializer() : super('RunInstancesRequest');

  @override
  Iterable<Type> get types => const [
        RunInstancesRequest,
        _$RunInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RunInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'BlockDeviceMapping':
          if (value != null) {
            result.blockDeviceMappings
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'BlockDeviceMapping',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(_i3.BlockDeviceMapping)],
              ),
            ) as _i25.BuiltList<_i3.BlockDeviceMapping>));
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
              specifiedType: const FullType(_i4.InstanceType),
            ) as _i4.InstanceType);
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
            result.ipv6Addresses.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(_i5.InstanceIpv6Address)],
              ),
            ) as _i25.BuiltList<_i5.InstanceIpv6Address>));
          }
          break;
        case 'KernelId':
          if (value != null) {
            result.kernelId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'MaxCount':
          result.maxCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'MinCount':
          result.minCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Monitoring':
          if (value != null) {
            result.monitoring.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.RunInstancesMonitoringEnabled),
            ) as _i6.RunInstancesMonitoringEnabled));
          }
          break;
        case 'Placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.Placement),
            ) as _i7.Placement));
          }
          break;
        case 'RamdiskId':
          if (value != null) {
            result.ramdiskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SecurityGroupId':
          if (value != null) {
            result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'SecurityGroupId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(String)],
              ),
            ) as _i25.BuiltList<String>));
          }
          break;
        case 'SecurityGroup':
          if (value != null) {
            result.securityGroups.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'SecurityGroup',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(String)],
              ),
            ) as _i25.BuiltList<String>));
          }
          break;
        case 'SubnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'additionalInfo':
          if (value != null) {
            result.additionalInfo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'disableApiTermination':
          result.disableApiTermination = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
                  const FullType(_i8.IamInstanceProfileSpecification),
            ) as _i8.IamInstanceProfileSpecification));
          }
          break;
        case 'instanceInitiatedShutdownBehavior':
          if (value != null) {
            result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.ShutdownBehavior),
            ) as _i9.ShutdownBehavior);
          }
          break;
        case 'networkInterface':
          if (value != null) {
            result.networkInterfaces.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(_i10.InstanceNetworkInterfaceSpecification)],
              ),
            ) as _i25.BuiltList<_i10.InstanceNetworkInterfaceSpecification>));
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
        case 'ElasticGpuSpecification':
          if (value != null) {
            result.elasticGpuSpecification
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(_i11.ElasticGpuSpecification)],
              ),
            ) as _i25.BuiltList<_i11.ElasticGpuSpecification>));
          }
          break;
        case 'ElasticInferenceAccelerator':
          if (value != null) {
            result.elasticInferenceAccelerators
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(_i12.ElasticInferenceAccelerator)],
              ),
            ) as _i25.BuiltList<_i12.ElasticInferenceAccelerator>));
          }
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
                _i25.BuiltList,
                [FullType(_i13.TagSpecification)],
              ),
            ) as _i25.BuiltList<_i13.TagSpecification>));
          }
          break;
        case 'LaunchTemplate':
          if (value != null) {
            result.launchTemplate.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i14.LaunchTemplateSpecification),
            ) as _i14.LaunchTemplateSpecification));
          }
          break;
        case 'InstanceMarketOptions':
          if (value != null) {
            result.instanceMarketOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i15.InstanceMarketOptionsRequest),
            ) as _i15.InstanceMarketOptionsRequest));
          }
          break;
        case 'CreditSpecification':
          if (value != null) {
            result.creditSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i16.CreditSpecificationRequest),
            ) as _i16.CreditSpecificationRequest));
          }
          break;
        case 'CpuOptions':
          if (value != null) {
            result.cpuOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i17.CpuOptionsRequest),
            ) as _i17.CpuOptionsRequest));
          }
          break;
        case 'CapacityReservationSpecification':
          if (value != null) {
            result.capacityReservationSpecification
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i18.CapacityReservationSpecification),
            ) as _i18.CapacityReservationSpecification));
          }
          break;
        case 'HibernationOptions':
          if (value != null) {
            result.hibernationOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i19.HibernationOptionsRequest),
            ) as _i19.HibernationOptionsRequest));
          }
          break;
        case 'LicenseSpecification':
          if (value != null) {
            result.licenseSpecifications
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i25.BuiltList,
                [FullType(_i20.LicenseConfigurationRequest)],
              ),
            ) as _i25.BuiltList<_i20.LicenseConfigurationRequest>));
          }
          break;
        case 'MetadataOptions':
          if (value != null) {
            result.metadataOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i21.InstanceMetadataOptionsRequest),
            ) as _i21.InstanceMetadataOptionsRequest));
          }
          break;
        case 'EnclaveOptions':
          if (value != null) {
            result.enclaveOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i22.EnclaveOptionsRequest),
            ) as _i22.EnclaveOptionsRequest));
          }
          break;
        case 'PrivateDnsNameOptions':
          if (value != null) {
            result.privateDnsNameOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i23.PrivateDnsNameOptionsRequest),
            ) as _i23.PrivateDnsNameOptionsRequest));
          }
          break;
        case 'MaintenanceOptions':
          if (value != null) {
            result.maintenanceOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i24.InstanceMaintenanceOptionsRequest),
            ) as _i24.InstanceMaintenanceOptionsRequest));
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
    final payload = (object as RunInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RunInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i1.XmlElementName('BlockDeviceMapping'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(_i3.BlockDeviceMapping)],
          ),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i4.InstanceType),
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
        ..add(const _i1.XmlElementName('Ipv6Address'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Addresses!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(_i5.InstanceIpv6Address)],
          ),
        ));
    }
    if (payload.kernelId != null) {
      result
        ..add(const _i1.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          payload.kernelId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyName != null) {
      result
        ..add(const _i1.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          payload.keyName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxCount'))
      ..add(serializers.serialize(
        payload.maxCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('MinCount'))
      ..add(serializers.serialize(
        payload.minCount,
        specifiedType: const FullType(int),
      ));
    if (payload.monitoring != null) {
      result
        ..add(const _i1.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          payload.monitoring!,
          specifiedType: const FullType(_i6.RunInstancesMonitoringEnabled),
        ));
    }
    if (payload.placement != null) {
      result
        ..add(const _i1.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i7.Placement),
        ));
    }
    if (payload.ramdiskId != null) {
      result
        ..add(const _i1.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          payload.ramdiskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.securityGroupIds != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupIds!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.securityGroups != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroup'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroup',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroups!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userData != null) {
      result
        ..add(const _i1.XmlElementName('UserData'))
        ..add(serializers.serialize(
          payload.userData!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.additionalInfo != null) {
      result
        ..add(const _i1.XmlElementName('AdditionalInfo'))
        ..add(serializers.serialize(
          payload.additionalInfo!,
          specifiedType: const FullType(String),
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
    result
      ..add(const _i1.XmlElementName('DisableApiTermination'))
      ..add(serializers.serialize(
        payload.disableApiTermination,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (payload.iamInstanceProfile != null) {
      result
        ..add(const _i1.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          payload.iamInstanceProfile!,
          specifiedType: const FullType(_i8.IamInstanceProfileSpecification),
        ));
    }
    if (payload.instanceInitiatedShutdownBehavior != null) {
      result
        ..add(const _i1.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          payload.instanceInitiatedShutdownBehavior!,
          specifiedType: const FullType.nullable(_i9.ShutdownBehavior),
        ));
    }
    if (payload.networkInterfaces != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInterface'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaces!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(_i10.InstanceNetworkInterfaceSpecification)],
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
    if (payload.elasticGpuSpecification != null) {
      result
        ..add(const _i1.XmlElementName('ElasticGpuSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticGpuSpecification!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(_i11.ElasticGpuSpecification)],
          ),
        ));
    }
    if (payload.elasticInferenceAccelerators != null) {
      result
        ..add(const _i1.XmlElementName('ElasticInferenceAccelerator'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticInferenceAccelerators!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(_i12.ElasticInferenceAccelerator)],
          ),
        ));
    }
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
            _i25.BuiltList,
            [FullType(_i13.TagSpecification)],
          ),
        ));
    }
    if (payload.launchTemplate != null) {
      result
        ..add(const _i1.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          payload.launchTemplate!,
          specifiedType: const FullType(_i14.LaunchTemplateSpecification),
        ));
    }
    if (payload.instanceMarketOptions != null) {
      result
        ..add(const _i1.XmlElementName('InstanceMarketOptions'))
        ..add(serializers.serialize(
          payload.instanceMarketOptions!,
          specifiedType: const FullType(_i15.InstanceMarketOptionsRequest),
        ));
    }
    if (payload.creditSpecification != null) {
      result
        ..add(const _i1.XmlElementName('CreditSpecification'))
        ..add(serializers.serialize(
          payload.creditSpecification!,
          specifiedType: const FullType(_i16.CreditSpecificationRequest),
        ));
    }
    if (payload.cpuOptions != null) {
      result
        ..add(const _i1.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          payload.cpuOptions!,
          specifiedType: const FullType(_i17.CpuOptionsRequest),
        ));
    }
    if (payload.capacityReservationSpecification != null) {
      result
        ..add(const _i1.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          payload.capacityReservationSpecification!,
          specifiedType: const FullType(_i18.CapacityReservationSpecification),
        ));
    }
    if (payload.hibernationOptions != null) {
      result
        ..add(const _i1.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          payload.hibernationOptions!,
          specifiedType: const FullType(_i19.HibernationOptionsRequest),
        ));
    }
    if (payload.licenseSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('LicenseSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.licenseSpecifications!,
          specifiedType: const FullType.nullable(
            _i25.BuiltList,
            [FullType(_i20.LicenseConfigurationRequest)],
          ),
        ));
    }
    if (payload.metadataOptions != null) {
      result
        ..add(const _i1.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          payload.metadataOptions!,
          specifiedType: const FullType(_i21.InstanceMetadataOptionsRequest),
        ));
    }
    if (payload.enclaveOptions != null) {
      result
        ..add(const _i1.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          payload.enclaveOptions!,
          specifiedType: const FullType(_i22.EnclaveOptionsRequest),
        ));
    }
    if (payload.privateDnsNameOptions != null) {
      result
        ..add(const _i1.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          payload.privateDnsNameOptions!,
          specifiedType: const FullType(_i23.PrivateDnsNameOptionsRequest),
        ));
    }
    if (payload.maintenanceOptions != null) {
      result
        ..add(const _i1.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          payload.maintenanceOptions!,
          specifiedType: const FullType(_i24.InstanceMaintenanceOptionsRequest),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DisableApiStop'))
      ..add(serializers.serialize(
        payload.disableApiStop,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
