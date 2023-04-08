// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/blob_attribute_value.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_attribute_name.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping_specification.dart'
    as _i5;

part 'modify_instance_attribute_request.g.dart';

abstract class ModifyInstanceAttributeRequest
    with
        _i1.HttpInput<ModifyInstanceAttributeRequest>,
        _i2.AWSEquatable<ModifyInstanceAttributeRequest>
    implements
        Built<ModifyInstanceAttributeRequest,
            ModifyInstanceAttributeRequestBuilder> {
  factory ModifyInstanceAttributeRequest({
    _i3.AttributeBooleanValue? sourceDestCheck,
    _i4.InstanceAttributeName? attribute,
    List<_i5.InstanceBlockDeviceMappingSpecification>? blockDeviceMappings,
    _i3.AttributeBooleanValue? disableApiTermination,
    bool? dryRun,
    _i3.AttributeBooleanValue? ebsOptimized,
    _i3.AttributeBooleanValue? enaSupport,
    List<String>? groups,
    required String instanceId,
    _i6.AttributeValue? instanceInitiatedShutdownBehavior,
    _i6.AttributeValue? instanceType,
    _i6.AttributeValue? kernel,
    _i6.AttributeValue? ramdisk,
    _i6.AttributeValue? sriovNetSupport,
    _i7.BlobAttributeValue? userData,
    String? value,
    _i3.AttributeBooleanValue? disableApiStop,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceAttributeRequest._(
      sourceDestCheck: sourceDestCheck,
      attribute: attribute,
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i8.BuiltList(blockDeviceMappings),
      disableApiTermination: disableApiTermination,
      dryRun: dryRun,
      ebsOptimized: ebsOptimized,
      enaSupport: enaSupport,
      groups: groups == null ? null : _i8.BuiltList(groups),
      instanceId: instanceId,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      instanceType: instanceType,
      kernel: kernel,
      ramdisk: ramdisk,
      sriovNetSupport: sriovNetSupport,
      userData: userData,
      value: value,
      disableApiStop: disableApiStop,
    );
  }

  factory ModifyInstanceAttributeRequest.build(
          [void Function(ModifyInstanceAttributeRequestBuilder) updates]) =
      _$ModifyInstanceAttributeRequest;

  const ModifyInstanceAttributeRequest._();

  factory ModifyInstanceAttributeRequest.fromRequest(
    ModifyInstanceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyInstanceAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// Enable or disable source/destination checks, which ensure that the instance is either the source or the destination of any traffic that it receives. If the value is `true`, source/destination checks are enabled; otherwise, they are disabled. The default value is `true`. You must disable source/destination checks if the instance runs services such as network address translation, routing, or firewalls.
  _i3.AttributeBooleanValue? get sourceDestCheck;

  /// The name of the attribute to modify.
  ///
  /// You can modify the following attributes only: `disableApiTermination` | `instanceType` | `kernel` | `ramdisk` | `instanceInitiatedShutdownBehavior` | `blockDeviceMapping` | `userData` | `sourceDestCheck` | `groupSet` | `ebsOptimized` | `sriovNetSupport` | `enaSupport` | `nvmeSupport` | `disableApiStop` | `enclaveOptions`
  _i4.InstanceAttributeName? get attribute;

  /// Modifies the `DeleteOnTermination` attribute for volumes that are currently attached. The volume must be owned by the caller. If no value is specified for `DeleteOnTermination`, the default is `true` and the volume is deleted when the instance is terminated.
  ///
  /// To add instance store volumes to an Amazon EBS-backed instance, you must add them when you launch the instance. For more information, see [Update the block device mapping when launching an instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM) in the _Amazon EC2 User Guide_.
  _i8.BuiltList<_i5.InstanceBlockDeviceMappingSpecification>?
      get blockDeviceMappings;

  /// If the value is `true`, you can't terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use this parameter for Spot Instances.
  _i3.AttributeBooleanValue? get disableApiTermination;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specifies whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
  _i3.AttributeBooleanValue? get ebsOptimized;

  /// Set to `true` to enable enhanced networking with ENA for the instance.
  ///
  /// This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
  _i3.AttributeBooleanValue? get enaSupport;

  /// \[EC2-VPC\] Replaces the security groups of the instance with the specified security groups. You must specify at least one security group, even if it's just the default security group for the VPC. You must specify the security group ID, not the security group name.
  _i8.BuiltList<String>? get groups;

  /// The ID of the instance.
  String get instanceId;

  /// Specifies whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  _i6.AttributeValue? get instanceInitiatedShutdownBehavior;

  /// Changes the instance type to the specified value. For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_. If the instance type is not valid, the error returned is `InvalidInstanceAttributeValue`.
  _i6.AttributeValue? get instanceType;

  /// Changes the instance's kernel to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).
  _i6.AttributeValue? get kernel;

  /// Changes the instance's RAM disk to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).
  _i6.AttributeValue? get ramdisk;

  /// Set to `simple` to enable enhanced networking with the Intel 82599 Virtual Function interface for the instance.
  ///
  /// There is no way to disable enhanced networking with the Intel 82599 Virtual Function interface at this time.
  ///
  /// This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
  _i6.AttributeValue? get sriovNetSupport;

  /// Changes the instance's user data to the specified value. If you are using an Amazon Web Services SDK or command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.
  _i7.BlobAttributeValue? get userData;

  /// A new value for the attribute. Use only with the `kernel`, `ramdisk`, `userData`, `disableApiTermination`, or `instanceInitiatedShutdownBehavior` attribute.
  String? get value;

  /// Indicates whether an instance is enabled for stop protection. For more information, see [Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  _i3.AttributeBooleanValue? get disableApiStop;
  @override
  ModifyInstanceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        sourceDestCheck,
        attribute,
        blockDeviceMappings,
        disableApiTermination,
        dryRun,
        ebsOptimized,
        enaSupport,
        groups,
        instanceId,
        instanceInitiatedShutdownBehavior,
        instanceType,
        kernel,
        ramdisk,
        sriovNetSupport,
        userData,
        value,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceAttributeRequest');
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
    );
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
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
      'enaSupport',
      enaSupport,
    );
    helper.add(
      'groups',
      groups,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'instanceInitiatedShutdownBehavior',
      instanceInitiatedShutdownBehavior,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'kernel',
      kernel,
    );
    helper.add(
      'ramdisk',
      ramdisk,
    );
    helper.add(
      'sriovNetSupport',
      sriovNetSupport,
    );
    helper.add(
      'userData',
      userData,
    );
    helper.add(
      'value',
      value,
    );
    helper.add(
      'disableApiStop',
      disableApiStop,
    );
    return helper.toString();
  }
}

class ModifyInstanceAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyInstanceAttributeRequest> {
  const ModifyInstanceAttributeRequestEc2QuerySerializer()
      : super('ModifyInstanceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceAttributeRequest,
        _$ModifyInstanceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SourceDestCheck':
          if (value != null) {
            result.sourceDestCheck.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'attribute':
          if (value != null) {
            result.attribute = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.InstanceAttributeName),
            ) as _i4.InstanceAttributeName);
          }
          break;
        case 'blockDeviceMapping':
          if (value != null) {
            result.blockDeviceMappings
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i5.InstanceBlockDeviceMappingSpecification)],
              ),
            ) as _i8.BuiltList<_i5.InstanceBlockDeviceMappingSpecification>));
          }
          break;
        case 'disableApiTermination':
          if (value != null) {
            result.disableApiTermination.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ebsOptimized':
          if (value != null) {
            result.ebsOptimized.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'enaSupport':
          if (value != null) {
            result.enaSupport.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'GroupId':
          if (value != null) {
            result.groups.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'groupId',
              indexer: _i1.XmlIndexer.ec2QueryList,
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
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'instanceInitiatedShutdownBehavior':
          if (value != null) {
            result.instanceInitiatedShutdownBehavior
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'kernel':
          if (value != null) {
            result.kernel.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'ramdisk':
          if (value != null) {
            result.ramdisk.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'sriovNetSupport':
          if (value != null) {
            result.sriovNetSupport.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'userData':
          if (value != null) {
            result.userData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.BlobAttributeValue),
            ) as _i7.BlobAttributeValue));
          }
          break;
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DisableApiStop':
          if (value != null) {
            result.disableApiStop.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
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
    final payload = (object as ModifyInstanceAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.sourceDestCheck != null) {
      result
        ..add(const _i1.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          payload.sourceDestCheck!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.attribute != null) {
      result
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          payload.attribute!,
          specifiedType: const FullType.nullable(_i4.InstanceAttributeName),
        ));
    }
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i1.XmlElementName('BlockDeviceMapping'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i5.InstanceBlockDeviceMappingSpecification)],
          ),
        ));
    }
    if (payload.disableApiTermination != null) {
      result
        ..add(const _i1.XmlElementName('DisableApiTermination'))
        ..add(serializers.serialize(
          payload.disableApiTermination!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.ebsOptimized != null) {
      result
        ..add(const _i1.XmlElementName('EbsOptimized'))
        ..add(serializers.serialize(
          payload.ebsOptimized!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.enaSupport != null) {
      result
        ..add(const _i1.XmlElementName('EnaSupport'))
        ..add(serializers.serialize(
          payload.enaSupport!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.groups != null) {
      result
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'groupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    if (payload.instanceInitiatedShutdownBehavior != null) {
      result
        ..add(const _i1.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          payload.instanceInitiatedShutdownBehavior!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.kernel != null) {
      result
        ..add(const _i1.XmlElementName('Kernel'))
        ..add(serializers.serialize(
          payload.kernel!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.ramdisk != null) {
      result
        ..add(const _i1.XmlElementName('Ramdisk'))
        ..add(serializers.serialize(
          payload.ramdisk!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.sriovNetSupport != null) {
      result
        ..add(const _i1.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          payload.sriovNetSupport!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.userData != null) {
      result
        ..add(const _i1.XmlElementName('UserData'))
        ..add(serializers.serialize(
          payload.userData!,
          specifiedType: const FullType(_i7.BlobAttributeValue),
        ));
    }
    if (payload.value != null) {
      result
        ..add(const _i1.XmlElementName('Value'))
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.disableApiStop != null) {
      result
        ..add(const _i1.XmlElementName('DisableApiStop'))
        ..add(serializers.serialize(
          payload.disableApiStop!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    return result;
  }
}
