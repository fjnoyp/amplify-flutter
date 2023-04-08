// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_types_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i3;

part 'describe_instance_types_request.g.dart';

abstract class DescribeInstanceTypesRequest
    with
        _i1.HttpInput<DescribeInstanceTypesRequest>,
        _i2.AWSEquatable<DescribeInstanceTypesRequest>
    implements
        Built<DescribeInstanceTypesRequest,
            DescribeInstanceTypesRequestBuilder> {
  factory DescribeInstanceTypesRequest({
    bool? dryRun,
    List<_i3.InstanceType>? instanceTypes,
    List<_i4.Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    return _$DescribeInstanceTypesRequest._(
      dryRun: dryRun,
      instanceTypes:
          instanceTypes == null ? null : _i5.BuiltList(instanceTypes),
      filters: filters == null ? null : _i5.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceTypesRequest.build(
          [void Function(DescribeInstanceTypesRequestBuilder) updates]) =
      _$DescribeInstanceTypesRequest;

  const DescribeInstanceTypesRequest._();

  factory DescribeInstanceTypesRequest.fromRequest(
    DescribeInstanceTypesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeInstanceTypesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceTypesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The instance types. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  _i5.BuiltList<_i3.InstanceType>? get instanceTypes;

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `auto-recovery-supported` \- Indicates whether auto recovery is supported (`true` | `false`).
  ///
  /// *   `bare-metal` \- Indicates whether it is a bare metal instance type (`true` | `false`).
  ///
  /// *   `burstable-performance-supported` \- Indicates whether it is a burstable performance instance type (`true` | `false`).
  ///
  /// *   `current-generation` \- Indicates whether this instance type is the latest generation instance type of an instance family (`true` | `false`).
  ///
  /// *   `ebs-info.ebs-optimized-info.baseline-bandwidth-in-mbps` \- The baseline bandwidth performance for an EBS-optimized instance type, in Mbps.
  ///
  /// *   `ebs-info.ebs-optimized-info.baseline-iops` \- The baseline input/output storage operations per second for an EBS-optimized instance type.
  ///
  /// *   `ebs-info.ebs-optimized-info.baseline-throughput-in-mbps` \- The baseline throughput performance for an EBS-optimized instance type, in MB/s.
  ///
  /// *   `ebs-info.ebs-optimized-info.maximum-bandwidth-in-mbps` \- The maximum bandwidth performance for an EBS-optimized instance type, in Mbps.
  ///
  /// *   `ebs-info.ebs-optimized-info.maximum-iops` \- The maximum input/output storage operations per second for an EBS-optimized instance type.
  ///
  /// *   `ebs-info.ebs-optimized-info.maximum-throughput-in-mbps` \- The maximum throughput performance for an EBS-optimized instance type, in MB/s.
  ///
  /// *   `ebs-info.ebs-optimized-support` \- Indicates whether the instance type is EBS-optimized (`supported` | `unsupported` | `default`).
  ///
  /// *   `ebs-info.encryption-support` \- Indicates whether EBS encryption is supported (`supported` | `unsupported`).
  ///
  /// *   `ebs-info.nvme-support` \- Indicates whether non-volatile memory express (NVMe) is supported for EBS volumes (`required` | `supported` | `unsupported`).
  ///
  /// *   `free-tier-eligible` \- Indicates whether the instance type is eligible to use in the free tier (`true` | `false`).
  ///
  /// *   `hibernation-supported` \- Indicates whether On-Demand hibernation is supported (`true` | `false`).
  ///
  /// *   `hypervisor` \- The hypervisor (`nitro` | `xen`).
  ///
  /// *   `instance-storage-info.disk.count` \- The number of local disks.
  ///
  /// *   `instance-storage-info.disk.size-in-gb` \- The storage size of each instance storage disk, in GB.
  ///
  /// *   `instance-storage-info.disk.type` \- The storage technology for the local instance storage disks (`hdd` | `ssd`).
  ///
  /// *   `instance-storage-info.encryption-support` \- Indicates whether data is encrypted at rest (`required` | `supported` | `unsupported`).
  ///
  /// *   `instance-storage-info.nvme-support` \- Indicates whether non-volatile memory express (NVMe) is supported for instance store (`required` | `supported` | `unsupported`).
  ///
  /// *   `instance-storage-info.total-size-in-gb` \- The total amount of storage available from all local instance storage, in GB.
  ///
  /// *   `instance-storage-supported` \- Indicates whether the instance type has local instance storage (`true` | `false`).
  ///
  /// *   `instance-type` \- The instance type (for example `c5.2xlarge` or c5*).
  ///
  /// *   `memory-info.size-in-mib` \- The memory size.
  ///
  /// *   `network-info.efa-info.maximum-efa-interfaces` \- The maximum number of Elastic Fabric Adapters (EFAs) per instance.
  ///
  /// *   `network-info.efa-supported` \- Indicates whether the instance type supports Elastic Fabric Adapter (EFA) (`true` | `false`).
  ///
  /// *   `network-info.ena-support` \- Indicates whether Elastic Network Adapter (ENA) is supported or required (`required` | `supported` | `unsupported`).
  ///
  /// *   `network-info.encryption-in-transit-supported` \- Indicates whether the instance type automatically encrypts in-transit traffic between instances (`true` | `false`).
  ///
  /// *   `network-info.ipv4-addresses-per-interface` \- The maximum number of private IPv4 addresses per network interface.
  ///
  /// *   `network-info.ipv6-addresses-per-interface` \- The maximum number of private IPv6 addresses per network interface.
  ///
  /// *   `network-info.ipv6-supported` \- Indicates whether the instance type supports IPv6 (`true` | `false`).
  ///
  /// *   `network-info.maximum-network-cards` \- The maximum number of network cards per instance.
  ///
  /// *   `network-info.maximum-network-interfaces` \- The maximum number of network interfaces per instance.
  ///
  /// *   `network-info.network-performance` \- The network performance (for example, "25 Gigabit").
  ///
  /// *   `processor-info.supported-architecture` \- The CPU architecture (`arm64` | `i386` | `x86_64`).
  ///
  /// *   `processor-info.sustained-clock-speed-in-ghz` \- The CPU clock speed, in GHz.
  ///
  /// *   `supported-boot-mode` \- The boot mode (`legacy-bios` | `uefi`).
  ///
  /// *   `supported-root-device-type` \- The root device type (`ebs` | `instance-store`).
  ///
  /// *   `supported-usage-class` \- The usage class (`on-demand` | `spot`).
  ///
  /// *   `supported-virtualization-type` \- The virtualization type (`hvm` | `paravirtual`).
  ///
  /// *   `vcpu-info.default-cores` \- The default number of cores for the instance type.
  ///
  /// *   `vcpu-info.default-threads-per-core` \- The default number of threads per core for the instance type.
  ///
  /// *   `vcpu-info.default-vcpus` \- The default number of vCPUs for the instance type.
  ///
  /// *   `vcpu-info.valid-cores` \- The number of cores that can be configured for the instance type.
  ///
  /// *   `vcpu-info.valid-threads-per-core` \- The number of threads per core that can be configured for the instance type. For example, "1" or "1,2".
  _i5.BuiltList<_i4.Filter>? get filters;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the next token value.
  int? get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeInstanceTypesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceTypes,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstanceTypesRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceTypes',
      instanceTypes,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInstanceTypesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeInstanceTypesRequest> {
  const DescribeInstanceTypesRequestEc2QuerySerializer()
      : super('DescribeInstanceTypesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceTypesRequest,
        _$DescribeInstanceTypesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceTypesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceTypesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InstanceType':
          if (value != null) {
            result.instanceTypes.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.InstanceType)],
              ),
            ) as _i5.BuiltList<_i3.InstanceType>));
          }
          break;
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Filter)],
              ),
            ) as _i5.BuiltList<_i4.Filter>));
          }
          break;
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeInstanceTypesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceTypesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.instanceTypes != null) {
      result
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.instanceTypes!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.InstanceType)],
          ),
        ));
    }
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Filter)],
          ),
        ));
    }
    if (payload.maxResults != null) {
      result
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
