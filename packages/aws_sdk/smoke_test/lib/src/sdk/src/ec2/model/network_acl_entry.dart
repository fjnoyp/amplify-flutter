// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_acl_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/icmp_type_code.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/rule_action.dart' as _i4;

part 'network_acl_entry.g.dart';

/// Describes an entry in a network ACL.
abstract class NetworkAclEntry
    with _i1.AWSEquatable<NetworkAclEntry>
    implements Built<NetworkAclEntry, NetworkAclEntryBuilder> {
  /// Describes an entry in a network ACL.
  factory NetworkAclEntry({
    String? cidrBlock,
    bool? egress,
    _i2.IcmpTypeCode? icmpTypeCode,
    String? ipv6CidrBlock,
    _i3.PortRange? portRange,
    String? protocol,
    _i4.RuleAction? ruleAction,
    int? ruleNumber,
  }) {
    egress ??= false;
    ruleNumber ??= 0;
    return _$NetworkAclEntry._(
      cidrBlock: cidrBlock,
      egress: egress,
      icmpTypeCode: icmpTypeCode,
      ipv6CidrBlock: ipv6CidrBlock,
      portRange: portRange,
      protocol: protocol,
      ruleAction: ruleAction,
      ruleNumber: ruleNumber,
    );
  }

  /// Describes an entry in a network ACL.
  factory NetworkAclEntry.build(
      [void Function(NetworkAclEntryBuilder) updates]) = _$NetworkAclEntry;

  const NetworkAclEntry._();

  static const List<_i5.SmithySerializer> serializers = [
    NetworkAclEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkAclEntryBuilder b) {
    b.egress = false;
    b.ruleNumber = 0;
  }

  /// The IPv4 network range to allow or deny, in CIDR notation.
  String? get cidrBlock;

  /// Indicates whether the rule is an egress rule (applied to traffic leaving the subnet).
  bool get egress;

  /// ICMP protocol: The ICMP type and code.
  _i2.IcmpTypeCode? get icmpTypeCode;

  /// The IPv6 network range to allow or deny, in CIDR notation.
  String? get ipv6CidrBlock;

  /// TCP or UDP protocols: The range of ports the rule applies to.
  _i3.PortRange? get portRange;

  /// The protocol number. A value of "-1" means all protocols.
  String? get protocol;

  /// Indicates whether to allow or deny the traffic that matches the rule.
  _i4.RuleAction? get ruleAction;

  /// The rule number for the entry. ACL entries are processed in ascending order by rule number.
  int get ruleNumber;
  @override
  List<Object?> get props => [
        cidrBlock,
        egress,
        icmpTypeCode,
        ipv6CidrBlock,
        portRange,
        protocol,
        ruleAction,
        ruleNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkAclEntry');
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'egress',
      egress,
    );
    helper.add(
      'icmpTypeCode',
      icmpTypeCode,
    );
    helper.add(
      'ipv6CidrBlock',
      ipv6CidrBlock,
    );
    helper.add(
      'portRange',
      portRange,
    );
    helper.add(
      'protocol',
      protocol,
    );
    helper.add(
      'ruleAction',
      ruleAction,
    );
    helper.add(
      'ruleNumber',
      ruleNumber,
    );
    return helper.toString();
  }
}

class NetworkAclEntryEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<NetworkAclEntry> {
  const NetworkAclEntryEc2QuerySerializer() : super('NetworkAclEntry');

  @override
  Iterable<Type> get types => const [
        NetworkAclEntry,
        _$NetworkAclEntry,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkAclEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkAclEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidrBlock':
          if (value != null) {
            result.cidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'egress':
          result.egress = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'icmpTypeCode':
          if (value != null) {
            result.icmpTypeCode.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IcmpTypeCode),
            ) as _i2.IcmpTypeCode));
          }
          break;
        case 'ipv6CidrBlock':
          if (value != null) {
            result.ipv6CidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'portRange':
          if (value != null) {
            result.portRange.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PortRange),
            ) as _i3.PortRange));
          }
          break;
        case 'protocol':
          if (value != null) {
            result.protocol = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ruleAction':
          if (value != null) {
            result.ruleAction = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.RuleAction),
            ) as _i4.RuleAction);
          }
          break;
        case 'ruleNumber':
          result.ruleNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as NetworkAclEntry);
    final result = <Object?>[
      const _i5.XmlElementName(
        'NetworkAclEntryResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidrBlock != null) {
      result
        ..add(const _i5.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          payload.cidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('Egress'))
      ..add(serializers.serialize(
        payload.egress,
        specifiedType: const FullType(bool),
      ));
    if (payload.icmpTypeCode != null) {
      result
        ..add(const _i5.XmlElementName('IcmpTypeCode'))
        ..add(serializers.serialize(
          payload.icmpTypeCode!,
          specifiedType: const FullType(_i2.IcmpTypeCode),
        ));
    }
    if (payload.ipv6CidrBlock != null) {
      result
        ..add(const _i5.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.portRange != null) {
      result
        ..add(const _i5.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          payload.portRange!,
          specifiedType: const FullType(_i3.PortRange),
        ));
    }
    if (payload.protocol != null) {
      result
        ..add(const _i5.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          payload.protocol!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ruleAction != null) {
      result
        ..add(const _i5.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          payload.ruleAction!,
          specifiedType: const FullType.nullable(_i4.RuleAction),
        ));
    }
    result
      ..add(const _i5.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        payload.ruleNumber,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
