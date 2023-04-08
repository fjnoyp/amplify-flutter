// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_traffic_mirror_filter_rule_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule.dart'
    as _i2;

part 'modify_traffic_mirror_filter_rule_result.g.dart';

abstract class ModifyTrafficMirrorFilterRuleResult
    with
        _i1.AWSEquatable<ModifyTrafficMirrorFilterRuleResult>
    implements
        Built<ModifyTrafficMirrorFilterRuleResult,
            ModifyTrafficMirrorFilterRuleResultBuilder> {
  factory ModifyTrafficMirrorFilterRuleResult(
      {_i2.TrafficMirrorFilterRule? trafficMirrorFilterRule}) {
    return _$ModifyTrafficMirrorFilterRuleResult._(
        trafficMirrorFilterRule: trafficMirrorFilterRule);
  }

  factory ModifyTrafficMirrorFilterRuleResult.build(
          [void Function(ModifyTrafficMirrorFilterRuleResultBuilder) updates]) =
      _$ModifyTrafficMirrorFilterRuleResult;

  const ModifyTrafficMirrorFilterRuleResult._();

  /// Constructs a [ModifyTrafficMirrorFilterRuleResult] from a [payload] and [response].
  factory ModifyTrafficMirrorFilterRuleResult.fromResponse(
    ModifyTrafficMirrorFilterRuleResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyTrafficMirrorFilterRuleResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTrafficMirrorFilterRuleResultBuilder b) {}

  /// Modifies a Traffic Mirror rule.
  _i2.TrafficMirrorFilterRule? get trafficMirrorFilterRule;
  @override
  List<Object?> get props => [trafficMirrorFilterRule];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTrafficMirrorFilterRuleResult');
    helper.add(
      'trafficMirrorFilterRule',
      trafficMirrorFilterRule,
    );
    return helper.toString();
  }
}

class ModifyTrafficMirrorFilterRuleResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ModifyTrafficMirrorFilterRuleResult> {
  const ModifyTrafficMirrorFilterRuleResultEc2QuerySerializer()
      : super('ModifyTrafficMirrorFilterRuleResult');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorFilterRuleResult,
        _$ModifyTrafficMirrorFilterRuleResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorFilterRuleResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorFilterRuleResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorFilterRule':
          if (value != null) {
            result.trafficMirrorFilterRule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TrafficMirrorFilterRule),
            ) as _i2.TrafficMirrorFilterRule));
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
    final payload = (object as ModifyTrafficMirrorFilterRuleResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyTrafficMirrorFilterRuleResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorFilterRule != null) {
      result
        ..add(const _i3.XmlElementName('TrafficMirrorFilterRule'))
        ..add(serializers.serialize(
          payload.trafficMirrorFilterRule!,
          specifiedType: const FullType(_i2.TrafficMirrorFilterRule),
        ));
    }
    return result;
  }
}
