// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_traffic_mirror_targets_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target.dart'
    as _i2;

part 'describe_traffic_mirror_targets_result.g.dart';

abstract class DescribeTrafficMirrorTargetsResult
    with
        _i1.AWSEquatable<DescribeTrafficMirrorTargetsResult>
    implements
        Built<DescribeTrafficMirrorTargetsResult,
            DescribeTrafficMirrorTargetsResultBuilder> {
  factory DescribeTrafficMirrorTargetsResult({
    List<_i2.TrafficMirrorTarget>? trafficMirrorTargets,
    String? nextToken,
  }) {
    return _$DescribeTrafficMirrorTargetsResult._(
      trafficMirrorTargets: trafficMirrorTargets == null
          ? null
          : _i3.BuiltList(trafficMirrorTargets),
      nextToken: nextToken,
    );
  }

  factory DescribeTrafficMirrorTargetsResult.build(
          [void Function(DescribeTrafficMirrorTargetsResultBuilder) updates]) =
      _$DescribeTrafficMirrorTargetsResult;

  const DescribeTrafficMirrorTargetsResult._();

  /// Constructs a [DescribeTrafficMirrorTargetsResult] from a [payload] and [response].
  factory DescribeTrafficMirrorTargetsResult.fromResponse(
    DescribeTrafficMirrorTargetsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTrafficMirrorTargetsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTrafficMirrorTargetsResultBuilder b) {}

  /// Information about one or more Traffic Mirror targets.
  _i3.BuiltList<_i2.TrafficMirrorTarget>? get trafficMirrorTargets;

  /// The token to use to retrieve the next page of results. The value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        trafficMirrorTargets,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrafficMirrorTargetsResult');
    helper.add(
      'trafficMirrorTargets',
      trafficMirrorTargets,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTrafficMirrorTargetsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeTrafficMirrorTargetsResult> {
  const DescribeTrafficMirrorTargetsResultEc2QuerySerializer()
      : super('DescribeTrafficMirrorTargetsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTrafficMirrorTargetsResult,
        _$DescribeTrafficMirrorTargetsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrafficMirrorTargetsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrafficMirrorTargetsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorTargetSet':
          if (value != null) {
            result.trafficMirrorTargets
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TrafficMirrorTarget)],
              ),
            ) as _i3.BuiltList<_i2.TrafficMirrorTarget>));
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
    final payload = (object as DescribeTrafficMirrorTargetsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTrafficMirrorTargetsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorTargets != null) {
      result
        ..add(const _i4.XmlElementName('TrafficMirrorTargetSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.trafficMirrorTargets!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TrafficMirrorTarget)],
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
