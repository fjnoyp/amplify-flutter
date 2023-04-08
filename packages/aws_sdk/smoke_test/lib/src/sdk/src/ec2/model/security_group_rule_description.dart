// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.security_group_rule_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'security_group_rule_description.g.dart';

/// Describes the description of a security group rule.
///
/// You can use this when you want to update the security group rule description for either an inbound or outbound rule.
abstract class SecurityGroupRuleDescription
    with
        _i1.AWSEquatable<SecurityGroupRuleDescription>
    implements
        Built<SecurityGroupRuleDescription,
            SecurityGroupRuleDescriptionBuilder> {
  /// Describes the description of a security group rule.
  ///
  /// You can use this when you want to update the security group rule description for either an inbound or outbound rule.
  factory SecurityGroupRuleDescription({
    String? securityGroupRuleId,
    String? description,
  }) {
    return _$SecurityGroupRuleDescription._(
      securityGroupRuleId: securityGroupRuleId,
      description: description,
    );
  }

  /// Describes the description of a security group rule.
  ///
  /// You can use this when you want to update the security group rule description for either an inbound or outbound rule.
  factory SecurityGroupRuleDescription.build(
          [void Function(SecurityGroupRuleDescriptionBuilder) updates]) =
      _$SecurityGroupRuleDescription;

  const SecurityGroupRuleDescription._();

  static const List<_i2.SmithySerializer> serializers = [
    SecurityGroupRuleDescriptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupRuleDescriptionBuilder b) {}

  /// The ID of the security group rule.
  String? get securityGroupRuleId;

  /// The description of the security group rule.
  String? get description;
  @override
  List<Object?> get props => [
        securityGroupRuleId,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupRuleDescription');
    helper.add(
      'securityGroupRuleId',
      securityGroupRuleId,
    );
    helper.add(
      'description',
      description,
    );
    return helper.toString();
  }
}

class SecurityGroupRuleDescriptionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SecurityGroupRuleDescription> {
  const SecurityGroupRuleDescriptionEc2QuerySerializer()
      : super('SecurityGroupRuleDescription');

  @override
  Iterable<Type> get types => const [
        SecurityGroupRuleDescription,
        _$SecurityGroupRuleDescription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupRuleDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupRuleDescriptionBuilder();
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
    final payload = (object as SecurityGroupRuleDescription);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SecurityGroupRuleDescriptionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.securityGroupRuleId != null) {
      result
        ..add(const _i2.XmlElementName('SecurityGroupRuleId'))
        ..add(serializers.serialize(
          payload.securityGroupRuleId!,
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
