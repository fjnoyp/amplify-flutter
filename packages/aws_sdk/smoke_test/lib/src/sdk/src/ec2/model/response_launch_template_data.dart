// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.response_launch_template_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i23;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i24;
import 'package:smoke_test/src/sdk/src/ec2/model/credit_specification.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_specification_response.dart'
    as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart'
    as _i20;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_block_device_mapping.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_capacity_reservation_specification_response.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_cpu_options.dart'
    as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_elastic_inference_accelerator_response.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_enclave_options.dart'
    as _i19;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_hibernation_options.dart'
    as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_iam_instance_profile_specification.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_maintenance_options.dart'
    as _i22;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_market_options.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_metadata_options.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_instance_network_interface_specification.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_license_configuration.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_placement.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_private_dns_name_options.dart'
    as _i21;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_tag_specification.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_templates_monitoring.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart' as _i8;

part 'response_launch_template_data.g.dart';

/// The information for a launch template.
abstract class ResponseLaunchTemplateData
    with _i1.AWSEquatable<ResponseLaunchTemplateData>
    implements
        Built<ResponseLaunchTemplateData, ResponseLaunchTemplateDataBuilder> {
  /// The information for a launch template.
  factory ResponseLaunchTemplateData({
    String? kernelId,
    bool? ebsOptimized,
    _i2.LaunchTemplateIamInstanceProfileSpecification? iamInstanceProfile,
    List<_i3.LaunchTemplateBlockDeviceMapping>? blockDeviceMappings,
    List<_i4.LaunchTemplateInstanceNetworkInterfaceSpecification>?
        networkInterfaces,
    String? imageId,
    _i5.InstanceType? instanceType,
    String? keyName,
    _i6.LaunchTemplatesMonitoring? monitoring,
    _i7.LaunchTemplatePlacement? placement,
    String? ramDiskId,
    bool? disableApiTermination,
    _i8.ShutdownBehavior? instanceInitiatedShutdownBehavior,
    String? userData,
    List<_i9.LaunchTemplateTagSpecification>? tagSpecifications,
    List<_i10.ElasticGpuSpecificationResponse>? elasticGpuSpecifications,
    List<_i11.LaunchTemplateElasticInferenceAcceleratorResponse>?
        elasticInferenceAccelerators,
    List<String>? securityGroupIds,
    List<String>? securityGroups,
    _i12.LaunchTemplateInstanceMarketOptions? instanceMarketOptions,
    _i13.CreditSpecification? creditSpecification,
    _i14.LaunchTemplateCpuOptions? cpuOptions,
    _i15.LaunchTemplateCapacityReservationSpecificationResponse?
        capacityReservationSpecification,
    List<_i16.LaunchTemplateLicenseConfiguration>? licenseSpecifications,
    _i17.LaunchTemplateHibernationOptions? hibernationOptions,
    _i18.LaunchTemplateInstanceMetadataOptions? metadataOptions,
    _i19.LaunchTemplateEnclaveOptions? enclaveOptions,
    _i20.InstanceRequirements? instanceRequirements,
    _i21.LaunchTemplatePrivateDnsNameOptions? privateDnsNameOptions,
    _i22.LaunchTemplateInstanceMaintenanceOptions? maintenanceOptions,
    bool? disableApiStop,
  }) {
    ebsOptimized ??= false;
    disableApiTermination ??= false;
    disableApiStop ??= false;
    return _$ResponseLaunchTemplateData._(
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

  /// The information for a launch template.
  factory ResponseLaunchTemplateData.build(
          [void Function(ResponseLaunchTemplateDataBuilder) updates]) =
      _$ResponseLaunchTemplateData;

  const ResponseLaunchTemplateData._();

  static const List<_i24.SmithySerializer> serializers = [
    ResponseLaunchTemplateDataEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResponseLaunchTemplateDataBuilder b) {
    b.ebsOptimized = false;
    b.disableApiTermination = false;
    b.disableApiStop = false;
  }

  /// The ID of the kernel, if applicable.
  String? get kernelId;

  /// Indicates whether the instance is optimized for Amazon EBS I/O.
  bool get ebsOptimized;

  /// The IAM instance profile.
  _i2.LaunchTemplateIamInstanceProfileSpecification? get iamInstanceProfile;

  /// The block device mappings.
  _i23.BuiltList<_i3.LaunchTemplateBlockDeviceMapping>? get blockDeviceMappings;

  /// The network interfaces.
  _i23.BuiltList<_i4.LaunchTemplateInstanceNetworkInterfaceSpecification>?
      get networkInterfaces;

  /// The ID of the AMI that was used to launch the instance.
  String? get imageId;

  /// The instance type.
  _i5.InstanceType? get instanceType;

  /// The name of the key pair.
  String? get keyName;

  /// The monitoring for the instance.
  _i6.LaunchTemplatesMonitoring? get monitoring;

  /// The placement of the instance.
  _i7.LaunchTemplatePlacement? get placement;

  /// The ID of the RAM disk, if applicable.
  String? get ramDiskId;

  /// If set to `true`, indicates that the instance cannot be terminated using the Amazon EC2 console, command line tool, or API.
  bool get disableApiTermination;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  _i8.ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The user data for the instance.
  String? get userData;

  /// The tags that are applied to the resources that are created during instance launch.
  _i23.BuiltList<_i9.LaunchTemplateTagSpecification>? get tagSpecifications;

  /// The elastic GPU specification.
  _i23.BuiltList<_i10.ElasticGpuSpecificationResponse>?
      get elasticGpuSpecifications;

  /// The elastic inference accelerator for the instance.
  _i23.BuiltList<_i11.LaunchTemplateElasticInferenceAcceleratorResponse>?
      get elasticInferenceAccelerators;

  /// The security group IDs.
  _i23.BuiltList<String>? get securityGroupIds;

  /// The security group names.
  _i23.BuiltList<String>? get securityGroups;

  /// The market (purchasing) option for the instances.
  _i12.LaunchTemplateInstanceMarketOptions? get instanceMarketOptions;

  /// The credit option for CPU usage of the instance.
  _i13.CreditSpecification? get creditSpecification;

  /// The CPU options for the instance. For more information, see [Optimizing CPU options](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i14.LaunchTemplateCpuOptions? get cpuOptions;

  /// Information about the Capacity Reservation targeting option.
  _i15.LaunchTemplateCapacityReservationSpecificationResponse?
      get capacityReservationSpecification;

  /// The license configurations.
  _i23.BuiltList<_i16.LaunchTemplateLicenseConfiguration>?
      get licenseSpecifications;

  /// Indicates whether an instance is configured for hibernation. For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i17.LaunchTemplateHibernationOptions? get hibernationOptions;

  /// The metadata options for the instance. For more information, see [Instance metadata and user data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) in the _Amazon Elastic Compute Cloud User Guide_.
  _i18.LaunchTemplateInstanceMetadataOptions? get metadataOptions;

  /// Indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  _i19.LaunchTemplateEnclaveOptions? get enclaveOptions;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceTypes`.
  _i20.InstanceRequirements? get instanceRequirements;

  /// The options for the instance hostname.
  _i21.LaunchTemplatePrivateDnsNameOptions? get privateDnsNameOptions;

  /// The maintenance options for your instance.
  _i22.LaunchTemplateInstanceMaintenanceOptions? get maintenanceOptions;

  /// Indicates whether the instance is enabled for stop protection. For more information, see [Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
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
    final helper = newBuiltValueToStringHelper('ResponseLaunchTemplateData');
    helper.add(
      'kernelId',
      kernelId,
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
      'blockDeviceMappings',
      blockDeviceMappings,
    );
    helper.add(
      'networkInterfaces',
      networkInterfaces,
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
      'keyName',
      keyName,
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
      'ramDiskId',
      ramDiskId,
    );
    helper.add(
      'disableApiTermination',
      disableApiTermination,
    );
    helper.add(
      'instanceInitiatedShutdownBehavior',
      instanceInitiatedShutdownBehavior,
    );
    helper.add(
      'userData',
      userData,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'elasticGpuSpecifications',
      elasticGpuSpecifications,
    );
    helper.add(
      'elasticInferenceAccelerators',
      elasticInferenceAccelerators,
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
      'licenseSpecifications',
      licenseSpecifications,
    );
    helper.add(
      'hibernationOptions',
      hibernationOptions,
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
      'instanceRequirements',
      instanceRequirements,
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

class ResponseLaunchTemplateDataEc2QuerySerializer
    extends _i24.StructuredSmithySerializer<ResponseLaunchTemplateData> {
  const ResponseLaunchTemplateDataEc2QuerySerializer()
      : super('ResponseLaunchTemplateData');

  @override
  Iterable<Type> get types => const [
        ResponseLaunchTemplateData,
        _$ResponseLaunchTemplateData,
      ];
  @override
  Iterable<_i24.ShapeId> get supportedProtocols => const [
        _i24.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResponseLaunchTemplateData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseLaunchTemplateDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'kernelId':
          if (value != null) {
            result.kernelId = (serializers.deserialize(
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
        case 'iamInstanceProfile':
          if (value != null) {
            result.iamInstanceProfile.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.LaunchTemplateIamInstanceProfileSpecification),
            ) as _i2.LaunchTemplateIamInstanceProfileSpecification));
          }
          break;
        case 'blockDeviceMappingSet':
          if (value != null) {
            result.blockDeviceMappings
                .replace((const _i24.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i3.LaunchTemplateBlockDeviceMapping)],
              ),
            ) as _i23.BuiltList<_i3.LaunchTemplateBlockDeviceMapping>));
          }
          break;
        case 'networkInterfaceSet':
          if (value != null) {
            result.networkInterfaces.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [
                  FullType(
                      _i4.LaunchTemplateInstanceNetworkInterfaceSpecification)
                ],
              ),
            ) as _i23.BuiltList<
                _i4.LaunchTemplateInstanceNetworkInterfaceSpecification>));
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
              specifiedType: const FullType(_i6.LaunchTemplatesMonitoring),
            ) as _i6.LaunchTemplatesMonitoring));
          }
          break;
        case 'placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.LaunchTemplatePlacement),
            ) as _i7.LaunchTemplatePlacement));
          }
          break;
        case 'ramDiskId':
          if (value != null) {
            result.ramDiskId = (serializers.deserialize(
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
        case 'instanceInitiatedShutdownBehavior':
          if (value != null) {
            result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.ShutdownBehavior),
            ) as _i8.ShutdownBehavior);
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
        case 'tagSpecificationSet':
          if (value != null) {
            result.tagSpecifications.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i9.LaunchTemplateTagSpecification)],
              ),
            ) as _i23.BuiltList<_i9.LaunchTemplateTagSpecification>));
          }
          break;
        case 'elasticGpuSpecificationSet':
          if (value != null) {
            result.elasticGpuSpecifications
                .replace((const _i24.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i10.ElasticGpuSpecificationResponse)],
              ),
            ) as _i23.BuiltList<_i10.ElasticGpuSpecificationResponse>));
          }
          break;
        case 'elasticInferenceAcceleratorSet':
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
                [
                  FullType(
                      _i11.LaunchTemplateElasticInferenceAcceleratorResponse)
                ],
              ),
            ) as _i23.BuiltList<
                    _i11.LaunchTemplateElasticInferenceAcceleratorResponse>));
          }
          break;
        case 'securityGroupIdSet':
          if (value != null) {
            result.securityGroupIds.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'item',
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
        case 'securityGroupSet':
          if (value != null) {
            result.securityGroups.replace((const _i24.XmlBuiltListSerializer(
              memberName: 'item',
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
        case 'instanceMarketOptions':
          if (value != null) {
            result.instanceMarketOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i12.LaunchTemplateInstanceMarketOptions),
            ) as _i12.LaunchTemplateInstanceMarketOptions));
          }
          break;
        case 'creditSpecification':
          if (value != null) {
            result.creditSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i13.CreditSpecification),
            ) as _i13.CreditSpecification));
          }
          break;
        case 'cpuOptions':
          if (value != null) {
            result.cpuOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i14.LaunchTemplateCpuOptions),
            ) as _i14.LaunchTemplateCpuOptions));
          }
          break;
        case 'capacityReservationSpecification':
          if (value != null) {
            result.capacityReservationSpecification
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i15.LaunchTemplateCapacityReservationSpecificationResponse),
            ) as _i15.LaunchTemplateCapacityReservationSpecificationResponse));
          }
          break;
        case 'licenseSet':
          if (value != null) {
            result.licenseSpecifications
                .replace((const _i24.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i24.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i23.BuiltList,
                [FullType(_i16.LaunchTemplateLicenseConfiguration)],
              ),
            ) as _i23.BuiltList<_i16.LaunchTemplateLicenseConfiguration>));
          }
          break;
        case 'hibernationOptions':
          if (value != null) {
            result.hibernationOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i17.LaunchTemplateHibernationOptions),
            ) as _i17.LaunchTemplateHibernationOptions));
          }
          break;
        case 'metadataOptions':
          if (value != null) {
            result.metadataOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i18.LaunchTemplateInstanceMetadataOptions),
            ) as _i18.LaunchTemplateInstanceMetadataOptions));
          }
          break;
        case 'enclaveOptions':
          if (value != null) {
            result.enclaveOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i19.LaunchTemplateEnclaveOptions),
            ) as _i19.LaunchTemplateEnclaveOptions));
          }
          break;
        case 'instanceRequirements':
          if (value != null) {
            result.instanceRequirements.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i20.InstanceRequirements),
            ) as _i20.InstanceRequirements));
          }
          break;
        case 'privateDnsNameOptions':
          if (value != null) {
            result.privateDnsNameOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i21.LaunchTemplatePrivateDnsNameOptions),
            ) as _i21.LaunchTemplatePrivateDnsNameOptions));
          }
          break;
        case 'maintenanceOptions':
          if (value != null) {
            result.maintenanceOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i22.LaunchTemplateInstanceMaintenanceOptions),
            ) as _i22.LaunchTemplateInstanceMaintenanceOptions));
          }
          break;
        case 'disableApiStop':
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
    final payload = (object as ResponseLaunchTemplateData);
    final result = <Object?>[
      const _i24.XmlElementName(
        'ResponseLaunchTemplateDataResponse',
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
          specifiedType:
              const FullType(_i2.LaunchTemplateIamInstanceProfileSpecification),
        ));
    }
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i24.XmlElementName('BlockDeviceMappingSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i3.LaunchTemplateBlockDeviceMapping)],
          ),
        ));
    }
    if (payload.networkInterfaces != null) {
      result
        ..add(const _i24.XmlElementName('NetworkInterfaceSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaces!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i4.LaunchTemplateInstanceNetworkInterfaceSpecification)],
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
          specifiedType: const FullType(_i6.LaunchTemplatesMonitoring),
        ));
    }
    if (payload.placement != null) {
      result
        ..add(const _i24.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i7.LaunchTemplatePlacement),
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
        ..add(const _i24.XmlElementName('TagSpecificationSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i9.LaunchTemplateTagSpecification)],
          ),
        ));
    }
    if (payload.elasticGpuSpecifications != null) {
      result
        ..add(const _i24.XmlElementName('ElasticGpuSpecificationSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticGpuSpecifications!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i10.ElasticGpuSpecificationResponse)],
          ),
        ));
    }
    if (payload.elasticInferenceAccelerators != null) {
      result
        ..add(const _i24.XmlElementName('ElasticInferenceAcceleratorSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.elasticInferenceAccelerators!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i11.LaunchTemplateElasticInferenceAcceleratorResponse)],
          ),
        ));
    }
    if (payload.securityGroupIds != null) {
      result
        ..add(const _i24.XmlElementName('SecurityGroupIdSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
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
        ..add(const _i24.XmlElementName('SecurityGroupSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
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
              const FullType(_i12.LaunchTemplateInstanceMarketOptions),
        ));
    }
    if (payload.creditSpecification != null) {
      result
        ..add(const _i24.XmlElementName('CreditSpecification'))
        ..add(serializers.serialize(
          payload.creditSpecification!,
          specifiedType: const FullType(_i13.CreditSpecification),
        ));
    }
    if (payload.cpuOptions != null) {
      result
        ..add(const _i24.XmlElementName('CpuOptions'))
        ..add(serializers.serialize(
          payload.cpuOptions!,
          specifiedType: const FullType(_i14.LaunchTemplateCpuOptions),
        ));
    }
    if (payload.capacityReservationSpecification != null) {
      result
        ..add(const _i24.XmlElementName('CapacityReservationSpecification'))
        ..add(serializers.serialize(
          payload.capacityReservationSpecification!,
          specifiedType: const FullType(
              _i15.LaunchTemplateCapacityReservationSpecificationResponse),
        ));
    }
    if (payload.licenseSpecifications != null) {
      result
        ..add(const _i24.XmlElementName('LicenseSet'))
        ..add(const _i24.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i24.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.licenseSpecifications!,
          specifiedType: const FullType.nullable(
            _i23.BuiltList,
            [FullType(_i16.LaunchTemplateLicenseConfiguration)],
          ),
        ));
    }
    if (payload.hibernationOptions != null) {
      result
        ..add(const _i24.XmlElementName('HibernationOptions'))
        ..add(serializers.serialize(
          payload.hibernationOptions!,
          specifiedType: const FullType(_i17.LaunchTemplateHibernationOptions),
        ));
    }
    if (payload.metadataOptions != null) {
      result
        ..add(const _i24.XmlElementName('MetadataOptions'))
        ..add(serializers.serialize(
          payload.metadataOptions!,
          specifiedType:
              const FullType(_i18.LaunchTemplateInstanceMetadataOptions),
        ));
    }
    if (payload.enclaveOptions != null) {
      result
        ..add(const _i24.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          payload.enclaveOptions!,
          specifiedType: const FullType(_i19.LaunchTemplateEnclaveOptions),
        ));
    }
    if (payload.instanceRequirements != null) {
      result
        ..add(const _i24.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          payload.instanceRequirements!,
          specifiedType: const FullType(_i20.InstanceRequirements),
        ));
    }
    if (payload.privateDnsNameOptions != null) {
      result
        ..add(const _i24.XmlElementName('PrivateDnsNameOptions'))
        ..add(serializers.serialize(
          payload.privateDnsNameOptions!,
          specifiedType:
              const FullType(_i21.LaunchTemplatePrivateDnsNameOptions),
        ));
    }
    if (payload.maintenanceOptions != null) {
      result
        ..add(const _i24.XmlElementName('MaintenanceOptions'))
        ..add(serializers.serialize(
          payload.maintenanceOptions!,
          specifiedType:
              const FullType(_i22.LaunchTemplateInstanceMaintenanceOptions),
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
