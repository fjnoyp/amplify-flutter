// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.security_group_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'security_group_rule_request.g.dart';

/// Describes a security group rule.
///
/// You must specify exactly one of the following parameters, based on the rule type:
///
/// *   CidrIpv4
///
/// *   CidrIpv6
///
/// *   PrefixListId
///
/// *   ReferencedGroupId
///
///
/// When you modify a rule, you cannot change the rule type. For example, if the rule uses an IPv4 address range, you must use `CidrIpv4` to specify a new IPv4 address range.
abstract class SecurityGroupRuleRequest
    with _i1.AWSEquatable<SecurityGroupRuleRequest>
    implements
        Built<SecurityGroupRuleRequest, SecurityGroupRuleRequestBuilder> {
  /// Describes a security group rule.
  ///
  /// You must specify exactly one of the following parameters, based on the rule type:
  ///
  /// *   CidrIpv4
  ///
  /// *   CidrIpv6
  ///
  /// *   PrefixListId
  ///
  /// *   ReferencedGroupId
  ///
  ///
  /// When you modify a rule, you cannot change the rule type. For example, if the rule uses an IPv4 address range, you must use `CidrIpv4` to specify a new IPv4 address range.
  factory SecurityGroupRuleRequest({
    String? ipProtocol,
    int? fromPort,
    int? toPort,
    String? cidrIpv4,
    String? cidrIpv6,
    String? prefixListId,
    String? referencedGroupId,
    String? description,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$SecurityGroupRuleRequest._(
      ipProtocol: ipProtocol,
      fromPort: fromPort,
      toPort: toPort,
      cidrIpv4: cidrIpv4,
      cidrIpv6: cidrIpv6,
      prefixListId: prefixListId,
      referencedGroupId: referencedGroupId,
      description: description,
    );
  }

  /// Describes a security group rule.
  ///
  /// You must specify exactly one of the following parameters, based on the rule type:
  ///
  /// *   CidrIpv4
  ///
  /// *   CidrIpv6
  ///
  /// *   PrefixListId
  ///
  /// *   ReferencedGroupId
  ///
  ///
  /// When you modify a rule, you cannot change the rule type. For example, if the rule uses an IPv4 address range, you must use `CidrIpv4` to specify a new IPv4 address range.
  factory SecurityGroupRuleRequest.build(
          [void Function(SecurityGroupRuleRequestBuilder) updates]) =
      _$SecurityGroupRuleRequest;

  const SecurityGroupRuleRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    SecurityGroupRuleRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupRuleRequestBuilder b) {
    b.fromPort = 0;
    b.toPort = 0;
  }

  /// The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
  ///
  /// Use `-1` to specify all protocols.
  String? get ipProtocol;

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type. A value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you must specify all codes.
  int get fromPort;

  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A value of `-1` indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you must specify all codes.
  int get toPort;

  /// The IPv4 CIDR range. To specify a single IPv4 address, use the /32 prefix length.
  String? get cidrIpv4;

  /// The IPv6 CIDR range. To specify a single IPv6 address, use the /128 prefix length.
  String? get cidrIpv6;

  /// The ID of the prefix list.
  String? get prefixListId;

  /// The ID of the security group that is referenced in the security group rule.
  String? get referencedGroupId;

  /// The description of the security group rule.
  String? get description;
  @override
  List<Object?> get props => [
        ipProtocol,
        fromPort,
        toPort,
        cidrIpv4,
        cidrIpv6,
        prefixListId,
        referencedGroupId,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupRuleRequest');
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
      'referencedGroupId',
      referencedGroupId,
    );
    helper.add(
      'description',
      description,
    );
    return helper.toString();
  }
}

class SecurityGroupRuleRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SecurityGroupRuleRequest> {
  const SecurityGroupRuleRequestEc2QuerySerializer()
      : super('SecurityGroupRuleRequest');

  @override
  Iterable<Type> get types => const [
        SecurityGroupRuleRequest,
        _$SecurityGroupRuleRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'IpProtocol':
          if (value != null) {
            result.ipProtocol = (serializers.deserialize(
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
        case 'ToPort':
          result.toPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'CidrIpv4':
          if (value != null) {
            result.cidrIpv4 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CidrIpv6':
          if (value != null) {
            result.cidrIpv6 = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PrefixListId':
          if (value != null) {
            result.prefixListId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReferencedGroupId':
          if (value != null) {
            result.referencedGroupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
    final payload = (object as SecurityGroupRuleRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SecurityGroupRuleRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipProtocol != null) {
      result
        ..add(const _i2.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          payload.ipProtocol!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        payload.fromPort,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        payload.toPort,
        specifiedType: const FullType(int),
      ));
    if (payload.cidrIpv4 != null) {
      result
        ..add(const _i2.XmlElementName('CidrIpv4'))
        ..add(serializers.serialize(
          payload.cidrIpv4!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.cidrIpv6 != null) {
      result
        ..add(const _i2.XmlElementName('CidrIpv6'))
        ..add(serializers.serialize(
          payload.cidrIpv6!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixListId != null) {
      result
        ..add(const _i2.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          payload.prefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.referencedGroupId != null) {
      result
        ..add(const _i2.XmlElementName('ReferencedGroupId'))
        ..add(serializers.serialize(
          payload.referencedGroupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
