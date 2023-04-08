// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_insights_access_scope_analyses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_analysis.dart'
    as _i2;

part 'describe_network_insights_access_scope_analyses_result.g.dart';

abstract class DescribeNetworkInsightsAccessScopeAnalysesResult
    with
        _i1.AWSEquatable<DescribeNetworkInsightsAccessScopeAnalysesResult>
    implements
        Built<DescribeNetworkInsightsAccessScopeAnalysesResult,
            DescribeNetworkInsightsAccessScopeAnalysesResultBuilder> {
  factory DescribeNetworkInsightsAccessScopeAnalysesResult({
    List<_i2.NetworkInsightsAccessScopeAnalysis>?
        networkInsightsAccessScopeAnalyses,
    String? nextToken,
  }) {
    return _$DescribeNetworkInsightsAccessScopeAnalysesResult._(
      networkInsightsAccessScopeAnalyses:
          networkInsightsAccessScopeAnalyses == null
              ? null
              : _i3.BuiltList(networkInsightsAccessScopeAnalyses),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAccessScopeAnalysesResult.build(
      [void Function(DescribeNetworkInsightsAccessScopeAnalysesResultBuilder)
          updates]) = _$DescribeNetworkInsightsAccessScopeAnalysesResult;

  const DescribeNetworkInsightsAccessScopeAnalysesResult._();

  /// Constructs a [DescribeNetworkInsightsAccessScopeAnalysesResult] from a [payload] and [response].
  factory DescribeNetworkInsightsAccessScopeAnalysesResult.fromResponse(
    DescribeNetworkInsightsAccessScopeAnalysesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNetworkInsightsAccessScopeAnalysesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeNetworkInsightsAccessScopeAnalysesResultBuilder b) {}

  /// The Network Access Scope analyses.
  _i3.BuiltList<_i2.NetworkInsightsAccessScopeAnalysis>?
      get networkInsightsAccessScopeAnalyses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalyses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInsightsAccessScopeAnalysesResult');
    helper.add(
      'networkInsightsAccessScopeAnalyses',
      networkInsightsAccessScopeAnalyses,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkInsightsAccessScopeAnalysesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeNetworkInsightsAccessScopeAnalysesResult> {
  const DescribeNetworkInsightsAccessScopeAnalysesResultEc2QuerySerializer()
      : super('DescribeNetworkInsightsAccessScopeAnalysesResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAccessScopeAnalysesResult,
        _$DescribeNetworkInsightsAccessScopeAnalysesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAccessScopeAnalysesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAccessScopeAnalysesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAccessScopeAnalysisSet':
          if (value != null) {
            result.networkInsightsAccessScopeAnalyses
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.NetworkInsightsAccessScopeAnalysis)],
              ),
            ) as _i3.BuiltList<_i2.NetworkInsightsAccessScopeAnalysis>));
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
    final payload =
        (object as DescribeNetworkInsightsAccessScopeAnalysesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeNetworkInsightsAccessScopeAnalysesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScopeAnalyses != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeAnalysisSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInsightsAccessScopeAnalyses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NetworkInsightsAccessScopeAnalysis)],
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
