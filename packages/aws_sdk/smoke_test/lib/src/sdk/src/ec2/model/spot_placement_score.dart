// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_placement_score; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'spot_placement_score.g.dart';

/// The Spot placement score for this Region or Availability Zone. The score is calculated based on the assumption that the `capacity-optimized` allocation strategy is used and that all of the Availability Zones in the Region can be used.
abstract class SpotPlacementScore
    with _i1.AWSEquatable<SpotPlacementScore>
    implements Built<SpotPlacementScore, SpotPlacementScoreBuilder> {
  /// The Spot placement score for this Region or Availability Zone. The score is calculated based on the assumption that the `capacity-optimized` allocation strategy is used and that all of the Availability Zones in the Region can be used.
  factory SpotPlacementScore({
    String? region,
    String? availabilityZoneId,
    int? score,
  }) {
    score ??= 0;
    return _$SpotPlacementScore._(
      region: region,
      availabilityZoneId: availabilityZoneId,
      score: score,
    );
  }

  /// The Spot placement score for this Region or Availability Zone. The score is calculated based on the assumption that the `capacity-optimized` allocation strategy is used and that all of the Availability Zones in the Region can be used.
  factory SpotPlacementScore.build(
          [void Function(SpotPlacementScoreBuilder) updates]) =
      _$SpotPlacementScore;

  const SpotPlacementScore._();

  static const List<_i2.SmithySerializer> serializers = [
    SpotPlacementScoreEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotPlacementScoreBuilder b) {
    b.score = 0;
  }

  /// The Region.
  String? get region;

  /// The Availability Zone.
  String? get availabilityZoneId;

  /// The placement score, on a scale from `1` to `10`. A score of `10` indicates that your Spot request is highly likely to succeed in this Region or Availability Zone. A score of `1` indicates that your Spot request is not likely to succeed.
  int get score;
  @override
  List<Object?> get props => [
        region,
        availabilityZoneId,
        score,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotPlacementScore');
    helper.add(
      'region',
      region,
    );
    helper.add(
      'availabilityZoneId',
      availabilityZoneId,
    );
    helper.add(
      'score',
      score,
    );
    return helper.toString();
  }
}

class SpotPlacementScoreEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotPlacementScore> {
  const SpotPlacementScoreEc2QuerySerializer() : super('SpotPlacementScore');

  @override
  Iterable<Type> get types => const [
        SpotPlacementScore,
        _$SpotPlacementScore,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotPlacementScore deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotPlacementScoreBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'region':
          if (value != null) {
            result.region = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZoneId':
          if (value != null) {
            result.availabilityZoneId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'score':
          result.score = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as SpotPlacementScore);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SpotPlacementScoreResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.region != null) {
      result
        ..add(const _i2.XmlElementName('Region'))
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZoneId != null) {
      result
        ..add(const _i2.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          payload.availabilityZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('Score'))
      ..add(serializers.serialize(
        payload.score,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
