// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_security_group_rules_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule.dart'
    as _i2;

part 'describe_security_group_rules_result.g.dart';

abstract class DescribeSecurityGroupRulesResult
    with
        _i1.AWSEquatable<DescribeSecurityGroupRulesResult>
    implements
        Built<DescribeSecurityGroupRulesResult,
            DescribeSecurityGroupRulesResultBuilder> {
  factory DescribeSecurityGroupRulesResult({
    List<_i2.SecurityGroupRule>? securityGroupRules,
    String? nextToken,
  }) {
    return _$DescribeSecurityGroupRulesResult._(
      securityGroupRules:
          securityGroupRules == null ? null : _i3.BuiltList(securityGroupRules),
      nextToken: nextToken,
    );
  }

  factory DescribeSecurityGroupRulesResult.build(
          [void Function(DescribeSecurityGroupRulesResultBuilder) updates]) =
      _$DescribeSecurityGroupRulesResult;

  const DescribeSecurityGroupRulesResult._();

  /// Constructs a [DescribeSecurityGroupRulesResult] from a [payload] and [response].
  factory DescribeSecurityGroupRulesResult.fromResponse(
    DescribeSecurityGroupRulesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSecurityGroupRulesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSecurityGroupRulesResultBuilder b) {}

  /// Information about security group rules.
  _i3.BuiltList<_i2.SecurityGroupRule>? get securityGroupRules;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        securityGroupRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSecurityGroupRulesResult');
    helper.add(
      'securityGroupRules',
      securityGroupRules,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeSecurityGroupRulesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeSecurityGroupRulesResult> {
  const DescribeSecurityGroupRulesResultEc2QuerySerializer()
      : super('DescribeSecurityGroupRulesResult');

  @override
  Iterable<Type> get types => const [
        DescribeSecurityGroupRulesResult,
        _$DescribeSecurityGroupRulesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSecurityGroupRulesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSecurityGroupRulesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'securityGroupRuleSet':
          if (value != null) {
            result.securityGroupRules.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SecurityGroupRule)],
              ),
            ) as _i3.BuiltList<_i2.SecurityGroupRule>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeSecurityGroupRulesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeSecurityGroupRulesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.securityGroupRules != null) {
      result
        ..add(const _i4.XmlElementName('SecurityGroupRuleSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupRules!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SecurityGroupRule)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
