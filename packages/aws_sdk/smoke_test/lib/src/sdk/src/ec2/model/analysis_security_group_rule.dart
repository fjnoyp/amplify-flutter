// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.analysis_security_group_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i2;

part 'analysis_security_group_rule.g.dart';

/// Describes a security group rule.
abstract class AnalysisSecurityGroupRule
    with _i1.AWSEquatable<AnalysisSecurityGroupRule>
    implements
        Built<AnalysisSecurityGroupRule, AnalysisSecurityGroupRuleBuilder> {
  /// Describes a security group rule.
  factory AnalysisSecurityGroupRule({
    String? cidr,
    String? direction,
    String? securityGroupId,
    _i2.PortRange? portRange,
    String? prefixListId,
    String? protocol,
  }) {
    return _$AnalysisSecurityGroupRule._(
      cidr: cidr,
      direction: direction,
      securityGroupId: securityGroupId,
      portRange: portRange,
      prefixListId: prefixListId,
      protocol: protocol,
    );
  }

  /// Describes a security group rule.
  factory AnalysisSecurityGroupRule.build(
          [void Function(AnalysisSecurityGroupRuleBuilder) updates]) =
      _$AnalysisSecurityGroupRule;

  const AnalysisSecurityGroupRule._();

  static const List<_i3.SmithySerializer> serializers = [
    AnalysisSecurityGroupRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisSecurityGroupRuleBuilder b) {}

  /// The IPv4 address range, in CIDR notation.
  String? get cidr;

  /// The direction. The following are the possible values:
  ///
  /// *   egress
  ///
  /// *   ingress
  String? get direction;

  /// The security group ID.
  String? get securityGroupId;

  /// The port range.
  _i2.PortRange? get portRange;

  /// The prefix list ID.
  String? get prefixListId;

  /// The protocol name.
  String? get protocol;
  @override
  List<Object?> get props => [
        cidr,
        direction,
        securityGroupId,
        portRange,
        prefixListId,
        protocol,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisSecurityGroupRule');
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'direction',
      direction,
    );
    helper.add(
      'securityGroupId',
      securityGroupId,
    );
    helper.add(
      'portRange',
      portRange,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'protocol',
      protocol,
    );
    return helper.toString();
  }
}

class AnalysisSecurityGroupRuleEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AnalysisSecurityGroupRule> {
  const AnalysisSecurityGroupRuleEc2QuerySerializer()
      : super('AnalysisSecurityGroupRule');

  @override
  Iterable<Type> get types => const [
        AnalysisSecurityGroupRule,
        _$AnalysisSecurityGroupRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisSecurityGroupRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisSecurityGroupRuleBuilder();
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
        case 'direction':
          if (value != null) {
            result.direction = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'securityGroupId':
          if (value != null) {
            result.securityGroupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'portRange':
          if (value != null) {
            result.portRange.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PortRange),
            ) as _i2.PortRange));
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
        case 'protocol':
          if (value != null) {
            result.protocol = (serializers.deserialize(
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
    final payload = (object as AnalysisSecurityGroupRule);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AnalysisSecurityGroupRuleResponse',
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
    if (payload.direction != null) {
      result
        ..add(const _i3.XmlElementName('Direction'))
        ..add(serializers.serialize(
          payload.direction!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.securityGroupId != null) {
      result
        ..add(const _i3.XmlElementName('SecurityGroupId'))
        ..add(serializers.serialize(
          payload.securityGroupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.portRange != null) {
      result
        ..add(const _i3.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          payload.portRange!,
          specifiedType: const FullType(_i2.PortRange),
        ));
    }
    if (payload.prefixListId != null) {
      result
        ..add(const _i3.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          payload.prefixListId!,
          specifiedType: const FullType(String),
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
    return result;
  }
}
