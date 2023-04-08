// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.security_group_rule_update; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_request.dart'
    as _i2;

part 'security_group_rule_update.g.dart';

/// Describes an update to a security group rule.
abstract class SecurityGroupRuleUpdate
    with _i1.AWSEquatable<SecurityGroupRuleUpdate>
    implements Built<SecurityGroupRuleUpdate, SecurityGroupRuleUpdateBuilder> {
  /// Describes an update to a security group rule.
  factory SecurityGroupRuleUpdate({
    String? securityGroupRuleId,
    _i2.SecurityGroupRuleRequest? securityGroupRule,
  }) {
    return _$SecurityGroupRuleUpdate._(
      securityGroupRuleId: securityGroupRuleId,
      securityGroupRule: securityGroupRule,
    );
  }

  /// Describes an update to a security group rule.
  factory SecurityGroupRuleUpdate.build(
          [void Function(SecurityGroupRuleUpdateBuilder) updates]) =
      _$SecurityGroupRuleUpdate;

  const SecurityGroupRuleUpdate._();

  static const List<_i3.SmithySerializer> serializers = [
    SecurityGroupRuleUpdateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupRuleUpdateBuilder b) {}

  /// The ID of the security group rule.
  String? get securityGroupRuleId;

  /// Information about the security group rule.
  _i2.SecurityGroupRuleRequest? get securityGroupRule;
  @override
  List<Object?> get props => [
        securityGroupRuleId,
        securityGroupRule,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupRuleUpdate');
    helper.add(
      'securityGroupRuleId',
      securityGroupRuleId,
    );
    helper.add(
      'securityGroupRule',
      securityGroupRule,
    );
    return helper.toString();
  }
}

class SecurityGroupRuleUpdateEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SecurityGroupRuleUpdate> {
  const SecurityGroupRuleUpdateEc2QuerySerializer()
      : super('SecurityGroupRuleUpdate');

  @override
  Iterable<Type> get types => const [
        SecurityGroupRuleUpdate,
        _$SecurityGroupRuleUpdate,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupRuleUpdate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupRuleUpdateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SecurityGroupRuleId':
          if (value != null) {
            result.securityGroupRuleId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SecurityGroupRule':
          if (value != null) {
            result.securityGroupRule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SecurityGroupRuleRequest),
            ) as _i2.SecurityGroupRuleRequest));
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
    final payload = (object as SecurityGroupRuleUpdate);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SecurityGroupRuleUpdateResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.securityGroupRuleId != null) {
      result
        ..add(const _i3.XmlElementName('SecurityGroupRuleId'))
        ..add(serializers.serialize(
          payload.securityGroupRuleId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.securityGroupRule != null) {
      result
        ..add(const _i3.XmlElementName('SecurityGroupRule'))
        ..add(serializers.serialize(
          payload.securityGroupRule!,
          specifiedType: const FullType(_i2.SecurityGroupRuleRequest),
        ));
    }
    return result;
  }
}
