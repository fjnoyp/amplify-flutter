// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.security_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'security_group.g.dart';

/// Describes a security group.
abstract class SecurityGroup
    with _i1.AWSEquatable<SecurityGroup>
    implements Built<SecurityGroup, SecurityGroupBuilder> {
  /// Describes a security group.
  factory SecurityGroup({
    String? description,
    String? groupName,
    List<_i2.IpPermission>? ipPermissions,
    String? ownerId,
    String? groupId,
    List<_i2.IpPermission>? ipPermissionsEgress,
    List<_i3.Tag>? tags,
    String? vpcId,
  }) {
    return _$SecurityGroup._(
      description: description,
      groupName: groupName,
      ipPermissions:
          ipPermissions == null ? null : _i4.BuiltList(ipPermissions),
      ownerId: ownerId,
      groupId: groupId,
      ipPermissionsEgress: ipPermissionsEgress == null
          ? null
          : _i4.BuiltList(ipPermissionsEgress),
      tags: tags == null ? null : _i4.BuiltList(tags),
      vpcId: vpcId,
    );
  }

  /// Describes a security group.
  factory SecurityGroup.build([void Function(SecurityGroupBuilder) updates]) =
      _$SecurityGroup;

  const SecurityGroup._();

  static const List<_i5.SmithySerializer> serializers = [
    SecurityGroupEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupBuilder b) {}

  /// A description of the security group.
  String? get description;

  /// The name of the security group.
  String? get groupName;

  /// The inbound rules associated with the security group.
  _i4.BuiltList<_i2.IpPermission>? get ipPermissions;

  /// The Amazon Web Services account ID of the owner of the security group.
  String? get ownerId;

  /// The ID of the security group.
  String? get groupId;

  /// \[VPC only\] The outbound rules associated with the security group.
  _i4.BuiltList<_i2.IpPermission>? get ipPermissionsEgress;

  /// Any tags assigned to the security group.
  _i4.BuiltList<_i3.Tag>? get tags;

  /// \[VPC only\] The ID of the VPC for the security group.
  String? get vpcId;
  @override
  List<Object?> get props => [
        description,
        groupName,
        ipPermissions,
        ownerId,
        groupId,
        ipPermissionsEgress,
        tags,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroup');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'ipPermissions',
      ipPermissions,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'ipPermissionsEgress',
      ipPermissionsEgress,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class SecurityGroupEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<SecurityGroup> {
  const SecurityGroupEc2QuerySerializer() : super('SecurityGroup');

  @override
  Iterable<Type> get types => const [
        SecurityGroup,
        _$SecurityGroup,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupDescription':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipPermissions':
          if (value != null) {
            result.ipPermissions.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.IpPermission)],
              ),
            ) as _i4.BuiltList<_i2.IpPermission>));
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupId':
          if (value != null) {
            result.groupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipPermissionsEgress':
          if (value != null) {
            result.ipPermissionsEgress
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.IpPermission)],
              ),
            ) as _i4.BuiltList<_i2.IpPermission>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as SecurityGroup);
    final result = <Object?>[
      const _i5.XmlElementName(
        'SecurityGroupResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('GroupDescription'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i5.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipPermissions != null) {
      result
        ..add(const _i5.XmlElementName('IpPermissions'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipPermissions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.IpPermission)],
          ),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupId != null) {
      result
        ..add(const _i5.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipPermissionsEgress != null) {
      result
        ..add(const _i5.XmlElementName('IpPermissionsEgress'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipPermissionsEgress!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.IpPermission)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i5.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
