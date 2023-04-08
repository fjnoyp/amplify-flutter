// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_security_group_rules_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_rule_update.dart'
    as _i3;

part 'modify_security_group_rules_request.g.dart';

abstract class ModifySecurityGroupRulesRequest
    with
        _i1.HttpInput<ModifySecurityGroupRulesRequest>,
        _i2.AWSEquatable<ModifySecurityGroupRulesRequest>
    implements
        Built<ModifySecurityGroupRulesRequest,
            ModifySecurityGroupRulesRequestBuilder> {
  factory ModifySecurityGroupRulesRequest({
    required String groupId,
    required List<_i3.SecurityGroupRuleUpdate> securityGroupRules,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifySecurityGroupRulesRequest._(
      groupId: groupId,
      securityGroupRules: _i4.BuiltList(securityGroupRules),
      dryRun: dryRun,
    );
  }

  factory ModifySecurityGroupRulesRequest.build(
          [void Function(ModifySecurityGroupRulesRequestBuilder) updates]) =
      _$ModifySecurityGroupRulesRequest;

  const ModifySecurityGroupRulesRequest._();

  factory ModifySecurityGroupRulesRequest.fromRequest(
    ModifySecurityGroupRulesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifySecurityGroupRulesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySecurityGroupRulesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the security group.
  String get groupId;

  /// Information about the security group properties to update.
  _i4.BuiltList<_i3.SecurityGroupRuleUpdate> get securityGroupRules;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifySecurityGroupRulesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        groupId,
        securityGroupRules,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifySecurityGroupRulesRequest');
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'securityGroupRules',
      securityGroupRules,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifySecurityGroupRulesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifySecurityGroupRulesRequest> {
  const ModifySecurityGroupRulesRequestEc2QuerySerializer()
      : super('ModifySecurityGroupRulesRequest');

  @override
  Iterable<Type> get types => const [
        ModifySecurityGroupRulesRequest,
        _$ModifySecurityGroupRulesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySecurityGroupRulesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySecurityGroupRulesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'GroupId':
          result.groupId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SecurityGroupRule':
          result.securityGroupRules.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.SecurityGroupRuleUpdate)],
            ),
          ) as _i4.BuiltList<_i3.SecurityGroupRuleUpdate>));
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as ModifySecurityGroupRulesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifySecurityGroupRulesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('GroupId'))
      ..add(serializers.serialize(
        payload.groupId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('SecurityGroupRule'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.securityGroupRules,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.SecurityGroupRuleUpdate)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
