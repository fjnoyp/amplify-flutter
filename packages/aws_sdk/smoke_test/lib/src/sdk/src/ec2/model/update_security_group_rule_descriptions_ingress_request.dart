// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.update_security_group_rule_descriptions_ingress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_description.dart'
    as _i4;

part 'update_security_group_rule_descriptions_ingress_request.g.dart';

abstract class UpdateSecurityGroupRuleDescriptionsIngressRequest
    with
        _i1.HttpInput<UpdateSecurityGroupRuleDescriptionsIngressRequest>,
        _i2.AWSEquatable<UpdateSecurityGroupRuleDescriptionsIngressRequest>
    implements
        Built<UpdateSecurityGroupRuleDescriptionsIngressRequest,
            UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder> {
  factory UpdateSecurityGroupRuleDescriptionsIngressRequest({
    bool? dryRun,
    String? groupId,
    String? groupName,
    List<_i3.IpPermission>? ipPermissions,
    List<_i4.SecurityGroupRuleDescription>? securityGroupRuleDescriptions,
  }) {
    dryRun ??= false;
    return _$UpdateSecurityGroupRuleDescriptionsIngressRequest._(
      dryRun: dryRun,
      groupId: groupId,
      groupName: groupName,
      ipPermissions:
          ipPermissions == null ? null : _i5.BuiltList(ipPermissions),
      securityGroupRuleDescriptions: securityGroupRuleDescriptions == null
          ? null
          : _i5.BuiltList(securityGroupRuleDescriptions),
    );
  }

  factory UpdateSecurityGroupRuleDescriptionsIngressRequest.build(
      [void Function(UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder)
          updates]) = _$UpdateSecurityGroupRuleDescriptionsIngressRequest;

  const UpdateSecurityGroupRuleDescriptionsIngressRequest._();

  factory UpdateSecurityGroupRuleDescriptionsIngressRequest.fromRequest(
    UpdateSecurityGroupRuleDescriptionsIngressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UpdateSecurityGroupRuleDescriptionsIngressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupId;

  /// \[EC2-Classic, default VPC\] The name of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupName;

  /// The IP permissions for the security group rule. You must specify either IP permissions or a description.
  _i5.BuiltList<_i3.IpPermission>? get ipPermissions;

  /// \[VPC only\] The description for the ingress security group rules. You must specify either a description or IP permissions.
  _i5.BuiltList<_i4.SecurityGroupRuleDescription>?
      get securityGroupRuleDescriptions;
  @override
  UpdateSecurityGroupRuleDescriptionsIngressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupId,
        groupName,
        ipPermissions,
        securityGroupRuleDescriptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UpdateSecurityGroupRuleDescriptionsIngressRequest');
    helper.add(
      'dryRun',
      dryRun,
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
      'ipPermissions',
      ipPermissions,
    );
    helper.add(
      'securityGroupRuleDescriptions',
      securityGroupRuleDescriptions,
    );
    return helper.toString();
  }
}

class UpdateSecurityGroupRuleDescriptionsIngressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        UpdateSecurityGroupRuleDescriptionsIngressRequest> {
  const UpdateSecurityGroupRuleDescriptionsIngressRequestEc2QuerySerializer()
      : super('UpdateSecurityGroupRuleDescriptionsIngressRequest');

  @override
  Iterable<Type> get types => const [
        UpdateSecurityGroupRuleDescriptionsIngressRequest,
        _$UpdateSecurityGroupRuleDescriptionsIngressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UpdateSecurityGroupRuleDescriptionsIngressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSecurityGroupRuleDescriptionsIngressRequestBuilder();
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
        case 'GroupId':
          if (value != null) {
            result.groupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GroupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IpPermissions':
          if (value != null) {
            result.ipPermissions.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.IpPermission)],
              ),
            ) as _i5.BuiltList<_i3.IpPermission>));
          }
          break;
        case 'SecurityGroupRuleDescription':
          if (value != null) {
            result.securityGroupRuleDescriptions
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.SecurityGroupRuleDescription)],
              ),
            ) as _i5.BuiltList<_i4.SecurityGroupRuleDescription>));
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
    final payload =
        (object as UpdateSecurityGroupRuleDescriptionsIngressRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'UpdateSecurityGroupRuleDescriptionsIngressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.groupId != null) {
      result
        ..add(const _i1.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i1.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipPermissions != null) {
      result
        ..add(const _i1.XmlElementName('IpPermissions'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipPermissions!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.IpPermission)],
          ),
        ));
    }
    if (payload.securityGroupRuleDescriptions != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroupRuleDescription'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupRuleDescriptions!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.SecurityGroupRuleDescription)],
          ),
        ));
    }
    return result;
  }
}
