// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_insights_analyses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_analysis.dart'
    as _i2;

part 'describe_network_insights_analyses_result.g.dart';

abstract class DescribeNetworkInsightsAnalysesResult
    with
        _i1.AWSEquatable<DescribeNetworkInsightsAnalysesResult>
    implements
        Built<DescribeNetworkInsightsAnalysesResult,
            DescribeNetworkInsightsAnalysesResultBuilder> {
  factory DescribeNetworkInsightsAnalysesResult({
    List<_i2.NetworkInsightsAnalysis>? networkInsightsAnalyses,
    String? nextToken,
  }) {
    return _$DescribeNetworkInsightsAnalysesResult._(
      networkInsightsAnalyses: networkInsightsAnalyses == null
          ? null
          : _i3.BuiltList(networkInsightsAnalyses),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAnalysesResult.build(
      [void Function(DescribeNetworkInsightsAnalysesResultBuilder)
          updates]) = _$DescribeNetworkInsightsAnalysesResult;

  const DescribeNetworkInsightsAnalysesResult._();

  /// Constructs a [DescribeNetworkInsightsAnalysesResult] from a [payload] and [response].
  factory DescribeNetworkInsightsAnalysesResult.fromResponse(
    DescribeNetworkInsightsAnalysesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNetworkInsightsAnalysesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInsightsAnalysesResultBuilder b) {}

  /// Information about the network insights analyses.
  _i3.BuiltList<_i2.NetworkInsightsAnalysis>? get networkInsightsAnalyses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsAnalyses,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInsightsAnalysesResult');
    helper.add(
      'networkInsightsAnalyses',
      networkInsightsAnalyses,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkInsightsAnalysesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeNetworkInsightsAnalysesResult> {
  const DescribeNetworkInsightsAnalysesResultEc2QuerySerializer()
      : super('DescribeNetworkInsightsAnalysesResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAnalysesResult,
        _$DescribeNetworkInsightsAnalysesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAnalysesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAnalysesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAnalysisSet':
          if (value != null) {
            result.networkInsightsAnalyses
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.NetworkInsightsAnalysis)],
              ),
            ) as _i3.BuiltList<_i2.NetworkInsightsAnalysis>));
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
    final payload = (object as DescribeNetworkInsightsAnalysesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeNetworkInsightsAnalysesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAnalyses != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAnalysisSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInsightsAnalyses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NetworkInsightsAnalysis)],
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
