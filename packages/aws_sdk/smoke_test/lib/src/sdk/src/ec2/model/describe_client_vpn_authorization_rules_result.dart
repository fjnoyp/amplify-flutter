// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_client_vpn_authorization_rules_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/authorization_rule.dart'
    as _i2;

part 'describe_client_vpn_authorization_rules_result.g.dart';

abstract class DescribeClientVpnAuthorizationRulesResult
    with
        _i1.AWSEquatable<DescribeClientVpnAuthorizationRulesResult>
    implements
        Built<DescribeClientVpnAuthorizationRulesResult,
            DescribeClientVpnAuthorizationRulesResultBuilder> {
  factory DescribeClientVpnAuthorizationRulesResult({
    List<_i2.AuthorizationRule>? authorizationRules,
    String? nextToken,
  }) {
    return _$DescribeClientVpnAuthorizationRulesResult._(
      authorizationRules:
          authorizationRules == null ? null : _i3.BuiltList(authorizationRules),
      nextToken: nextToken,
    );
  }

  factory DescribeClientVpnAuthorizationRulesResult.build(
      [void Function(DescribeClientVpnAuthorizationRulesResultBuilder)
          updates]) = _$DescribeClientVpnAuthorizationRulesResult;

  const DescribeClientVpnAuthorizationRulesResult._();

  /// Constructs a [DescribeClientVpnAuthorizationRulesResult] from a [payload] and [response].
  factory DescribeClientVpnAuthorizationRulesResult.fromResponse(
    DescribeClientVpnAuthorizationRulesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeClientVpnAuthorizationRulesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClientVpnAuthorizationRulesResultBuilder b) {}

  /// Information about the authorization rules.
  _i3.BuiltList<_i2.AuthorizationRule>? get authorizationRules;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        authorizationRules,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeClientVpnAuthorizationRulesResult');
    helper.add(
      'authorizationRules',
      authorizationRules,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeClientVpnAuthorizationRulesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeClientVpnAuthorizationRulesResult> {
  const DescribeClientVpnAuthorizationRulesResultEc2QuerySerializer()
      : super('DescribeClientVpnAuthorizationRulesResult');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnAuthorizationRulesResult,
        _$DescribeClientVpnAuthorizationRulesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnAuthorizationRulesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnAuthorizationRulesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'authorizationRule':
          if (value != null) {
            result.authorizationRules.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AuthorizationRule)],
              ),
            ) as _i3.BuiltList<_i2.AuthorizationRule>));
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
    final payload = (object as DescribeClientVpnAuthorizationRulesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeClientVpnAuthorizationRulesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.authorizationRules != null) {
      result
        ..add(const _i4.XmlElementName('AuthorizationRule'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.authorizationRules!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AuthorizationRule)],
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
