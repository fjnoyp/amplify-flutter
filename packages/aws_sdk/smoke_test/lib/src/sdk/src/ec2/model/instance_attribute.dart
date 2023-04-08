// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_attribute; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/enclave_options.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/group_identifier.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_block_device_mapping.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/product_code.dart' as _i7;

part 'instance_attribute.g.dart';

/// Describes an instance attribute.
abstract class InstanceAttribute
    with _i1.AWSEquatable<InstanceAttribute>
    implements Built<InstanceAttribute, InstanceAttributeBuilder> {
  /// Describes an instance attribute.
  factory InstanceAttribute({
    List<_i2.GroupIdentifier>? groups,
    List<_i3.InstanceBlockDeviceMapping>? blockDeviceMappings,
    _i4.AttributeBooleanValue? disableApiTermination,
    _i4.AttributeBooleanValue? enaSupport,
    _i5.EnclaveOptions? enclaveOptions,
    _i4.AttributeBooleanValue? ebsOptimized,
    String? instanceId,
    _i6.AttributeValue? instanceInitiatedShutdownBehavior,
    _i6.AttributeValue? instanceType,
    _i6.AttributeValue? kernelId,
    List<_i7.ProductCode>? productCodes,
    _i6.AttributeValue? ramdiskId,
    _i6.AttributeValue? rootDeviceName,
    _i4.AttributeBooleanValue? sourceDestCheck,
    _i6.AttributeValue? sriovNetSupport,
    _i6.AttributeValue? userData,
    _i4.AttributeBooleanValue? disableApiStop,
  }) {
    return _$InstanceAttribute._(
      groups: groups == null ? null : _i8.BuiltList(groups),
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i8.BuiltList(blockDeviceMappings),
      disableApiTermination: disableApiTermination,
      enaSupport: enaSupport,
      enclaveOptions: enclaveOptions,
      ebsOptimized: ebsOptimized,
      instanceId: instanceId,
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      instanceType: instanceType,
      kernelId: kernelId,
      productCodes: productCodes == null ? null : _i8.BuiltList(productCodes),
      ramdiskId: ramdiskId,
      rootDeviceName: rootDeviceName,
      sourceDestCheck: sourceDestCheck,
      sriovNetSupport: sriovNetSupport,
      userData: userData,
      disableApiStop: disableApiStop,
    );
  }

  /// Describes an instance attribute.
  factory InstanceAttribute.build(
      [void Function(InstanceAttributeBuilder) updates]) = _$InstanceAttribute;

  const InstanceAttribute._();

  /// Constructs a [InstanceAttribute] from a [payload] and [response].
  factory InstanceAttribute.fromResponse(
    InstanceAttribute payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i9.SmithySerializer> serializers = [
    InstanceAttributeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceAttributeBuilder b) {}

  /// The security groups associated with the instance.
  _i8.BuiltList<_i2.GroupIdentifier>? get groups;

  /// The block device mapping of the instance.
  _i8.BuiltList<_i3.InstanceBlockDeviceMapping>? get blockDeviceMappings;

  /// If the value is `true`, you can't terminate the instance through the Amazon EC2 console, CLI, or API; otherwise, you can.
  _i4.AttributeBooleanValue? get disableApiTermination;

  /// Indicates whether enhanced networking with ENA is enabled.
  _i4.AttributeBooleanValue? get enaSupport;

  /// To enable the instance for Amazon Web Services Nitro Enclaves, set this parameter to `true`; otherwise, set it to `false`.
  _i5.EnclaveOptions? get enclaveOptions;

  /// Indicates whether the instance is optimized for Amazon EBS I/O.
  _i4.AttributeBooleanValue? get ebsOptimized;

  /// The ID of the instance.
  String? get instanceId;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  _i6.AttributeValue? get instanceInitiatedShutdownBehavior;

  /// The instance type.
  _i6.AttributeValue? get instanceType;

  /// The kernel ID.
  _i6.AttributeValue? get kernelId;

  /// A list of product codes.
  _i8.BuiltList<_i7.ProductCode>? get productCodes;

  /// The RAM disk ID.
  _i6.AttributeValue? get ramdiskId;

  /// The device name of the root device volume (for example, `/dev/sda1`).
  _i6.AttributeValue? get rootDeviceName;

  /// Enable or disable source/destination checks, which ensure that the instance is either the source or the destination of any traffic that it receives. If the value is `true`, source/destination checks are enabled; otherwise, they are disabled. The default value is `true`. You must disable source/destination checks if the instance runs services such as network address translation, routing, or firewalls.
  _i4.AttributeBooleanValue? get sourceDestCheck;

  /// Indicates whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
  _i6.AttributeValue? get sriovNetSupport;

  /// The user data.
  _i6.AttributeValue? get userData;

  /// To enable the instance for Amazon Web Services Stop Protection, set this parameter to `true`; otherwise, set it to `false`.
  _i4.AttributeBooleanValue? get disableApiStop;
  @override
  List<Object?> get props => [
        groups,
        blockDeviceMappings,
        disableApiTermination,
        enaSupport,
        enclaveOptions,
        ebsOptimized,
        instanceId,
        instanceInitiatedShutdownBehavior,
        instanceType,
        kernelId,
        productCodes,
        ramdiskId,
        rootDeviceName,
        sourceDestCheck,
        sriovNetSupport,
        userData,
        disableApiStop,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceAttribute');
    helper.add(
      'groups',
      groups,
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
      'enaSupport',
      enaSupport,
    );
    helper.add(
      'enclaveOptions',
      enclaveOptions,
    );
    helper.add(
      'ebsOptimized',
      ebsOptimized,
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
      'kernelId',
      kernelId,
    );
    helper.add(
      'productCodes',
      productCodes,
    );
    helper.add(
      'ramdiskId',
      ramdiskId,
    );
    helper.add(
      'rootDeviceName',
      rootDeviceName,
    );
    helper.add(
      'sourceDestCheck',
      sourceDestCheck,
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
      'disableApiStop',
      disableApiStop,
    );
    return helper.toString();
  }
}

class InstanceAttributeEc2QuerySerializer
    extends _i9.StructuredSmithySerializer<InstanceAttribute> {
  const InstanceAttributeEc2QuerySerializer() : super('InstanceAttribute');

  @override
  Iterable<Type> get types => const [
        InstanceAttribute,
        _$InstanceAttribute,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceAttribute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceAttributeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupSet':
          if (value != null) {
            result.groups.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i2.GroupIdentifier)],
              ),
            ) as _i8.BuiltList<_i2.GroupIdentifier>));
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
                [FullType(_i3.InstanceBlockDeviceMapping)],
              ),
            ) as _i8.BuiltList<_i3.InstanceBlockDeviceMapping>));
          }
          break;
        case 'disableApiTermination':
          if (value != null) {
            result.disableApiTermination.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AttributeBooleanValue),
            ) as _i4.AttributeBooleanValue));
          }
          break;
        case 'enaSupport':
          if (value != null) {
            result.enaSupport.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AttributeBooleanValue),
            ) as _i4.AttributeBooleanValue));
          }
          break;
        case 'enclaveOptions':
          if (value != null) {
            result.enclaveOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.EnclaveOptions),
            ) as _i5.EnclaveOptions));
          }
          break;
        case 'ebsOptimized':
          if (value != null) {
            result.ebsOptimized.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AttributeBooleanValue),
            ) as _i4.AttributeBooleanValue));
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
            result.kernelId.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'productCodes':
          if (value != null) {
            result.productCodes.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i7.ProductCode)],
              ),
            ) as _i8.BuiltList<_i7.ProductCode>));
          }
          break;
        case 'ramdisk':
          if (value != null) {
            result.ramdiskId.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'rootDeviceName':
          if (value != null) {
            result.rootDeviceName.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'sourceDestCheck':
          if (value != null) {
            result.sourceDestCheck.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AttributeBooleanValue),
            ) as _i4.AttributeBooleanValue));
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
              specifiedType: const FullType(_i6.AttributeValue),
            ) as _i6.AttributeValue));
          }
          break;
        case 'disableApiStop':
          if (value != null) {
            result.disableApiStop.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AttributeBooleanValue),
            ) as _i4.AttributeBooleanValue));
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
    final payload = (object as InstanceAttribute);
    final result = <Object?>[
      const _i9.XmlElementName(
        'InstanceAttributeResponse',
        _i9.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groups != null) {
      result
        ..add(const _i9.XmlElementName('GroupSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i2.GroupIdentifier)],
          ),
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
            [FullType(_i3.InstanceBlockDeviceMapping)],
          ),
        ));
    }
    if (payload.disableApiTermination != null) {
      result
        ..add(const _i9.XmlElementName('DisableApiTermination'))
        ..add(serializers.serialize(
          payload.disableApiTermination!,
          specifiedType: const FullType(_i4.AttributeBooleanValue),
        ));
    }
    if (payload.enaSupport != null) {
      result
        ..add(const _i9.XmlElementName('EnaSupport'))
        ..add(serializers.serialize(
          payload.enaSupport!,
          specifiedType: const FullType(_i4.AttributeBooleanValue),
        ));
    }
    if (payload.enclaveOptions != null) {
      result
        ..add(const _i9.XmlElementName('EnclaveOptions'))
        ..add(serializers.serialize(
          payload.enclaveOptions!,
          specifiedType: const FullType(_i5.EnclaveOptions),
        ));
    }
    if (payload.ebsOptimized != null) {
      result
        ..add(const _i9.XmlElementName('EbsOptimized'))
        ..add(serializers.serialize(
          payload.ebsOptimized!,
          specifiedType: const FullType(_i4.AttributeBooleanValue),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i9.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceInitiatedShutdownBehavior != null) {
      result
        ..add(const _i9.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          payload.instanceInitiatedShutdownBehavior!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i9.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.kernelId != null) {
      result
        ..add(const _i9.XmlElementName('Kernel'))
        ..add(serializers.serialize(
          payload.kernelId!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.productCodes != null) {
      result
        ..add(const _i9.XmlElementName('ProductCodes'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.productCodes!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i7.ProductCode)],
          ),
        ));
    }
    if (payload.ramdiskId != null) {
      result
        ..add(const _i9.XmlElementName('Ramdisk'))
        ..add(serializers.serialize(
          payload.ramdiskId!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.rootDeviceName != null) {
      result
        ..add(const _i9.XmlElementName('RootDeviceName'))
        ..add(serializers.serialize(
          payload.rootDeviceName!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.sourceDestCheck != null) {
      result
        ..add(const _i9.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          payload.sourceDestCheck!,
          specifiedType: const FullType(_i4.AttributeBooleanValue),
        ));
    }
    if (payload.sriovNetSupport != null) {
      result
        ..add(const _i9.XmlElementName('SriovNetSupport'))
        ..add(serializers.serialize(
          payload.sriovNetSupport!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.userData != null) {
      result
        ..add(const _i9.XmlElementName('UserData'))
        ..add(serializers.serialize(
          payload.userData!,
          specifiedType: const FullType(_i6.AttributeValue),
        ));
    }
    if (payload.disableApiStop != null) {
      result
        ..add(const _i9.XmlElementName('DisableApiStop'))
        ..add(serializers.serialize(
          payload.disableApiStop!,
          specifiedType: const FullType(_i4.AttributeBooleanValue),
        ));
    }
    return result;
  }
}
