// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_requirements_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i19;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i20;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_count_request.dart'
    as _i15;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_manufacturer.dart'
    as _i16;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_name.dart' as _i17;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_total_memory_mi_b_request.dart'
    as _i18;
import 'package:smoke_test/src/sdk/src/ec2/model/accelerator_type.dart' as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/bare_metal.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/baseline_ebs_bandwidth_mbps_request.dart'
    as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/burstable_performance.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/cpu_manufacturer.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_generation.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/local_storage_type.dart'
    as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_gi_b_per_v_cpu_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/memory_mi_b_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_count_request.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/total_local_storage_gb_request.dart'
    as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/v_cpu_count_range_request.dart'
    as _i2;

part 'instance_requirements_request.g.dart';

/// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.
///
/// When you specify multiple attributes, you get instance types that satisfy all of the specified attributes. If you specify multiple values for an attribute, you get instance types that satisfy any of the specified values.
///
/// You must specify `VCpuCount` and `MemoryMiB`. All other attributes are optional. Any unspecified optional attribute is set to its default.
///
/// For more information, see [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html), [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html), and [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the _Amazon EC2 User Guide_.
abstract class InstanceRequirementsRequest
    with _i1.AWSEquatable<InstanceRequirementsRequest>
    implements
        Built<InstanceRequirementsRequest, InstanceRequirementsRequestBuilder> {
  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.
  ///
  /// When you specify multiple attributes, you get instance types that satisfy all of the specified attributes. If you specify multiple values for an attribute, you get instance types that satisfy any of the specified values.
  ///
  /// You must specify `VCpuCount` and `MemoryMiB`. All other attributes are optional. Any unspecified optional attribute is set to its default.
  ///
  /// For more information, see [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html), [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html), and [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the _Amazon EC2 User Guide_.
  factory InstanceRequirementsRequest({
    required _i2.VCpuCountRangeRequest vCpuCount,
    required _i3.MemoryMiBRequest memoryMib,
    List<_i4.CpuManufacturer>? cpuManufacturers,
    _i5.MemoryGiBPerVCpuRequest? memoryGiBPerVCpu,
    List<String>? excludedInstanceTypes,
    List<_i6.InstanceGeneration>? instanceGenerations,
    int? spotMaxPricePercentageOverLowestPrice,
    int? onDemandMaxPricePercentageOverLowestPrice,
    _i7.BareMetal? bareMetal,
    _i8.BurstablePerformance? burstablePerformance,
    bool? requireHibernateSupport,
    _i9.NetworkInterfaceCountRequest? networkInterfaceCount,
    _i10.LocalStorage? localStorage,
    List<_i11.LocalStorageType>? localStorageTypes,
    _i12.TotalLocalStorageGbRequest? totalLocalStorageGb,
    _i13.BaselineEbsBandwidthMbpsRequest? baselineEbsBandwidthMbps,
    List<_i14.AcceleratorType>? acceleratorTypes,
    _i15.AcceleratorCountRequest? acceleratorCount,
    List<_i16.AcceleratorManufacturer>? acceleratorManufacturers,
    List<_i17.AcceleratorName>? acceleratorNames,
    _i18.AcceleratorTotalMemoryMiBRequest? acceleratorTotalMemoryMib,
  }) {
    spotMaxPricePercentageOverLowestPrice ??= 0;
    onDemandMaxPricePercentageOverLowestPrice ??= 0;
    requireHibernateSupport ??= false;
    return _$InstanceRequirementsRequest._(
      vCpuCount: vCpuCount,
      memoryMib: memoryMib,
      cpuManufacturers:
          cpuManufacturers == null ? null : _i19.BuiltList(cpuManufacturers),
      memoryGiBPerVCpu: memoryGiBPerVCpu,
      excludedInstanceTypes: excludedInstanceTypes == null
          ? null
          : _i19.BuiltList(excludedInstanceTypes),
      instanceGenerations: instanceGenerations == null
          ? null
          : _i19.BuiltList(instanceGenerations),
      spotMaxPricePercentageOverLowestPrice:
          spotMaxPricePercentageOverLowestPrice,
      onDemandMaxPricePercentageOverLowestPrice:
          onDemandMaxPricePercentageOverLowestPrice,
      bareMetal: bareMetal,
      burstablePerformance: burstablePerformance,
      requireHibernateSupport: requireHibernateSupport,
      networkInterfaceCount: networkInterfaceCount,
      localStorage: localStorage,
      localStorageTypes:
          localStorageTypes == null ? null : _i19.BuiltList(localStorageTypes),
      totalLocalStorageGb: totalLocalStorageGb,
      baselineEbsBandwidthMbps: baselineEbsBandwidthMbps,
      acceleratorTypes:
          acceleratorTypes == null ? null : _i19.BuiltList(acceleratorTypes),
      acceleratorCount: acceleratorCount,
      acceleratorManufacturers: acceleratorManufacturers == null
          ? null
          : _i19.BuiltList(acceleratorManufacturers),
      acceleratorNames:
          acceleratorNames == null ? null : _i19.BuiltList(acceleratorNames),
      acceleratorTotalMemoryMib: acceleratorTotalMemoryMib,
    );
  }

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with these attributes.
  ///
  /// When you specify multiple attributes, you get instance types that satisfy all of the specified attributes. If you specify multiple values for an attribute, you get instance types that satisfy any of the specified values.
  ///
  /// You must specify `VCpuCount` and `MemoryMiB`. All other attributes are optional. Any unspecified optional attribute is set to its default.
  ///
  /// For more information, see [Attribute-based instance type selection for EC2 Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html), [Attribute-based instance type selection for Spot Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html), and [Spot placement score](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html) in the _Amazon EC2 User Guide_.
  factory InstanceRequirementsRequest.build(
          [void Function(InstanceRequirementsRequestBuilder) updates]) =
      _$InstanceRequirementsRequest;

  const InstanceRequirementsRequest._();

  static const List<_i20.SmithySerializer> serializers = [
    InstanceRequirementsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceRequirementsRequestBuilder b) {
    b.spotMaxPricePercentageOverLowestPrice = 0;
    b.onDemandMaxPricePercentageOverLowestPrice = 0;
    b.requireHibernateSupport = false;
  }

  /// The minimum and maximum number of vCPUs.
  _i2.VCpuCountRangeRequest get vCpuCount;

  /// The minimum and maximum amount of memory, in MiB.
  _i3.MemoryMiBRequest get memoryMib;

  /// The CPU manufacturers to include.
  ///
  /// *   For instance types with Intel CPUs, specify `intel`.
  ///
  /// *   For instance types with AMD CPUs, specify `amd`.
  ///
  /// *   For instance types with Amazon Web Services CPUs, specify `amazon-web-services`.
  ///
  ///
  /// Don't confuse the CPU manufacturer with the CPU architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template.
  ///
  /// Default: Any manufacturer
  _i19.BuiltList<_i4.CpuManufacturer>? get cpuManufacturers;

  /// The minimum and maximum amount of memory per vCPU, in GiB.
  ///
  /// Default: No minimum or maximum limits
  _i5.MemoryGiBPerVCpuRequest? get memoryGiBPerVCpu;

  /// The instance types to exclude.
  ///
  /// You can use strings with one or more wild cards, represented by an asterisk (`*`), to exclude an instance family, type, size, or generation. The following are examples: `m5.8xlarge`, `c5*.*`, `m5a.*`, `r*`, `*3*`.
  ///
  /// For example, if you specify `c5*`,Amazon EC2 will exclude the entire C5 instance family, which includes all C5a and C5n instance types. If you specify `m5a.*`, Amazon EC2 will exclude all the M5a instance types, but not the M5n instance types.
  ///
  /// Default: No excluded instance types
  _i19.BuiltList<String>? get excludedInstanceTypes;

  /// Indicates whether current or previous generation instance types are included. The current generation instance types are recommended for use. Current generation instance types are typically the latest two to three generations in each instance family. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  ///
  /// For current generation instance types, specify `current`.
  ///
  /// For previous generation instance types, specify `previous`.
  ///
  /// Default: Current and previous generation instance types
  _i19.BuiltList<_i6.InstanceGeneration>? get instanceGenerations;

  /// The price protection threshold for Spot Instance. This is the maximum you’ll pay for an Spot Instance, expressed as a percentage above the least expensive current generation M, C, or R instance type with your specified attributes. When Amazon EC2 selects instance types with your attributes, it excludes instance types priced above your threshold.
  ///
  /// The parameter accepts an integer, which Amazon EC2 interprets as a percentage.
  ///
  /// To turn off price protection, specify a high value, such as `999999`.
  ///
  /// This parameter is not supported for [GetSpotPlacementScores](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html) and [GetInstanceTypesFromInstanceRequirements](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html).
  ///
  /// If you set `TargetCapacityUnitType` to `vcpu` or `memory-mib`, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
  ///
  /// Default: `100`
  int get spotMaxPricePercentageOverLowestPrice;

  /// The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage above the least expensive current generation M, C, or R instance type with your specified attributes. When Amazon EC2 selects instance types with your attributes, it excludes instance types priced above your threshold.
  ///
  /// The parameter accepts an integer, which Amazon EC2 interprets as a percentage.
  ///
  /// To turn off price protection, specify a high value, such as `999999`.
  ///
  /// This parameter is not supported for [GetSpotPlacementScores](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html) and [GetInstanceTypesFromInstanceRequirements](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html).
  ///
  /// If you set `TargetCapacityUnitType` to `vcpu` or `memory-mib`, the price protection threshold is applied based on the per-vCPU or per-memory price instead of the per-instance price.
  ///
  /// Default: `20`
  int get onDemandMaxPricePercentageOverLowestPrice;

  /// Indicates whether bare metal instance types must be included, excluded, or required.
  ///
  /// *   To include bare metal instance types, specify `included`.
  ///
  /// *   To require only bare metal instance types, specify `required`.
  ///
  /// *   To exclude bare metal instance types, specify `excluded`.
  ///
  ///
  /// Default: `excluded`
  _i7.BareMetal? get bareMetal;

  /// Indicates whether burstable performance T instance types are included, excluded, or required. For more information, see [Burstable performance instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html).
  ///
  /// *   To include burstable performance instance types, specify `included`.
  ///
  /// *   To require only burstable performance instance types, specify `required`.
  ///
  /// *   To exclude burstable performance instance types, specify `excluded`.
  ///
  ///
  /// Default: `excluded`
  _i8.BurstablePerformance? get burstablePerformance;

  /// Indicates whether instance types must support hibernation for On-Demand Instances.
  ///
  /// This parameter is not supported for [GetSpotPlacementScores](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html).
  ///
  /// Default: `false`
  bool get requireHibernateSupport;

  /// The minimum and maximum number of network interfaces.
  ///
  /// Default: No minimum or maximum limits
  _i9.NetworkInterfaceCountRequest? get networkInterfaceCount;

  /// Indicates whether instance types with instance store volumes are included, excluded, or required. For more information, [Amazon EC2 instance store](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html) in the _Amazon EC2 User Guide_.
  ///
  /// *   To include instance types with instance store volumes, specify `included`.
  ///
  /// *   To require only instance types with instance store volumes, specify `required`.
  ///
  /// *   To exclude instance types with instance store volumes, specify `excluded`.
  ///
  ///
  /// Default: `included`
  _i10.LocalStorage? get localStorage;

  /// The type of local storage that is required.
  ///
  /// *   For instance types with hard disk drive (HDD) storage, specify `hdd`.
  ///
  /// *   For instance types with solid state drive (SSD) storage, specify `ssd`.
  ///
  ///
  /// Default: `hdd` and `ssd`
  _i19.BuiltList<_i11.LocalStorageType>? get localStorageTypes;

  /// The minimum and maximum amount of total local storage, in GB.
  ///
  /// Default: No minimum or maximum limits
  _i12.TotalLocalStorageGbRequest? get totalLocalStorageGb;

  /// The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps. For more information, see [Amazon EBS–optimized instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: No minimum or maximum limits
  _i13.BaselineEbsBandwidthMbpsRequest? get baselineEbsBandwidthMbps;

  /// The accelerator types that must be on the instance type.
  ///
  /// *   To include instance types with GPU hardware, specify `gpu`.
  ///
  /// *   To include instance types with FPGA hardware, specify `fpga`.
  ///
  /// *   To include instance types with inference hardware, specify `inference`.
  ///
  ///
  /// Default: Any accelerator type
  _i19.BuiltList<_i14.AcceleratorType>? get acceleratorTypes;

  /// The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon Web Services Inferentia chips) on an instance.
  ///
  /// To exclude accelerator-enabled instance types, set `Max` to `0`.
  ///
  /// Default: No minimum or maximum limits
  _i15.AcceleratorCountRequest? get acceleratorCount;

  /// Indicates whether instance types must have accelerators by specific manufacturers.
  ///
  /// *   For instance types with NVIDIA devices, specify `nvidia`.
  ///
  /// *   For instance types with AMD devices, specify `amd`.
  ///
  /// *   For instance types with Amazon Web Services devices, specify `amazon-web-services`.
  ///
  /// *   For instance types with Xilinx devices, specify `xilinx`.
  ///
  ///
  /// Default: Any manufacturer
  _i19.BuiltList<_i16.AcceleratorManufacturer>? get acceleratorManufacturers;

  /// The accelerators that must be on the instance type.
  ///
  /// *   For instance types with NVIDIA A100 GPUs, specify `a100`.
  ///
  /// *   For instance types with NVIDIA V100 GPUs, specify `v100`.
  ///
  /// *   For instance types with NVIDIA K80 GPUs, specify `k80`.
  ///
  /// *   For instance types with NVIDIA T4 GPUs, specify `t4`.
  ///
  /// *   For instance types with NVIDIA M60 GPUs, specify `m60`.
  ///
  /// *   For instance types with AMD Radeon Pro V520 GPUs, specify `radeon-pro-v520`.
  ///
  /// *   For instance types with Xilinx VU9P FPGAs, specify `vu9p`.
  ///
  /// *   For instance types with Amazon Web Services Inferentia chips, specify `inferentia`.
  ///
  /// *   For instance types with NVIDIA GRID K520 GPUs, specify `k520`.
  ///
  ///
  /// Default: Any accelerator
  _i19.BuiltList<_i17.AcceleratorName>? get acceleratorNames;

  /// The minimum and maximum amount of total accelerator memory, in MiB.
  ///
  /// Default: No minimum or maximum limits
  _i18.AcceleratorTotalMemoryMiBRequest? get acceleratorTotalMemoryMib;
  @override
  List<Object?> get props => [
        vCpuCount,
        memoryMib,
        cpuManufacturers,
        memoryGiBPerVCpu,
        excludedInstanceTypes,
        instanceGenerations,
        spotMaxPricePercentageOverLowestPrice,
        onDemandMaxPricePercentageOverLowestPrice,
        bareMetal,
        burstablePerformance,
        requireHibernateSupport,
        networkInterfaceCount,
        localStorage,
        localStorageTypes,
        totalLocalStorageGb,
        baselineEbsBandwidthMbps,
        acceleratorTypes,
        acceleratorCount,
        acceleratorManufacturers,
        acceleratorNames,
        acceleratorTotalMemoryMib,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceRequirementsRequest');
    helper.add(
      'vCpuCount',
      vCpuCount,
    );
    helper.add(
      'memoryMib',
      memoryMib,
    );
    helper.add(
      'cpuManufacturers',
      cpuManufacturers,
    );
    helper.add(
      'memoryGiBPerVCpu',
      memoryGiBPerVCpu,
    );
    helper.add(
      'excludedInstanceTypes',
      excludedInstanceTypes,
    );
    helper.add(
      'instanceGenerations',
      instanceGenerations,
    );
    helper.add(
      'spotMaxPricePercentageOverLowestPrice',
      spotMaxPricePercentageOverLowestPrice,
    );
    helper.add(
      'onDemandMaxPricePercentageOverLowestPrice',
      onDemandMaxPricePercentageOverLowestPrice,
    );
    helper.add(
      'bareMetal',
      bareMetal,
    );
    helper.add(
      'burstablePerformance',
      burstablePerformance,
    );
    helper.add(
      'requireHibernateSupport',
      requireHibernateSupport,
    );
    helper.add(
      'networkInterfaceCount',
      networkInterfaceCount,
    );
    helper.add(
      'localStorage',
      localStorage,
    );
    helper.add(
      'localStorageTypes',
      localStorageTypes,
    );
    helper.add(
      'totalLocalStorageGb',
      totalLocalStorageGb,
    );
    helper.add(
      'baselineEbsBandwidthMbps',
      baselineEbsBandwidthMbps,
    );
    helper.add(
      'acceleratorTypes',
      acceleratorTypes,
    );
    helper.add(
      'acceleratorCount',
      acceleratorCount,
    );
    helper.add(
      'acceleratorManufacturers',
      acceleratorManufacturers,
    );
    helper.add(
      'acceleratorNames',
      acceleratorNames,
    );
    helper.add(
      'acceleratorTotalMemoryMib',
      acceleratorTotalMemoryMib,
    );
    return helper.toString();
  }
}

class InstanceRequirementsRequestEc2QuerySerializer
    extends _i20.StructuredSmithySerializer<InstanceRequirementsRequest> {
  const InstanceRequirementsRequestEc2QuerySerializer()
      : super('InstanceRequirementsRequest');

  @override
  Iterable<Type> get types => const [
        InstanceRequirementsRequest,
        _$InstanceRequirementsRequest,
      ];
  @override
  Iterable<_i20.ShapeId> get supportedProtocols => const [
        _i20.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceRequirementsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceRequirementsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'VCpuCount':
          result.vCpuCount.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.VCpuCountRangeRequest),
          ) as _i2.VCpuCountRangeRequest));
          break;
        case 'MemoryMiB':
          result.memoryMib.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.MemoryMiBRequest),
          ) as _i3.MemoryMiBRequest));
          break;
        case 'CpuManufacturer':
          if (value != null) {
            result.cpuManufacturers.replace((const _i20.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i20.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i19.BuiltList,
                [FullType(_i4.CpuManufacturer)],
              ),
            ) as _i19.BuiltList<_i4.CpuManufacturer>));
          }
          break;
        case 'MemoryGiBPerVCpu':
          if (value != null) {
            result.memoryGiBPerVCpu.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.MemoryGiBPerVCpuRequest),
            ) as _i5.MemoryGiBPerVCpuRequest));
          }
          break;
        case 'ExcludedInstanceType':
          if (value != null) {
            result.excludedInstanceTypes
                .replace((const _i20.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i20.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i19.BuiltList,
                [FullType(String)],
              ),
            ) as _i19.BuiltList<String>));
          }
          break;
        case 'InstanceGeneration':
          if (value != null) {
            result.instanceGenerations
                .replace((const _i20.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i20.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i19.BuiltList,
                [FullType(_i6.InstanceGeneration)],
              ),
            ) as _i19.BuiltList<_i6.InstanceGeneration>));
          }
          break;
        case 'SpotMaxPricePercentageOverLowestPrice':
          result.spotMaxPricePercentageOverLowestPrice =
              (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'OnDemandMaxPricePercentageOverLowestPrice':
          result.onDemandMaxPricePercentageOverLowestPrice =
              (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'BareMetal':
          if (value != null) {
            result.bareMetal = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.BareMetal),
            ) as _i7.BareMetal);
          }
          break;
        case 'BurstablePerformance':
          if (value != null) {
            result.burstablePerformance = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.BurstablePerformance),
            ) as _i8.BurstablePerformance);
          }
          break;
        case 'RequireHibernateSupport':
          result.requireHibernateSupport = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'NetworkInterfaceCount':
          if (value != null) {
            result.networkInterfaceCount.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.NetworkInterfaceCountRequest),
            ) as _i9.NetworkInterfaceCountRequest));
          }
          break;
        case 'LocalStorage':
          if (value != null) {
            result.localStorage = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i10.LocalStorage),
            ) as _i10.LocalStorage);
          }
          break;
        case 'LocalStorageType':
          if (value != null) {
            result.localStorageTypes.replace((const _i20.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i20.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i19.BuiltList,
                [FullType(_i11.LocalStorageType)],
              ),
            ) as _i19.BuiltList<_i11.LocalStorageType>));
          }
          break;
        case 'TotalLocalStorageGB':
          if (value != null) {
            result.totalLocalStorageGb.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i12.TotalLocalStorageGbRequest),
            ) as _i12.TotalLocalStorageGbRequest));
          }
          break;
        case 'BaselineEbsBandwidthMbps':
          if (value != null) {
            result.baselineEbsBandwidthMbps.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i13.BaselineEbsBandwidthMbpsRequest),
            ) as _i13.BaselineEbsBandwidthMbpsRequest));
          }
          break;
        case 'AcceleratorType':
          if (value != null) {
            result.acceleratorTypes.replace((const _i20.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i20.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i19.BuiltList,
                [FullType(_i14.AcceleratorType)],
              ),
            ) as _i19.BuiltList<_i14.AcceleratorType>));
          }
          break;
        case 'AcceleratorCount':
          if (value != null) {
            result.acceleratorCount.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i15.AcceleratorCountRequest),
            ) as _i15.AcceleratorCountRequest));
          }
          break;
        case 'AcceleratorManufacturer':
          if (value != null) {
            result.acceleratorManufacturers
                .replace((const _i20.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i20.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i19.BuiltList,
                [FullType(_i16.AcceleratorManufacturer)],
              ),
            ) as _i19.BuiltList<_i16.AcceleratorManufacturer>));
          }
          break;
        case 'AcceleratorName':
          if (value != null) {
            result.acceleratorNames.replace((const _i20.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i20.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i19.BuiltList,
                [FullType(_i17.AcceleratorName)],
              ),
            ) as _i19.BuiltList<_i17.AcceleratorName>));
          }
          break;
        case 'AcceleratorTotalMemoryMiB':
          if (value != null) {
            result.acceleratorTotalMemoryMib.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i18.AcceleratorTotalMemoryMiBRequest),
            ) as _i18.AcceleratorTotalMemoryMiBRequest));
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
    final payload = (object as InstanceRequirementsRequest);
    final result = <Object?>[
      const _i20.XmlElementName(
        'InstanceRequirementsRequestResponse',
        _i20.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i20.XmlElementName('VCpuCount'))
      ..add(serializers.serialize(
        payload.vCpuCount,
        specifiedType: const FullType(_i2.VCpuCountRangeRequest),
      ));
    result
      ..add(const _i20.XmlElementName('MemoryMiB'))
      ..add(serializers.serialize(
        payload.memoryMib,
        specifiedType: const FullType(_i3.MemoryMiBRequest),
      ));
    if (payload.cpuManufacturers != null) {
      result
        ..add(const _i20.XmlElementName('CpuManufacturer'))
        ..add(const _i20.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i20.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.cpuManufacturers!,
          specifiedType: const FullType.nullable(
            _i19.BuiltList,
            [FullType(_i4.CpuManufacturer)],
          ),
        ));
    }
    if (payload.memoryGiBPerVCpu != null) {
      result
        ..add(const _i20.XmlElementName('MemoryGiBPerVCpu'))
        ..add(serializers.serialize(
          payload.memoryGiBPerVCpu!,
          specifiedType: const FullType(_i5.MemoryGiBPerVCpuRequest),
        ));
    }
    if (payload.excludedInstanceTypes != null) {
      result
        ..add(const _i20.XmlElementName('ExcludedInstanceType'))
        ..add(const _i20.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i20.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.excludedInstanceTypes!,
          specifiedType: const FullType.nullable(
            _i19.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.instanceGenerations != null) {
      result
        ..add(const _i20.XmlElementName('InstanceGeneration'))
        ..add(const _i20.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i20.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceGenerations!,
          specifiedType: const FullType.nullable(
            _i19.BuiltList,
            [FullType(_i6.InstanceGeneration)],
          ),
        ));
    }
    result
      ..add(const _i20.XmlElementName('SpotMaxPricePercentageOverLowestPrice'))
      ..add(serializers.serialize(
        payload.spotMaxPricePercentageOverLowestPrice,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i20.XmlElementName(
          'OnDemandMaxPricePercentageOverLowestPrice'))
      ..add(serializers.serialize(
        payload.onDemandMaxPricePercentageOverLowestPrice,
        specifiedType: const FullType(int),
      ));
    if (payload.bareMetal != null) {
      result
        ..add(const _i20.XmlElementName('BareMetal'))
        ..add(serializers.serialize(
          payload.bareMetal!,
          specifiedType: const FullType.nullable(_i7.BareMetal),
        ));
    }
    if (payload.burstablePerformance != null) {
      result
        ..add(const _i20.XmlElementName('BurstablePerformance'))
        ..add(serializers.serialize(
          payload.burstablePerformance!,
          specifiedType: const FullType.nullable(_i8.BurstablePerformance),
        ));
    }
    result
      ..add(const _i20.XmlElementName('RequireHibernateSupport'))
      ..add(serializers.serialize(
        payload.requireHibernateSupport,
        specifiedType: const FullType(bool),
      ));
    if (payload.networkInterfaceCount != null) {
      result
        ..add(const _i20.XmlElementName('NetworkInterfaceCount'))
        ..add(serializers.serialize(
          payload.networkInterfaceCount!,
          specifiedType: const FullType(_i9.NetworkInterfaceCountRequest),
        ));
    }
    if (payload.localStorage != null) {
      result
        ..add(const _i20.XmlElementName('LocalStorage'))
        ..add(serializers.serialize(
          payload.localStorage!,
          specifiedType: const FullType.nullable(_i10.LocalStorage),
        ));
    }
    if (payload.localStorageTypes != null) {
      result
        ..add(const _i20.XmlElementName('LocalStorageType'))
        ..add(const _i20.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i20.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localStorageTypes!,
          specifiedType: const FullType.nullable(
            _i19.BuiltList,
            [FullType(_i11.LocalStorageType)],
          ),
        ));
    }
    if (payload.totalLocalStorageGb != null) {
      result
        ..add(const _i20.XmlElementName('TotalLocalStorageGB'))
        ..add(serializers.serialize(
          payload.totalLocalStorageGb!,
          specifiedType: const FullType(_i12.TotalLocalStorageGbRequest),
        ));
    }
    if (payload.baselineEbsBandwidthMbps != null) {
      result
        ..add(const _i20.XmlElementName('BaselineEbsBandwidthMbps'))
        ..add(serializers.serialize(
          payload.baselineEbsBandwidthMbps!,
          specifiedType: const FullType(_i13.BaselineEbsBandwidthMbpsRequest),
        ));
    }
    if (payload.acceleratorTypes != null) {
      result
        ..add(const _i20.XmlElementName('AcceleratorType'))
        ..add(const _i20.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i20.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.acceleratorTypes!,
          specifiedType: const FullType.nullable(
            _i19.BuiltList,
            [FullType(_i14.AcceleratorType)],
          ),
        ));
    }
    if (payload.acceleratorCount != null) {
      result
        ..add(const _i20.XmlElementName('AcceleratorCount'))
        ..add(serializers.serialize(
          payload.acceleratorCount!,
          specifiedType: const FullType(_i15.AcceleratorCountRequest),
        ));
    }
    if (payload.acceleratorManufacturers != null) {
      result
        ..add(const _i20.XmlElementName('AcceleratorManufacturer'))
        ..add(const _i20.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i20.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.acceleratorManufacturers!,
          specifiedType: const FullType.nullable(
            _i19.BuiltList,
            [FullType(_i16.AcceleratorManufacturer)],
          ),
        ));
    }
    if (payload.acceleratorNames != null) {
      result
        ..add(const _i20.XmlElementName('AcceleratorName'))
        ..add(const _i20.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i20.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.acceleratorNames!,
          specifiedType: const FullType.nullable(
            _i19.BuiltList,
            [FullType(_i17.AcceleratorName)],
          ),
        ));
    }
    if (payload.acceleratorTotalMemoryMib != null) {
      result
        ..add(const _i20.XmlElementName('AcceleratorTotalMemoryMiB'))
        ..add(serializers.serialize(
          payload.acceleratorTotalMemoryMib!,
          specifiedType: const FullType(_i18.AcceleratorTotalMemoryMiBRequest),
        ));
    }
    return result;
  }
}
