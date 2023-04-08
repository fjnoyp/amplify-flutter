// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.user_id_group_pair; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'user_id_group_pair.g.dart';

/// Describes a security group and Amazon Web Services account ID pair.
///
/// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
abstract class UserIdGroupPair
    with _i1.AWSEquatable<UserIdGroupPair>
    implements Built<UserIdGroupPair, UserIdGroupPairBuilder> {
  /// Describes a security group and Amazon Web Services account ID pair.
  ///
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory UserIdGroupPair({
    String? description,
    String? groupId,
    String? groupName,
    String? peeringStatus,
    String? userId,
    String? vpcId,
    String? vpcPeeringConnectionId,
  }) {
    return _$UserIdGroupPair._(
      description: description,
      groupId: groupId,
      groupName: groupName,
      peeringStatus: peeringStatus,
      userId: userId,
      vpcId: vpcId,
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  /// Describes a security group and Amazon Web Services account ID pair.
  ///
  /// We are retiring EC2-Classic. We recommend that you migrate from EC2-Classic to a VPC. For more information, see [Migrate from EC2-Classic to a VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html) in the _Amazon Elastic Compute Cloud User Guide_.
  factory UserIdGroupPair.build(
      [void Function(UserIdGroupPairBuilder) updates]) = _$UserIdGroupPair;

  const UserIdGroupPair._();

  static const List<_i2.SmithySerializer> serializers = [
    UserIdGroupPairEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserIdGroupPairBuilder b) {}

  /// A description for the security group rule that references this user ID group pair.
  ///
  /// Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=;{}!$*
  String? get description;

  /// The ID of the security group.
  String? get groupId;

  /// The name of the security group. In a request, use this parameter for a security group in EC2-Classic or a default VPC only. For a security group in a nondefault VPC, use the security group ID.
  ///
  /// For a referenced security group in another VPC, this value is not returned if the referenced security group is deleted.
  String? get groupName;

  /// The status of a VPC peering connection, if applicable.
  String? get peeringStatus;

  /// The ID of an Amazon Web Services account.
  ///
  /// For a referenced security group in another VPC, the account ID of the referenced security group is returned in the response. If the referenced security group is deleted, this value is not returned.
  ///
  /// \[EC2-Classic\] Required when adding or removing rules that reference a security group in another Amazon Web Services account.
  String? get userId;

  /// The ID of the VPC for the referenced security group, if applicable.
  String? get vpcId;

  /// The ID of the VPC peering connection, if applicable.
  String? get vpcPeeringConnectionId;
  @override
  List<Object?> get props => [
        description,
        groupId,
        groupName,
        peeringStatus,
        userId,
        vpcId,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserIdGroupPair');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'peeringStatus',
      peeringStatus,
    );
    helper.add(
      'userId',
      userId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'vpcPeeringConnectionId',
      vpcPeeringConnectionId,
    );
    return helper.toString();
  }
}

class UserIdGroupPairEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<UserIdGroupPair> {
  const UserIdGroupPairEc2QuerySerializer() : super('UserIdGroupPair');

  @override
  Iterable<Type> get types => const [
        UserIdGroupPair,
        _$UserIdGroupPair,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UserIdGroupPair deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserIdGroupPairBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'peeringStatus':
          if (value != null) {
            result.peeringStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'userId':
          if (value != null) {
            result.userId = (serializers.deserialize(
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
        case 'vpcPeeringConnectionId':
          if (value != null) {
            result.vpcPeeringConnectionId = (serializers.deserialize(
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
    final payload = (object as UserIdGroupPair);
    final result = <Object?>[
      const _i2.XmlElementName(
        'UserIdGroupPairResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupId != null) {
      result
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.peeringStatus != null) {
      result
        ..add(const _i2.XmlElementName('PeeringStatus'))
        ..add(serializers.serialize(
          payload.peeringStatus!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userId != null) {
      result
        ..add(const _i2.XmlElementName('UserId'))
        ..add(serializers.serialize(
          payload.userId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i2.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcPeeringConnectionId != null) {
      result
        ..add(const _i2.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          payload.vpcPeeringConnectionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
