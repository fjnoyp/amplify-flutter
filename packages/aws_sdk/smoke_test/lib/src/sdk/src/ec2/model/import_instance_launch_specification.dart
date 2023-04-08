// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_instance_launch_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/architecture_values.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/shutdown_behavior.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/user_data.dart' as _i6;

part 'import_instance_launch_specification.g.dart';

/// Describes the launch specification for VM import.
abstract class ImportInstanceLaunchSpecification
    with
        _i1.AWSEquatable<ImportInstanceLaunchSpecification>
    implements
        Built<ImportInstanceLaunchSpecification,
            ImportInstanceLaunchSpecificationBuilder> {
  /// Describes the launch specification for VM import.
  factory ImportInstanceLaunchSpecification({
    String? additionalInfo,
    _i2.ArchitectureValues? architecture,
    List<String>? groupIds,
    List<String>? groupNames,
    _i3.ShutdownBehavior? instanceInitiatedShutdownBehavior,
    _i4.InstanceType? instanceType,
    bool? monitoring,
    _i5.Placement? placement,
    String? privateIpAddress,
    String? subnetId,
    _i6.UserData? userData,
  }) {
    monitoring ??= false;
    return _$ImportInstanceLaunchSpecification._(
      additionalInfo: additionalInfo,
      architecture: architecture,
      groupIds: groupIds == null ? null : _i7.BuiltList(groupIds),
      groupNames: groupNames == null ? null : _i7.BuiltList(groupNames),
      instanceInitiatedShutdownBehavior: instanceInitiatedShutdownBehavior,
      instanceType: instanceType,
      monitoring: monitoring,
      placement: placement,
      privateIpAddress: privateIpAddress,
      subnetId: subnetId,
      userData: userData,
    );
  }

  /// Describes the launch specification for VM import.
  factory ImportInstanceLaunchSpecification.build(
          [void Function(ImportInstanceLaunchSpecificationBuilder) updates]) =
      _$ImportInstanceLaunchSpecification;

  const ImportInstanceLaunchSpecification._();

  static const List<_i8.SmithySerializer> serializers = [
    ImportInstanceLaunchSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportInstanceLaunchSpecificationBuilder b) {
    b.monitoring = false;
  }

  /// Reserved.
  String? get additionalInfo;

  /// The architecture of the instance.
  _i2.ArchitectureValues? get architecture;

  /// The security group IDs.
  _i7.BuiltList<String>? get groupIds;

  /// The security group names.
  _i7.BuiltList<String>? get groupNames;

  /// Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
  _i3.ShutdownBehavior? get instanceInitiatedShutdownBehavior;

  /// The instance type. For more information about the instance types that you can import, see [Instance Types](https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-instance-types) in the VM Import/Export User Guide.
  _i4.InstanceType? get instanceType;

  /// Indicates whether monitoring is enabled.
  bool get monitoring;

  /// The placement information for the instance.
  _i5.Placement? get placement;

  /// \[EC2-VPC\] An available IP address from the IP address range of the subnet.
  String? get privateIpAddress;

  /// \[EC2-VPC\] The ID of the subnet in which to launch the instance.
  String? get subnetId;

  /// The Base64-encoded user data to make available to the instance.
  _i6.UserData? get userData;
  @override
  List<Object?> get props => [
        additionalInfo,
        architecture,
        groupIds,
        groupNames,
        instanceInitiatedShutdownBehavior,
        instanceType,
        monitoring,
        placement,
        privateIpAddress,
        subnetId,
        userData,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ImportInstanceLaunchSpecification');
    helper.add(
      'additionalInfo',
      additionalInfo,
    );
    helper.add(
      'architecture',
      architecture,
    );
    helper.add(
      'groupIds',
      groupIds,
    );
    helper.add(
      'groupNames',
      groupNames,
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
      'monitoring',
      monitoring,
    );
    helper.add(
      'placement',
      placement,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'userData',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class ImportInstanceLaunchSpecificationEc2QuerySerializer
    extends _i8.StructuredSmithySerializer<ImportInstanceLaunchSpecification> {
  const ImportInstanceLaunchSpecificationEc2QuerySerializer()
      : super('ImportInstanceLaunchSpecification');

  @override
  Iterable<Type> get types => const [
        ImportInstanceLaunchSpecification,
        _$ImportInstanceLaunchSpecification,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceLaunchSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceLaunchSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'additionalInfo':
          if (value != null) {
            result.additionalInfo = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'architecture':
          if (value != null) {
            result.architecture = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ArchitectureValues),
            ) as _i2.ArchitectureValues);
          }
          break;
        case 'GroupId':
          if (value != null) {
            result.groupIds.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'SecurityGroupId',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
          }
          break;
        case 'GroupName':
          if (value != null) {
            result.groupNames.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'SecurityGroup',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
          }
          break;
        case 'instanceInitiatedShutdownBehavior':
          if (value != null) {
            result.instanceInitiatedShutdownBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ShutdownBehavior),
            ) as _i3.ShutdownBehavior);
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
        case 'monitoring':
          result.monitoring = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'placement':
          if (value != null) {
            result.placement.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Placement),
            ) as _i5.Placement));
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
            result.userData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.UserData),
            ) as _i6.UserData));
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
    final payload = (object as ImportInstanceLaunchSpecification);
    final result = <Object?>[
      const _i8.XmlElementName(
        'ImportInstanceLaunchSpecificationResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.additionalInfo != null) {
      result
        ..add(const _i8.XmlElementName('AdditionalInfo'))
        ..add(serializers.serialize(
          payload.additionalInfo!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.architecture != null) {
      result
        ..add(const _i8.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          payload.architecture!,
          specifiedType: const FullType.nullable(_i2.ArchitectureValues),
        ));
    }
    if (payload.groupIds != null) {
      result
        ..add(const _i8.XmlElementName('GroupId'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groupIds!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.groupNames != null) {
      result
        ..add(const _i8.XmlElementName('GroupName'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'SecurityGroup',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groupNames!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.instanceInitiatedShutdownBehavior != null) {
      result
        ..add(const _i8.XmlElementName('InstanceInitiatedShutdownBehavior'))
        ..add(serializers.serialize(
          payload.instanceInitiatedShutdownBehavior!,
          specifiedType: const FullType.nullable(_i3.ShutdownBehavior),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i8.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i4.InstanceType),
        ));
    }
    result
      ..add(const _i8.XmlElementName('Monitoring'))
      ..add(serializers.serialize(
        payload.monitoring,
        specifiedType: const FullType(bool),
      ));
    if (payload.placement != null) {
      result
        ..add(const _i8.XmlElementName('Placement'))
        ..add(serializers.serialize(
          payload.placement!,
          specifiedType: const FullType(_i5.Placement),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i8.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i8.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userData != null) {
      result
        ..add(const _i8.XmlElementName('UserData'))
        ..add(serializers.serialize(
          payload.userData!,
          specifiedType: const FullType(_i6.UserData),
        ));
    }
    return result;
  }
}
