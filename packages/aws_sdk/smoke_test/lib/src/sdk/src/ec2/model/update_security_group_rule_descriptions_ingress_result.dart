// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.update_security_group_rule_descriptions_ingress_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_security_group_rule_descriptions_ingress_result.g.dart';

abstract class UpdateSecurityGroupRuleDescriptionsIngressResult
    with
        _i1.AWSEquatable<UpdateSecurityGroupRuleDescriptionsIngressResult>
    implements
        Built<UpdateSecurityGroupRuleDescriptionsIngressResult,
            UpdateSecurityGroupRuleDescriptionsIngressResultBuilder> {
  factory UpdateSecurityGroupRuleDescriptionsIngressResult({bool? return_}) {
    return_ ??= false;
    return _$UpdateSecurityGroupRuleDescriptionsIngressResult._(
        return_: return_);
  }

  factory UpdateSecurityGroupRuleDescriptionsIngressResult.build(
      [void Function(UpdateSecurityGroupRuleDescriptionsIngressResultBuilder)
          updates]) = _$UpdateSecurityGroupRuleDescriptionsIngressResult;

  const UpdateSecurityGroupRuleDescriptionsIngressResult._();

  /// Constructs a [UpdateSecurityGroupRuleDescriptionsIngressResult] from a [payload] and [response].
  factory UpdateSecurityGroupRuleDescriptionsIngressResult.fromResponse(
    UpdateSecurityGroupRuleDescriptionsIngressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    UpdateSecurityGroupRuleDescriptionsIngressResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateSecurityGroupRuleDescriptionsIngressResultBuilder b) {
    b.return_ = false;
  }

  /// Returns `true` if the request succeeds; otherwise, returns an error.
  bool get return_;
  @override
  List<Object?> get props => [return_];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'UpdateSecurityGroupRuleDescriptionsIngressResult');
    helper.add(
      'return_',
      return_,
    );
    return helper.toString();
  }
}

class UpdateSecurityGroupRuleDescriptionsIngressResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        UpdateSecurityGroupRuleDescriptionsIngressResult> {
  const UpdateSecurityGroupRuleDescriptionsIngressResultEc2QuerySerializer()
      : super('UpdateSecurityGroupRuleDescriptionsIngressResult');

  @override
  Iterable<Type> get types => const [
        UpdateSecurityGroupRuleDescriptionsIngressResult,
        _$UpdateSecurityGroupRuleDescriptionsIngressResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UpdateSecurityGroupRuleDescriptionsIngressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSecurityGroupRuleDescriptionsIngressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'return':
          result.return_ = (serializers.deserialize(
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
    final payload =
        (object as UpdateSecurityGroupRuleDescriptionsIngressResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'UpdateSecurityGroupRuleDescriptionsIngressResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Return'))
      ..add(serializers.serialize(
        payload.return_,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
