// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_spot_placement_scores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_placement_score.dart'
    as _i2;

part 'get_spot_placement_scores_result.g.dart';

abstract class GetSpotPlacementScoresResult
    with
        _i1.AWSEquatable<GetSpotPlacementScoresResult>
    implements
        Built<GetSpotPlacementScoresResult,
            GetSpotPlacementScoresResultBuilder> {
  factory GetSpotPlacementScoresResult({
    List<_i2.SpotPlacementScore>? spotPlacementScores,
    String? nextToken,
  }) {
    return _$GetSpotPlacementScoresResult._(
      spotPlacementScores: spotPlacementScores == null
          ? null
          : _i3.BuiltList(spotPlacementScores),
      nextToken: nextToken,
    );
  }

  factory GetSpotPlacementScoresResult.build(
          [void Function(GetSpotPlacementScoresResultBuilder) updates]) =
      _$GetSpotPlacementScoresResult;

  const GetSpotPlacementScoresResult._();

  /// Constructs a [GetSpotPlacementScoresResult] from a [payload] and [response].
  factory GetSpotPlacementScoresResult.fromResponse(
    GetSpotPlacementScoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetSpotPlacementScoresResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSpotPlacementScoresResultBuilder b) {}

  /// The Spot placement score for the top 10 Regions or Availability Zones, scored on a scale from 1 to 10. Each score  reflects how likely it is that each Region or Availability Zone will succeed at fulfilling the specified target capacity  _at the time of the Spot placement score request_. A score of `10` means that your Spot capacity request is highly likely to succeed in that Region or Availability Zone.
  ///
  /// If you request a Spot placement score for Regions, a high score assumes that your fleet request will be configured to use all Availability Zones and the `capacity-optimized` allocation strategy. If you request a Spot placement score for Availability Zones, a high score assumes that your fleet request will be configured to use a single Availability Zone and the `capacity-optimized` allocation strategy.
  ///
  /// Different  Regions or Availability Zones might return the same score.
  ///
  /// The Spot placement score serves as a recommendation only. No score guarantees that your Spot request will be fully or partially fulfilled.
  _i3.BuiltList<_i2.SpotPlacementScore>? get spotPlacementScores;

  /// The token for the next set of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        spotPlacementScores,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSpotPlacementScoresResult');
    helper.add(
      'spotPlacementScores',
      spotPlacementScores,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetSpotPlacementScoresResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetSpotPlacementScoresResult> {
  const GetSpotPlacementScoresResultEc2QuerySerializer()
      : super('GetSpotPlacementScoresResult');

  @override
  Iterable<Type> get types => const [
        GetSpotPlacementScoresResult,
        _$GetSpotPlacementScoresResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetSpotPlacementScoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSpotPlacementScoresResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'spotPlacementScoreSet':
          if (value != null) {
            result.spotPlacementScores
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SpotPlacementScore)],
              ),
            ) as _i3.BuiltList<_i2.SpotPlacementScore>));
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
    final payload = (object as GetSpotPlacementScoresResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetSpotPlacementScoresResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.spotPlacementScores != null) {
      result
        ..add(const _i4.XmlElementName('SpotPlacementScoreSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.spotPlacementScores!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SpotPlacementScore)],
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
