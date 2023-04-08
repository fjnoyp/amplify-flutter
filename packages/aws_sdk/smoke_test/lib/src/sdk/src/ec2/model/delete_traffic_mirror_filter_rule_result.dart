// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_traffic_mirror_filter_rule_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_traffic_mirror_filter_rule_result.g.dart';

abstract class DeleteTrafficMirrorFilterRuleResult
    with
        _i1.AWSEquatable<DeleteTrafficMirrorFilterRuleResult>
    implements
        Built<DeleteTrafficMirrorFilterRuleResult,
            DeleteTrafficMirrorFilterRuleResultBuilder> {
  factory DeleteTrafficMirrorFilterRuleResult(
      {String? trafficMirrorFilterRuleId}) {
    return _$DeleteTrafficMirrorFilterRuleResult._(
        trafficMirrorFilterRuleId: trafficMirrorFilterRuleId);
  }

  factory DeleteTrafficMirrorFilterRuleResult.build(
          [void Function(DeleteTrafficMirrorFilterRuleResultBuilder) updates]) =
      _$DeleteTrafficMirrorFilterRuleResult;

  const DeleteTrafficMirrorFilterRuleResult._();

  /// Constructs a [DeleteTrafficMirrorFilterRuleResult] from a [payload] and [response].
  factory DeleteTrafficMirrorFilterRuleResult.fromResponse(
    DeleteTrafficMirrorFilterRuleResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteTrafficMirrorFilterRuleResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorFilterRuleResultBuilder b) {}

  /// The ID of the deleted Traffic Mirror rule.
  String? get trafficMirrorFilterRuleId;
  @override
  List<Object?> get props => [trafficMirrorFilterRuleId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorFilterRuleResult');
    helper.add(
      'trafficMirrorFilterRuleId',
      trafficMirrorFilterRuleId,
    );
    return helper.toString();
  }
}

class DeleteTrafficMirrorFilterRuleResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DeleteTrafficMirrorFilterRuleResult> {
  const DeleteTrafficMirrorFilterRuleResultEc2QuerySerializer()
      : super('DeleteTrafficMirrorFilterRuleResult');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorFilterRuleResult,
        _$DeleteTrafficMirrorFilterRuleResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorFilterRuleResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorFilterRuleResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorFilterRuleId':
          if (value != null) {
            result.trafficMirrorFilterRuleId = (serializers.deserialize(
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
    final payload = (object as DeleteTrafficMirrorFilterRuleResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteTrafficMirrorFilterRuleResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorFilterRuleId != null) {
      result
        ..add(const _i2.XmlElementName('TrafficMirrorFilterRuleId'))
        ..add(serializers.serialize(
          payload.trafficMirrorFilterRuleId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
