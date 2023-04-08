// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.analysis_acl_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i2;

part 'analysis_acl_rule.g.dart';

/// Describes a network access control (ACL) rule.
abstract class AnalysisAclRule
    with _i1.AWSEquatable<AnalysisAclRule>
    implements Built<AnalysisAclRule, AnalysisAclRuleBuilder> {
  /// Describes a network access control (ACL) rule.
  factory AnalysisAclRule({
    String? cidr,
    bool? egress,
    _i2.PortRange? portRange,
    String? protocol,
    String? ruleAction,
    int? ruleNumber,
  }) {
    egress ??= false;
    ruleNumber ??= 0;
    return _$AnalysisAclRule._(
      cidr: cidr,
      egress: egress,
      portRange: portRange,
      protocol: protocol,
      ruleAction: ruleAction,
      ruleNumber: ruleNumber,
    );
  }

  /// Describes a network access control (ACL) rule.
  factory AnalysisAclRule.build(
      [void Function(AnalysisAclRuleBuilder) updates]) = _$AnalysisAclRule;

  const AnalysisAclRule._();

  static const List<_i3.SmithySerializer> serializers = [
    AnalysisAclRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisAclRuleBuilder b) {
    b.egress = false;
    b.ruleNumber = 0;
  }

  /// The IPv4 address range, in CIDR notation.
  String? get cidr;

  /// Indicates whether the rule is an outbound rule.
  bool get egress;

  /// The range of ports.
  _i2.PortRange? get portRange;

  /// The protocol.
  String? get protocol;

  /// Indicates whether to allow or deny traffic that matches the rule.
  String? get ruleAction;

  /// The rule number.
  int get ruleNumber;
  @override
  List<Object?> get props => [
        cidr,
        egress,
        portRange,
        protocol,
        ruleAction,
        ruleNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisAclRule');
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'egress',
      egress,
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

class AnalysisAclRuleEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AnalysisAclRule> {
  const AnalysisAclRuleEc2QuerySerializer() : super('AnalysisAclRule');

  @override
  Iterable<Type> get types => const [
        AnalysisAclRule,
        _$AnalysisAclRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisAclRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisAclRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidr':
          if (value != null) {
            result.cidr = (serializers.deserialize(
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
        case 'portRange':
          if (value != null) {
            result.portRange.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PortRange),
            ) as _i2.PortRange));
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
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as AnalysisAclRule);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AnalysisAclRuleResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidr != null) {
      result
        ..add(const _i3.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          payload.cidr!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Egress'))
      ..add(serializers.serialize(
        payload.egress,
        specifiedType: const FullType(bool),
      ));
    if (payload.portRange != null) {
      result
        ..add(const _i3.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          payload.portRange!,
          specifiedType: const FullType(_i2.PortRange),
        ));
    }
    if (payload.protocol != null) {
      result
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          payload.protocol!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ruleAction != null) {
      result
        ..add(const _i3.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          payload.ruleAction!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        payload.ruleNumber,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
