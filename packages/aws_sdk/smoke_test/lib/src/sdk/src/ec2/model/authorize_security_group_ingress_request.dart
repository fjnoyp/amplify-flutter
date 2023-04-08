// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.authorize_security_group_ingress_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_permission.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'authorize_security_group_ingress_request.g.dart';

abstract class AuthorizeSecurityGroupIngressRequest
    with
        _i1.HttpInput<AuthorizeSecurityGroupIngressRequest>,
        _i2.AWSEquatable<AuthorizeSecurityGroupIngressRequest>
    implements
        Built<AuthorizeSecurityGroupIngressRequest,
            AuthorizeSecurityGroupIngressRequestBuilder> {
  factory AuthorizeSecurityGroupIngressRequest({
    String? cidrIp,
    int? fromPort,
    String? groupId,
    String? groupName,
    List<_i3.IpPermission>? ipPermissions,
    String? ipProtocol,
    String? sourceSecurityGroupName,
    String? sourceSecurityGroupOwnerId,
    int? toPort,
    bool? dryRun,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    dryRun ??= false;
    return _$AuthorizeSecurityGroupIngressRequest._(
      cidrIp: cidrIp,
      fromPort: fromPort,
      groupId: groupId,
      groupName: groupName,
      ipPermissions:
          ipPermissions == null ? null : _i5.BuiltList(ipPermissions),
      ipProtocol: ipProtocol,
      sourceSecurityGroupName: sourceSecurityGroupName,
      sourceSecurityGroupOwnerId: sourceSecurityGroupOwnerId,
      toPort: toPort,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory AuthorizeSecurityGroupIngressRequest.build(
      [void Function(AuthorizeSecurityGroupIngressRequestBuilder)
          updates]) = _$AuthorizeSecurityGroupIngressRequest;

  const AuthorizeSecurityGroupIngressRequest._();

  factory AuthorizeSecurityGroupIngressRequest.fromRequest(
    AuthorizeSecurityGroupIngressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AuthorizeSecurityGroupIngressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorizeSecurityGroupIngressRequestBuilder b) {
    b.fromPort = 0;
    b.toPort = 0;
    b.dryRun = false;
  }

  /// The IPv4 address range, in CIDR format. You can't specify this parameter when specifying a source security group. To specify an IPv6 address range, use a set of IP permissions.
  ///
  /// Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.
  String? get cidrIp;

  /// The start of port range for the TCP and UDP protocols, or an ICMP type number. For the ICMP type number, use `-1` to specify all types. If you specify all ICMP types, you must specify all codes.
  ///
  /// Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.
  int get fromPort;

  /// The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupId;

  /// \[EC2-Classic, default VPC\] The name of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
  String? get groupName;

  /// The sets of IP permissions.
  _i5.BuiltList<_i3.IpPermission>? get ipPermissions;

  /// The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). To specify `icmpv6`, use a set of IP permissions.
  ///
  /// \[VPC only\] Use `-1` to specify all protocols. If you specify `-1` or a protocol other than `tcp`, `udp`, or `icmp`, traffic on all ports is allowed, regardless of any ports you specify.
  ///
  /// Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.
  String? get ipProtocol;

  /// \[EC2-Classic, default VPC\] The name of the source security group. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead. For EC2-VPC, the source security group must be in the same VPC.
  String? get sourceSecurityGroupName;

  /// \[nondefault VPC\] The Amazon Web Services account ID for the source security group, if the source security group is in a different account. You can't specify this parameter in combination with the following parameters: the CIDR IP address range, the IP protocol, the start of the port range, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead.
  String? get sourceSecurityGroupOwnerId;

  /// The end of port range for the TCP and UDP protocols, or an ICMP code number. For the ICMP code number, use `-1` to specify all codes. If you specify all ICMP types, you must specify all codes.
  ///
  /// Alternatively, use a set of IP permissions to specify multiple rules and a description for the rule.
  int get toPort;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// \[VPC Only\] The tags applied to the security group rule.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  AuthorizeSecurityGroupIngressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidrIp,
        fromPort,
        groupId,
        groupName,
        ipPermissions,
        ipProtocol,
        sourceSecurityGroupName,
        sourceSecurityGroupOwnerId,
        toPort,
        dryRun,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AuthorizeSecurityGroupIngressRequest');
    helper.add(
      'cidrIp',
      cidrIp,
    );
    helper.add(
      'fromPort',
      fromPort,
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
      'ipProtocol',
      ipProtocol,
    );
    helper.add(
      'sourceSecurityGroupName',
      sourceSecurityGroupName,
    );
    helper.add(
      'sourceSecurityGroupOwnerId',
      sourceSecurityGroupOwnerId,
    );
    helper.add(
      'toPort',
      toPort,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class AuthorizeSecurityGroupIngressRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AuthorizeSecurityGroupIngressRequest> {
  const AuthorizeSecurityGroupIngressRequestEc2QuerySerializer()
      : super('AuthorizeSecurityGroupIngressRequest');

  @override
  Iterable<Type> get types => const [
        AuthorizeSecurityGroupIngressRequest,
        _$AuthorizeSecurityGroupIngressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AuthorizeSecurityGroupIngressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizeSecurityGroupIngressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CidrIp':
          if (value != null) {
            result.cidrIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'FromPort':
          result.fromPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
        case 'IpProtocol':
          if (value != null) {
            result.ipProtocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourceSecurityGroupName':
          if (value != null) {
            result.sourceSecurityGroupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourceSecurityGroupOwnerId':
          if (value != null) {
            result.sourceSecurityGroupOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ToPort':
          result.toPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
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
    final payload = (object as AuthorizeSecurityGroupIngressRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AuthorizeSecurityGroupIngressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
    if (payload.ipProtocol != null) {
      result
        ..add(const _i1.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          payload.ipProtocol!,
          specifiedType: const FullType(String),
        ));
    }
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
    result
      ..add(const _i1.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        payload.toPort,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
