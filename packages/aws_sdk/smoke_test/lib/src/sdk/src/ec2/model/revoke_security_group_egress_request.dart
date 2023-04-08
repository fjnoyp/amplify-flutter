// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.revoke_security_group_egress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i3;

part 'revoke_security_group_egress_request.g.dart';

abstract class RevokeSecurityGroupEgressRequest
    with
        _i1.HttpInput<RevokeSecurityGroupEgressRequest>,
        _i2.AWSEquatable<RevokeSecurityGroupEgressRequest>
    implements
        Built<RevokeSecurityGroupEgressRequest,
            RevokeSecurityGroupEgressRequestBuilder> {
  factory RevokeSecurityGroupEgressRequest({
    bool? dryRun,
    required String groupId,
    List<_i3.IpPermission>? ipPermissions,
    List<String>? securityGroupRuleIds,
    String? cidrIp,
    int? fromPort,
    String? ipProtocol,
    int? toPort,
    String? sourceSecurityGroupName,
    String? sourceSecurityGroupOwnerId,
  }) {
    dryRun ??= false;
    fromPort ??= 0;
    toPort ??= 0;
    return _$RevokeSecurityGroupEgressRequest._(
      dryRun: dryRun,
      groupId: groupId,
      ipPermissions:
          ipPermissions == null ? null : _i4.BuiltList(ipPermissions),
      securityGroupRuleIds: securityGroupRuleIds == null
          ? null
          : _i4.BuiltList(securityGroupRuleIds),
      cidrIp: cidrIp,
      fromPort: fromPort,
      ipProtocol: ipProtocol,
      toPort: toPort,
      sourceSecurityGroupName: sourceSecurityGroupName,
      sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId,
    );
  }

  factory RevokeSecurityGroupEgressRequest.build(
          [void Function(RevokeSecurityGroupEgressRequestBuilder) updates]) =
      _$RevokeSecurityGroupEgressRequest;

  const RevokeSecurityGroupEgressRequest._();

  factory RevokeSecurityGroupEgressRequest.fromRequest(
    RevokeSecurityGroupEgressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RevokeSecurityGroupEgressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RevokeSecurityGroupEgressRequestBuilder b) {
    b.dryRun = false;
    b.fromPort = 0;
    b.toPort = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the security group.
  String get groupId;

  /// The sets of IP permissions. You can't specify a destination security group and a CIDR IP address range in the same set of permissions.
  _i4.BuiltList<_i3.IpPermission>? get ipPermissions;

  /// The IDs of the security group rules.
  _i4.BuiltList<String>? get securityGroupRuleIds;

  /// Not supported. Use a set of IP permissions to specify the CIDR.
  String? get cidrIp;

  /// Not supported. Use a set of IP permissions to specify the port.
  int get fromPort;

  /// Not supported. Use a set of IP permissions to specify the protocol name or number.
  String? get ipProtocol;

  /// Not supported. Use a set of IP permissions to specify the port.
  int get toPort;

  /// Not supported. Use a set of IP permissions to specify a destination security group.
  String? get sourceSecurityGroupName;

  /// Not supported. Use a set of IP permissions to specify a destination security group.
  String? get sourceSecurityGroupOwnerId;
  @override
  RevokeSecurityGroupEgressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        groupId,
        ipPermissions,
        securityGroupRuleIds,
        cidrIp,
        fromPort,
        ipProtocol,
        toPort,
        sourceSecurityGroupName,
        sourceSecurityGroupOwnerId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RevokeSecurityGroupEgressRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'ipPermissions',
      ipPermissions,
    );
    helper.add(
      'securityGroupRuleIds',
      securityGroupRuleIds,
    );
    helper.add(
      'cidrIp',
      cidrIp,
    );
    helper.add(
      'fromPort',
      fromPort,
    );
    helper.add(
      'ipProtocol',
      ipProtocol,
    );
    helper.add(
      'toPort',
      toPort,
    );
    helper.add(
      'sourceSecurityGroupName',
      sourceSecurityGroupName,
    );
    helper.add(
      'sourceSecurityGroupOwnerId',
      sourceSecurityGroupOwnerId,
    );
    return helper.toString();
  }
}

class RevokeSecurityGroupEgressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RevokeSecurityGroupEgressRequest> {
  const RevokeSecurityGroupEgressRequestEc2QuerySerializer()
      : super('RevokeSecurityGroupEgressRequest');

  @override
  Iterable<Type> get types => const [
        RevokeSecurityGroupEgressRequest,
        _$RevokeSecurityGroupEgressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RevokeSecurityGroupEgressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeSecurityGroupEgressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'groupId':
          result.groupId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ipPermissions':
          if (value != null) {
            result.ipPermissions.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.IpPermission)],
              ),
            ) as _i4.BuiltList<_i3.IpPermission>));
          }
          break;
        case 'SecurityGroupRuleId':
          if (value != null) {
            result.securityGroupRuleIds
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'cidrIp':
          if (value != null) {
            result.cidrIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'fromPort':
          result.fromPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ipProtocol':
          if (value != null) {
            result.ipProtocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'toPort':
          result.toPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'sourceSecurityGroupName':
          if (value != null) {
            result.sourceSecurityGroupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'sourceSecurityGroupOwnerId':
          if (value != null) {
            result.sourceSecurityGroupOwnerId = (serializers.deserialize(
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
    final payload = (object as RevokeSecurityGroupEgressRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RevokeSecurityGroupEgressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('GroupId'))
      ..add(serializers.serialize(
        payload.groupId,
        specifiedType: const FullType(String),
      ));
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
            _i4.BuiltList,
            [FullType(_i3.IpPermission)],
          ),
        ));
    }
    if (payload.securityGroupRuleIds != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroupRuleId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupRuleIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.cidrIp != null) {
      result
        ..add(const _i1.XmlElementName('CidrIp'))
        ..add(serializers.serialize(
          payload.cidrIp!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        payload.fromPort,
        specifiedType: const FullType(int),
      ));
    if (payload.ipProtocol != null) {
      result
        ..add(const _i1.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          payload.ipProtocol!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        payload.toPort,
        specifiedType: const FullType(int),
      ));
    if (payload.sourceSecurityGroupName != null) {
      result
        ..add(const _i1.XmlElementName('SourceSecurityGroupName'))
        ..add(serializers.serialize(
          payload.sourceSecurityGroupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceSecurityGroupOwnerId != null) {
      result
        ..add(const _i1.XmlElementName('SourceSecurityGroupOwnerId'))
        ..add(serializers.serialize(
          payload.sourceSecurityGroupOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
