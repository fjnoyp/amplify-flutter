// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.security_group_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/referenced_security_group.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'security_group_rule.g.dart';

/// Describes a security group rule.
abstract class SecurityGroupRule
    with _i1.AWSEquatable<SecurityGroupRule>
    implements Built<SecurityGroupRule, SecurityGroupRuleBuilder> {
  /// Describes a security group rule.
  factory SecurityGroupRule({
    String? securityGroupRuleId,
    String? groupId,
    String? groupOwnerId,
    bool? isEgress,
    String? ipProtocol,
    int? fromPort,
    int? toPort,
    String? cidrIpv4,
    String? cidrIpv6,
    String? prefixListId,
    _i2.ReferencedSecurityGroup? referencedGroupInfo,
    String? description,
    List<_i3.Tag>? tags,
  }) {
    isEgress ??= false;
    fromPort ??= 0;
    toPort ??= 0;
    return _$SecurityGroupRule._(
      securityGroupRuleId: securityGroupRuleId,
      groupId: groupId,
      groupOwnerId: groupOwnerId,
      isEgress: isEgress,
      ipProtocol: ipProtocol,
      fromPort: fromPort,
      toPort: toPort,
      cidrIpv4: cidrIpv4,
      cidrIpv6: cidrIpv6,
      prefixListId: prefixListId,
      referencedGroupInfo: referencedGroupInfo,
      description: description,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a security group rule.
  factory SecurityGroupRule.build(
      [void Function(SecurityGroupRuleBuilder) updates]) = _$SecurityGroupRule;

  const SecurityGroupRule._();

  static const List<_i5.SmithySerializer> serializers = [
    SecurityGroupRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupRuleBuilder b) {
    b.isEgress = false;
    b.fromPort = 0;
    b.toPort = 0;
  }

  /// The ID of the security group rule.
  String? get securityGroupRuleId;

  /// The ID of the security group.
  String? get groupId;

  /// The ID of the Amazon Web Services account that owns the security group.
  String? get groupOwnerId;

  /// Indicates whether the security group rule is an outbound rule.
  bool get isEgress;

  /// The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
  ///
  /// Use `-1` to specify all protocols.
  String? get ipProtocol;

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type. A value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you must specify all codes.
  int get fromPort;

  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A value of `-1` indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you must specify all codes.
  int get toPort;

  /// The IPv4 CIDR range.
  String? get cidrIpv4;

  /// The IPv6 CIDR range.
  String? get cidrIpv6;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// Describes the security group that is referenced in the rule.
  _i2.ReferencedSecurityGroup? get referencedGroupInfo;

  /// The security group rule description.
  String? get description;

  /// The tags applied to the security group rule.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        securityGroupRuleId,
        groupId,
        groupOwnerId,
        isEgress,
        ipProtocol,
        fromPort,
        toPort,
        cidrIpv4,
        cidrIpv6,
        prefixListId,
        referencedGroupInfo,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupRule');
    helper.add(
      'securityGroupRuleId',
      securityGroupRuleId,
    );
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'groupOwnerId',
      groupOwnerId,
    );
    helper.add(
      'isEgress',
      isEgress,
    );
    helper.add(
      'ipProtocol',
      ipProtocol,
    );
    helper.add(
      'fromPort',
      fromPort,
    );
    helper.add(
      'toPort',
      toPort,
    );
    helper.add(
      'cidrIpv4',
      cidrIpv4,
    );
    helper.add(
      'cidrIpv6',
      cidrIpv6,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'referencedGroupInfo',
      referencedGroupInfo,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class SecurityGroupRuleEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<SecurityGroupRule> {
  const SecurityGroupRuleEc2QuerySerializer() : super('SecurityGroupRule');

  @override
  Iterable<Type> get types => const [
        SecurityGroupRule,
        _$SecurityGroupRule,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'securityGroupRuleId':
          if (value != null) {
            result.securityGroupRuleId = (serializers.deserialize(
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
        case 'groupOwnerId':
          if (value != null) {
            result.groupOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'isEgress':
          result.isEgress = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ipProtocol':
          if (value != null) {
            result.ipProtocol = (serializers.deserialize(
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
        case 'toPort':
          result.toPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'cidrIpv4':
          if (value != null) {
            result.cidrIpv4 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'cidrIpv6':
          if (value != null) {
            result.cidrIpv6 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefixListId':
          if (value != null) {
            result.prefixListId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'referencedGroupInfo':
          if (value != null) {
            result.referencedGroupInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReferencedSecurityGroup),
            ) as _i2.ReferencedSecurityGroup));
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as SecurityGroupRule);
    final result = <Object?>[
      const _i5.XmlElementName(
        'SecurityGroupRuleResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.securityGroupRuleId != null) {
      result
        ..add(const _i5.XmlElementName('SecurityGroupRuleId'))
        ..add(serializers.serialize(
          payload.securityGroupRuleId!,
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
    if (payload.groupOwnerId != null) {
      result
        ..add(const _i5.XmlElementName('GroupOwnerId'))
        ..add(serializers.serialize(
          payload.groupOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('IsEgress'))
      ..add(serializers.serialize(
        payload.isEgress,
        specifiedType: const FullType(bool),
      ));
    if (payload.ipProtocol != null) {
      result
        ..add(const _i5.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          payload.ipProtocol!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        payload.fromPort,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i5.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        payload.toPort,
        specifiedType: const FullType(int),
      ));
    if (payload.cidrIpv4 != null) {
      result
        ..add(const _i5.XmlElementName('CidrIpv4'))
        ..add(serializers.serialize(
          payload.cidrIpv4!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.cidrIpv6 != null) {
      result
        ..add(const _i5.XmlElementName('CidrIpv6'))
        ..add(serializers.serialize(
          payload.cidrIpv6!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixListId != null) {
      result
        ..add(const _i5.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          payload.prefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.referencedGroupInfo != null) {
      result
        ..add(const _i5.XmlElementName('ReferencedGroupInfo'))
        ..add(serializers.serialize(
          payload.referencedGroupInfo!,
          specifiedType: const FullType(_i2.ReferencedSecurityGroup),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
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
    return result;
  }
}
