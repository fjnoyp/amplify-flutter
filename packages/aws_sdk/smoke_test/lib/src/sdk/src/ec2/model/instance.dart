// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i30;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i31;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart' as _i27;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_specification_response.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_options.dart' as _i21;
import 'package:smoke_test/src/sdk/src/ec2/model/device_type.dart' as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_association.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_inference_accelerator_association.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options.dart' as _i26;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/hibernation_options.dart'
    as _i23;
import 'package:smoke_test/src/sdk/src/ec2/model/hypervisor_type.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle_type.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_maintenance_options.dart'
    as _i29;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_metadata_options_response.dart'
    as _i25;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_network_interface.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/license_configuration.dart'
    as _i24;
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_options_response.dart'
    as _i28;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/state_reason.dart' as _i18;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i19;
import 'package:smoke_test/src/sdk/src/ec2/model/virtualization_type.dart'
    as _i20;

part 'instance.g.dart';

/// Describes an instance.
abstract class Instance
    with _i1.AWSEquatable<Instance>
    implements Built<Instance, InstanceBuilder> {
  /// Describes an instance.
  factory Instance({
    int? amiLaunchIndex,
    String? imageId,
    String? instanceId,
    _i2.InstanceType? instanceType,
    String? kernelId,
    String? keyName,
    DateTime? launchTime,
    _i3.Monitoring? monitoring,
    _i4.Placement? placement,
    _i5.PlatformValues? platform,
    String? privateDnsName,
    String? privateIpAddress,
    List<_i6.ProductCode>? productCodes,
    String? publicDnsName,
    String? publicIpAddress,
    String? ramdiskId,
    _i7.InstanceState? state,
    String? stateTransitionReason,
    String? subnetId,
    String? vpcId,
    _i8.ArchitectureValues? architecture,
    List<_i9.InstanceBlockDeviceMapping>? blockDeviceMappings,
    String? clientToken,
    bool? ebsOptimized,
    bool? enaSupport,
    _i10.HypervisorType? hypervisor,
    _i11.IamInstanceProfile? iamInstanceProfile,
    _i12.InstanceLifecycleType? instanceLifecycle,
    List<_i13.ElasticGpuAssociation>? elasticGpuAssociations,
    List<_i14.ElasticInferenceAcceleratorAssociation>?
        elasticInferenceAcceleratorAssociations,
    List<_i15.InstanceNetworkInterface>? networkInterfaces,
    String? outpostArn,
    String? rootDeviceName,
    _i16.DeviceType? rootDeviceType,
    List<_i17.GroupIdentifier>? securityGroups,
    bool? sourceDestCheck,
    String? spotInstanceRequestId,
    String? sriovNetSupport,
    _i18.StateReason? stateReason,
    List<_i19.Tag>? tags,
    _i20.VirtualizationType? virtualizationType,
    _i21.CpuOptions? cpuOptions,
    String? capacityReservationId,
    _i22.CapacityReservationSpecificationResponse?
        capacityReservationSpecification,
    _i23.HibernationOptions? hibernationOptions,
    List<_i24.LicenseConfiguration>? licenses,
    _i25.InstanceMetadataOptionsResponse? metadataOptions,
    _i26.EnclaveOptions? enclaveOptions,
    _i27.BootModeValues? bootMode,
    String? platformDetails,
    String? usageOperation,
    DateTime? usageOperationUpdateTime,
    _i28.PrivateDnsNameOptionsResponse? privateDnsNameOptions,
    String? ipv6Address,
    String? tpmSupport,
    _i29.InstanceMaintenanceOptions? maintenanceOptions,
  }) {
    amiLaunchIndex ??= 0;
    ebsOptimized ??= false;
    enaSupport ??= false;
    sourceDestCheck ??= false;
    return _$Instance._(
      amiLaunchIndex: amiLaunchIndex,
      imageId: imageId,
      instanceId: instanceId,
      instanceType: instanceType,
      kernelId: kernelId,
      keyName: keyName,
      launchTime: launchTime,
      monitoring: monitoring,
      placement: placement,
      platform: platform,
      privateDnsName: privateDnsName,
      privateIpAddress: privateIpAddress,
      productCodes: productCodes == null ? null : _i30.BuiltList(productCodes),
      publicDnsName: publicDnsName,
      publicIpAddress: publicIpAddress,
      ramdiskId: ramdiskId,
      state: state,
      stateTransitionReason: stateTransitionReason,
      subnetId: subnetId,
      vpcId: vpcId,
      architecture: architecture,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i30.BuiltList(blockDeviceMappings),
      clientToken: clientToken,
      ebsOptimized: ebsOptimized,
      enaSupport: enaSupport,
      hypervisor: hypervisor,
      iamInstanceProfile: iamInstanceProfile,
      instanceLifecycle: instanceLifecycle,
      elasticGpuAssociations: elasticGpuAssociations == null
          ? null
          : _i30.BuiltList(elasticGpuAssociations),
      elasticInferenceAcceleratorAssociations:
          elasticInferenceAcceleratorAssociations == null
              ? null
              : _i30.BuiltList(elasticInferenceAcceleratorAssociations),
      networkInterfaces:
          networkInterfaces == null ? null : _i30.BuiltList(networkInterfaces),
      outpostArn: outpostArn,
      rootDeviceName: rootDeviceName,
      rootDeviceType: rootDeviceType,
      securityGroups:
          securityGroups == null ? null : _i30.BuiltList(securityGroups),
      sourceDestCheck: sourceDestCheck,
      spotInstanceRequestId: spotInstanceRequestId,
      sriovNetSupport: sriovNetSupport,
      stateReason: stateReason,
      tags: tags == null ? null : _i30.BuiltList(tags),
      virtualizationType: virtualizationType,
      cpuOptions: cpuOptions,
      capacityReservationId: capacityReservationId,
      capacityReservationSpecification: capacityReservationSpecification,
      hibernationOptions: hibernationOptions,
      licenses: licenses == null ? null : _i30.BuiltList(licenses),
      metadataOptions: metadataOptions,
      enclaveOptions: enclaveOptions,
      bootMode: bootMode,
      platformDetails: platformDetails,
      usageOperation: usageOperation,
      usageOperationUpdateTime: usageOperationUpdateTime,
      privateDnsNameOptions: privateDnsNameOptions,
      ipv6Address: ipv6Address,
      tpmSupport: tpmSupport,
      maintenanceOptions: maintenanceOptions,
    );
  }

  /// Describes an instance.
  factory Instance.build([void Function(InstanceBuilder) updates]) = _$Instance;

  const Instance._();

  static const List<_i31.SmithySerializer> serializers = [
    InstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceBuilder b) {
    b.amiLaunchIndex = 0;
    b.ebsOptimized = false;
    b.enaSupport = false;
    b.sourceDestCheck = false;
  }

  /// The AMI launch index, which can be used to find this instance in the launch group.
  int get amiLaunchIndex;

  /// The ID of the AMI used to launch the instance.
  String? get imageId;

  /// The ID of the instance.
  String? get instanceId;

  /// The instance type.
  _i2.InstanceType? get instanceType;

  /// The kernel associated with this instance, if applicable.
  String? get kernelId;

  /// The name of the key pair, if this instance was launched with an associated key pair.
  String? get keyName;

  /// The time the instance was launched.
  DateTime? get launchTime;

  /// The monitoring for the instance.
  _i3.Monitoring? get monitoring;

  /// The location where the instance launched, if applicable.
  _i4.Placement? get placement;

  /// The value is `Windows` for Windows instances; otherwise blank.
  _i5.PlatformValues? get platform;

  /// (IPv4 only) The private DNS hostname name assigned to the instance. This DNS hostname can only be used inside the Amazon EC2 network. This name is not available until the instance enters the `running` state.
  ///
  /// \[EC2-VPC\] The Amazon-provided DNS server resolves Amazon-provided private DNS hostnames if you've enabled DNS resolution and DNS hostnames in your VPC. If you are not using the Amazon-provided DNS server in your VPC, your custom domain name servers must resolve the hostname as appropriate.
  String? get privateDnsName;

  /// The private IPv4 address assigned to the instance.
  String? get privateIpAddress;

  /// The product codes attached to this instance, if applicable.
  _i30.BuiltList<_i6.ProductCode>? get productCodes;

  /// (IPv4 only) The public DNS name assigned to the instance. This name is not available until the instance enters the `running` state. For EC2-VPC, this name is only available if you've enabled DNS hostnames for your VPC.
  String? get publicDnsName;

  /// The public IPv4 address, or the Carrier IP address assigned to the instance, if applicable.
  ///
  /// A Carrier IP address only applies to an instance launched in a subnet associated with a Wavelength Zone.
  String? get publicIpAddress;

  /// The RAM disk associated with this instance, if applicable.
  String? get ramdiskId;

  /// The current state of the instance.
  _i7.InstanceState? get state;

  /// The reason for the most recent state transition. This might be an empty string.
  String? get stateTransitionReason;

  /// \[EC2-VPC\] The ID of the subnet in which the instance is running.
  String? get subnetId;

  /// \[EC2-VPC\] The ID of the VPC in which the instance is running.
  String? get vpcId;

  /// The architecture of the image.
  _i8.ArchitectureValues? get architecture;

  /// Any block device mapping entries for the instance.
  _i30.BuiltList<_i9.InstanceBlockDeviceMapping>? get blockDeviceMappings;

  /// The idempotency token you provided when you launched the instance, if applicable.
  String? get clientToken;

  /// Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  bool get ebsOptimized;

  /// Specifies whether enhanced networking with ENA is enabled.
  bool get enaSupport;

  /// The hypervisor type of the instance. The value `xen` is used for both Xen and Nitro hypervisors.
  _i10.HypervisorType? get hypervisor;

  /// The IAM instance profile associated with the instance, if applicable.
  _i11.IamInstanceProfile? get iamInstanceProfile;

  /// Indicates whether this is a Spot Instance or a Scheduled Instance.
  _i12.InstanceLifecycleType? get instanceLifecycle;

  /// The Elastic GPU associated with the instance.
  _i30.BuiltList<_i13.ElasticGpuAssociation>? get elasticGpuAssociations;

  /// The elastic inference accelerator associated with the instance.
  _i30.BuiltList<_i14.ElasticInferenceAcceleratorAssociation>?
      get elasticInferenceAcceleratorAssociations;

  /// \[EC2-VPC\] The network interfaces for the instance.
  _i30.BuiltList<_i15.InstanceNetworkInterface>? get networkInterfaces;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// The device name of the root device volume (for example, `/dev/sda1`).
  String? get rootDeviceName;

  /// The root device type used by the AMI. The AMI can use an EBS volume or an instance store volume.
  _i16.DeviceType? get rootDeviceType;

  /// The security groups for the instance.
  _i30.BuiltList<_i17.GroupIdentifier>? get securityGroups;

  /// Indicates whether source/destination checking is enabled.
  bool get sourceDestCheck;

  /// If the request is a Spot Instance request, the ID of the request.
  String? get spotInstanceRequestId;

  /// Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  String? get sriovNetSupport;

  /// The reason for the most recent state transition.
  _i18.StateReason? get stateReason;

  /// Any tags assigned to the instance.
  _i30.BuiltList<_i19.Tag>? get tags;

  /// The virtualization type of the instance.
  _i20.VirtualizationType? get virtualizationType;

  /// The CPU options for the instance.
  _i21.CpuOptions? get cpuOptions;

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// Information about the Capacity Reservation targeting option.
  _i22.CapacityReservationSpecificationResponse?
      get capacityReservationSpecification;

  /// Indicates whether the instance is enabled for hibernation.
  _i23.HibernationOptions? get hibernationOptions;

  /// The license configurations for the instance.
  _i30.BuiltList<_i24.LicenseConfiguration>? get licenses;

  /// The metadata options for the instance.
  _i25.InstanceMetadataOptionsResponse? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  _i26.EnclaveOptions? get enclaveOptions;

  /// The boot mode of the instance. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the _Amazon EC2 User Guide_.
  _i27.BootModeValues? get bootMode;

  /// The platform details value for the instance. For more information, see [AMI billing information fields](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html) in the _Amazon EC2 User Guide_.
  String? get platformDetails;

  /// The usage operation value for the instance. For more information, see [AMI billing information fields](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html) in the _Amazon EC2 User Guide_.
  String? get usageOperation;

  /// The time that the usage operation was last updated.
  DateTime? get usageOperationUpdateTime;

  /// The options for the instance hostname.
  _i28.PrivateDnsNameOptionsResponse? get privateDnsNameOptions;

  /// The IPv6 address assigned to the instance.
  String? get ipv6Address;

  /// If the instance is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the _Amazon EC2 User Guide_.
  String? get tpmSupport;

  /// Provides information on the recovery and maintenance options of your instance.
  _i29.InstanceMaintenanceOptions? get maintenanceOptions;
  @override
  List<Object?> get props => [
        amiLaunchIndex,
        imageId,
        instanceId,
        instanceType,
        kernelId,
        keyName,
        launchTime,
        monitoring,
        placement,
        platform,
        privateDnsName,
        privateIpAddress,
        productCodes,
        publicDnsName,
        publicIpAddress,
        ramdiskId,
        state,
        stateTransitionReason,
        subnetId,
        vpcId,
        architecture,
        blockDeviceMappings,
        clientToken,
        ebsOptimized,
        enaSupport,
        hypervisor,
        iamInstanceProfile,
        instanceLifecycle,
        elasticGpuAssociations,
        elasticInferenceAcceleratorAssociations,
        networkInterfaces,
        outpostArn,
        rootDeviceName,
        rootDeviceType,
        securityGroups,
        sourceDestCheck,
        spotInstanceRequestId,
        sriovNetSupport,
        stateReason,
        tags,
        virtualizationType,
        cpuOptions,
        capacityReservationId,
        capacityReservationSpecification,
        hibernationOptions,
        licenses,
        metadataOptions,
        enclaveOptions,
        bootMode,
        platformDetails,
        usageOperation,
        usageOperationUpdateTime,
        privateDnsNameOptions,
        ipv6Address,
        tpmSupport,
        maintenanceOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Instance');
    helper.add(
      'amiLaunchIndex',
      amiLaunchIndex,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'instanceId',
      instanceId,
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
      'launchTime',
      launchTime,
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
      'platform',
      platform,
    );
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'publicDnsName',
      publicDnsName,
    );
    helper.add(
      'publicIpAddress',
      publicIpAddress,
    );
    helper.add(
      'ramdiskId',
      ramdiskId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stateTransitionReason',
      stateTransitionReason,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'architecture',
      architecture,
    );
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'ebsOptimized',
      ebsOptimized,
    );
    helper.add(
      'enaSupport',
      enaSupport,
    );
    helper.add(
      'hypervisor',
      hypervisor,
    );
    helper.add(
      'iamInstanceProfile',
      iamInstanceProfile,
    );
    helper.add(
      'instanceLifecycle',
      instanceLifecycle,
    );
    helper.add(
      'elasticGpuAssociations',
      elasticGpuAssociations,
    );
    helper.add(
      'elasticInferenceAcceleratorAssociations',
      elasticInferenceAcceleratorAssociations,
    );
    helper.add(
      'networkInterfaces',
      networkInterfaces,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'rootDeviceName',
      rootDeviceName,
    );
    helper.add(
      'rootDeviceType',
      rootDeviceType,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
    );
    helper.add(
      'spotInstanceRequestId',
      spotInstanceRequestId,
    );
    helper.add(
      'sriovNetSupport',
      sriovNetSupport,
    );
    helper.add(
      'stateReason',
      stateReason,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'virtualizationType',
      virtualizationType,
    );
    helper.add(
      'cpuOptions',
      cpuOptions,
    );
    helper.add(
      'capacityReservationId',
      capacityReservationId,
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
      'licenses',
      licenses,
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
      'bootMode',
      bootMode,
    );
    helper.add(
      'platformDetails',
      platformDetails,
    );
    helper.add(
      'usageOperation',
      usageOperation,
    );
    helper.add(
      'usageOperationUpdateTime',
      usageOperationUpdateTime,
    );
    helper.add(
      'privateDnsNameOptions',
      privateDnsNameOptions,
    );
    helper.add(
      'ipv6Address',
      ipv6Address,
    );
    helper.add(
      'tpmSupport',
      tpmSupport,
    );
    helper.add(
      'maintenanceOptions',
      maintenanceOptions,
    );
    return helper.toString();
  }
}

class InstanceEc2QuerySerializer
    extends _i31.StructuredSmithySerializer<Instance> {
  const InstanceEc2QuerySerializer() : super('Instance');

  @override
  Iterable<Type> get types => const [
        Instance,
        _$Instance,
      ];
  @override
  Iterable<_i31.ShapeId> get supportedProtocols => const [
        _i31.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Instance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'amiLaunchIndex':
          result.amiLaunchIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'imageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceType),
            ) as _i2.InstanceType);
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
        case 'launchTime':
          if (value != null) {
            result.launchTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'monitoring':
          if (value != null) {
            result.monitoring.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Monitoring),
            ) as _i3.Monitoring));
          }
          break;
        case 'placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Placement),
            ) as _i4.Placement));
          }
          break;
        case 'platform':
          if (value != null) {
            result.platform = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.PlatformValues),
            ) as _i5.PlatformValues);
          }
          break;
        case 'privateDnsName':
          if (value != null) {
            result.privateDnsName = (serializers.deserialize(
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
        case 'productCodes':
          if (value != null) {
            result.productCodes.replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i6.ProductCode)],
              ),
            ) as _i30.BuiltList<_i6.ProductCode>));
          }
          break;
        case 'dnsName':
          if (value != null) {
            result.publicDnsName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipAddress':
          if (value != null) {
            result.publicIpAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'instanceState':
          if (value != null) {
            result.state.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.InstanceState),
            ) as _i7.InstanceState));
          }
          break;
        case 'reason':
          if (value != null) {
            result.stateTransitionReason = (serializers.deserialize(
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
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'architecture':
          if (value != null) {
            result.architecture = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.ArchitectureValues),
            ) as _i8.ArchitectureValues);
          }
          break;
        case 'blockDeviceMapping':
          if (value != null) {
            result.blockDeviceMappings
                .replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i9.InstanceBlockDeviceMapping)],
              ),
            ) as _i30.BuiltList<_i9.InstanceBlockDeviceMapping>));
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
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'enaSupport':
          result.enaSupport = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'hypervisor':
          if (value != null) {
            result.hypervisor = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.HypervisorType),
            ) as _i10.HypervisorType);
          }
          break;
        case 'iamInstanceProfile':
          if (value != null) {
            result.iamInstanceProfile.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i11.IamInstanceProfile),
            ) as _i11.IamInstanceProfile));
          }
          break;
        case 'instanceLifecycle':
          if (value != null) {
            result.instanceLifecycle = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i12.InstanceLifecycleType),
            ) as _i12.InstanceLifecycleType);
          }
          break;
        case 'elasticGpuAssociationSet':
          if (value != null) {
            result.elasticGpuAssociations
                .replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i13.ElasticGpuAssociation)],
              ),
            ) as _i30.BuiltList<_i13.ElasticGpuAssociation>));
          }
          break;
        case 'elasticInferenceAcceleratorAssociationSet':
          if (value != null) {
            result.elasticInferenceAcceleratorAssociations
                .replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i14.ElasticInferenceAcceleratorAssociation)],
              ),
            ) as _i30.BuiltList<_i14.ElasticInferenceAcceleratorAssociation>));
          }
          break;
        case 'networkInterfaceSet':
          if (value != null) {
            result.networkInterfaces.replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i15.InstanceNetworkInterface)],
              ),
            ) as _i30.BuiltList<_i15.InstanceNetworkInterface>));
          }
          break;
        case 'outpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'rootDeviceName':
          if (value != null) {
            result.rootDeviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'rootDeviceType':
          if (value != null) {
            result.rootDeviceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i16.DeviceType),
            ) as _i16.DeviceType);
          }
          break;
        case 'groupSet':
          if (value != null) {
            result.securityGroups.replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i17.GroupIdentifier)],
              ),
            ) as _i30.BuiltList<_i17.GroupIdentifier>));
          }
          break;
        case 'sourceDestCheck':
          result.sourceDestCheck = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'spotInstanceRequestId':
          if (value != null) {
            result.spotInstanceRequestId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'sriovNetSupport':
          if (value != null) {
            result.sriovNetSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'stateReason':
          if (value != null) {
            result.stateReason.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i18.StateReason),
            ) as _i18.StateReason));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i19.Tag)],
              ),
            ) as _i30.BuiltList<_i19.Tag>));
          }
          break;
        case 'virtualizationType':
          if (value != null) {
            result.virtualizationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i20.VirtualizationType),
            ) as _i20.VirtualizationType);
          }
          break;
        case 'cpuOptions':
          if (value != null) {
            result.cpuOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i21.CpuOptions),
            ) as _i21.CpuOptions));
          }
          break;
        case 'capacityReservationId':
          if (value != null) {
            result.capacityReservationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'capacityReservationSpecification':
          if (value != null) {
            result.capacityReservationSpecification
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i22.CapacityReservationSpecificationResponse),
            ) as _i22.CapacityReservationSpecificationResponse));
          }
          break;
        case 'hibernationOptions':
          if (value != null) {
            result.hibernationOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i23.HibernationOptions),
            ) as _i23.HibernationOptions));
          }
          break;
        case 'licenseSet':
          if (value != null) {
            result.licenses.replace((const _i31.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i31.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i30.BuiltList,
                [FullType(_i24.LicenseConfiguration)],
              ),
            ) as _i30.BuiltList<_i24.LicenseConfiguration>));
          }
          break;
        case 'metadataOptions':
          if (value != null) {
            result.metadataOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i25.InstanceMetadataOptionsResponse),
            ) as _i25.InstanceMetadataOptionsResponse));
          }
          break;
        case 'enclaveOptions':
          if (value != null) {
            result.enclaveOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i26.EnclaveOptions),
            ) as _i26.EnclaveOptions));
          }
          break;
        case 'bootMode':
          if (value != null) {
            result.bootMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i27.BootModeValues),
            ) as _i27.BootModeValues);
          }
          break;
        case 'platformDetails':
          if (value != null) {
            result.platformDetails = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'usageOperation':
          if (value != null) {
            result.usageOperation = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'usageOperationUpdateTime':
          if (value != null) {
            result.usageOperationUpdateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'privateDnsNameOptions':
          if (value != null) {
            result.privateDnsNameOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i28.PrivateDnsNameOptionsResponse),
            ) as _i28.PrivateDnsNameOptionsResponse));
          }
          break;
        case 'ipv6Address':
          if (value != null) {
            result.ipv6Address = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tpmSupport':
          if (value != null) {
            result.tpmSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'maintenanceOptions':
          if (value != null) {
            result.maintenanceOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i29.InstanceMaintenanceOptions),
            ) as _i29.InstanceMaintenanceOptions));
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
    final payload = (object as Instance);
    final result = <Object?>[
      const _i31.XmlElementName(
        'InstanceResponse',
        _i31.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i31.XmlElementName('AmiLaunchIndex'))
      ..add(serializers.serialize(
        payload.amiLaunchIndex,
        specifiedType: const FullType(int),
      ));
    if (payload.imageId != null) {
      result
        ..add(const _i31.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i31.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i31.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (payload.kernelId != null) {
      result
        ..add(const _i31.XmlElementName('KernelId'))
        ..add(serializers.serialize(
          payload.kernelId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.keyName != null) {
      result
        ..add(const _i31.XmlElementName('KeyName'))
        ..add(serializers.serialize(
          payload.keyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchTime != null) {
      result
        ..add(const _i31.XmlElementName('LaunchTime'))
        ..add(serializers.serialize(
          payload.launchTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.monitoring != null) {
      result
        ..add(const _i31.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          payload.monitoring!,
          specifiedType: const FullType(_i3.Monitoring),
        ));
    }
    if (payload.placement != null) {
      result
        ..add(const _i31.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i4.Placement),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i31.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType.nullable(_i5.PlatformValues),
        ));
    }
    if (payload.privateDnsName != null) {
      result
        ..add(const _i31.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          payload.privateDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i31.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.productCodes != null) {
      result
        ..add(const _i31.XmlElementName('ProductCodes'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.productCodes!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i6.ProductCode)],
          ),
        ));
    }
    if (payload.publicDnsName != null) {
      result
        ..add(const _i31.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          payload.publicDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicIpAddress != null) {
      result
        ..add(const _i31.XmlElementName('IpAddress'))
        ..add(serializers.serialize(
          payload.publicIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ramdiskId != null) {
      result
        ..add(const _i31.XmlElementName('RamdiskId'))
        ..add(serializers.serialize(
          payload.ramdiskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i31.XmlElementName('InstanceState'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(_i7.InstanceState),
        ));
    }
    if (payload.stateTransitionReason != null) {
      result
        ..add(const _i31.XmlElementName('Reason'))
        ..add(serializers.serialize(
          payload.stateTransitionReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i31.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i31.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.architecture != null) {
      result
        ..add(const _i31.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          payload.architecture!,
          specifiedType: const FullType.nullable(_i8.ArchitectureValues),
        ));
    }
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i31.XmlElementName('BlockDeviceMapping'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i9.InstanceBlockDeviceMapping)],
          ),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i31.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i31.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        payload.ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i31.XmlElementName('EnaSupport'))
      ..add(serializers.serialize(
        payload.enaSupport,
        specifiedType: const FullType(bool),
      ));
    if (payload.hypervisor != null) {
      result
        ..add(const _i31.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          payload.hypervisor!,
          specifiedType: const FullType.nullable(_i10.HypervisorType),
        ));
    }
    if (payload.iamInstanceProfile != null) {
      result
        ..add(const _i31.XmlElementName('IamInstanceProfile'))
        ..add(serializers.serialize(
          payload.iamInstanceProfile!,
          specifiedType: const FullType(_i11.IamInstanceProfile),
        ));
    }
    if (payload.instanceLifecycle != null) {
      result
        ..add(const _i31.XmlElementName('InstanceLifecycle'))
        ..add(serializers.serialize(
          payload.instanceLifecycle!,
          specifiedType: const FullType.nullable(_i12.InstanceLifecycleType),
        ));
    }
    if (payload.elasticGpuAssociations != null) {
      result
        ..add(const _i31.XmlElementName('ElasticGpuAssociationSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticGpuAssociations!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i13.ElasticGpuAssociation)],
          ),
        ));
    }
    if (payload.elasticInferenceAcceleratorAssociations != null) {
      result
        ..add(const _i31.XmlElementName(
            'ElasticInferenceAcceleratorAssociationSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticInferenceAcceleratorAssociations!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i14.ElasticInferenceAcceleratorAssociation)],
          ),
        ));
    }
    if (payload.networkInterfaces != null) {
      result
        ..add(const _i31.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaces!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i15.InstanceNetworkInterface)],
          ),
        ));
    }
    if (payload.outpostArn != null) {
      result
        ..add(const _i31.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.rootDeviceName != null) {
      result
        ..add(const _i31.XmlElementName('RootDeviceName'))
        ..add(serializers.serialize(
          payload.rootDeviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.rootDeviceType != null) {
      result
        ..add(const _i31.XmlElementName('RootDeviceType'))
        ..add(serializers.serialize(
          payload.rootDeviceType!,
          specifiedType: const FullType.nullable(_i16.DeviceType),
        ));
    }
    if (payload.securityGroups != null) {
      result
        ..add(const _i31.XmlElementName('GroupSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroups!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i17.GroupIdentifier)],
          ),
        ));
    }
    result
      ..add(const _i31.XmlElementName('SourceDestCheck'))
      ..add(serializers.serialize(
        payload.sourceDestCheck,
        specifiedType: const FullType(bool),
      ));
    if (payload.spotInstanceRequestId != null) {
      result
        ..add(const _i31.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          payload.spotInstanceRequestId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sriovNetSupport != null) {
      result
        ..add(const _i31.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          payload.sriovNetSupport!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stateReason != null) {
      result
        ..add(const _i31.XmlElementName('StateReason'))
        ..add(serializers.serialize(
          payload.stateReason!,
          specifiedType: const FullType(_i18.StateReason),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i31.XmlElementName('TagSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i19.Tag)],
          ),
        ));
    }
    if (payload.virtualizationType != null) {
      result
        ..add(const _i31.XmlElementName('VirtualizationType'))
        ..add(serializers.serialize(
          payload.virtualizationType!,
          specifiedType: const FullType.nullable(_i20.VirtualizationType),
        ));
    }
    if (payload.cpuOptions != null) {
      result
        ..add(const _i31.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          payload.cpuOptions!,
          specifiedType: const FullType(_i21.CpuOptions),
        ));
    }
    if (payload.capacityReservationId != null) {
      result
        ..add(const _i31.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          payload.capacityReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityReservationSpecification != null) {
      result
        ..add(const _i31.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          payload.capacityReservationSpecification!,
          specifiedType:
              const FullType(_i22.CapacityReservationSpecificationResponse),
        ));
    }
    if (payload.hibernationOptions != null) {
      result
        ..add(const _i31.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          payload.hibernationOptions!,
          specifiedType: const FullType(_i23.HibernationOptions),
        ));
    }
    if (payload.licenses != null) {
      result
        ..add(const _i31.XmlElementName('LicenseSet'))
        ..add(const _i31.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i31.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.licenses!,
          specifiedType: const FullType.nullable(
            _i30.BuiltList,
            [FullType(_i24.LicenseConfiguration)],
          ),
        ));
    }
    if (payload.metadataOptions != null) {
      result
        ..add(const _i31.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          payload.metadataOptions!,
          specifiedType: const FullType(_i25.InstanceMetadataOptionsResponse),
        ));
    }
    if (payload.enclaveOptions != null) {
      result
        ..add(const _i31.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          payload.enclaveOptions!,
          specifiedType: const FullType(_i26.EnclaveOptions),
        ));
    }
    if (payload.bootMode != null) {
      result
        ..add(const _i31.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          payload.bootMode!,
          specifiedType: const FullType.nullable(_i27.BootModeValues),
        ));
    }
    if (payload.platformDetails != null) {
      result
        ..add(const _i31.XmlElementName('PlatformDetails'))
        ..add(serializers.serialize(
          payload.platformDetails!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.usageOperation != null) {
      result
        ..add(const _i31.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          payload.usageOperation!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.usageOperationUpdateTime != null) {
      result
        ..add(const _i31.XmlElementName('UsageOperationUpdateTime'))
        ..add(serializers.serialize(
          payload.usageOperationUpdateTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.privateDnsNameOptions != null) {
      result
        ..add(const _i31.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          payload.privateDnsNameOptions!,
          specifiedType: const FullType(_i28.PrivateDnsNameOptionsResponse),
        ));
    }
    if (payload.ipv6Address != null) {
      result
        ..add(const _i31.XmlElementName('Ipv6Address'))
        ..add(serializers.serialize(
          payload.ipv6Address!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tpmSupport != null) {
      result
        ..add(const _i31.XmlElementName('TpmSupport'))
        ..add(serializers.serialize(
          payload.tpmSupport!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maintenanceOptions != null) {
      result
        ..add(const _i31.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          payload.maintenanceOptions!,
          specifiedType: const FullType(_i29.InstanceMaintenanceOptions),
        ));
    }
    return result;
  }
}
