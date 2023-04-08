// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_insights_analyses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_network_insights_analyses_request.g.dart';

abstract class DescribeNetworkInsightsAnalysesRequest
    with
        _i1.HttpInput<DescribeNetworkInsightsAnalysesRequest>,
        _i2.AWSEquatable<DescribeNetworkInsightsAnalysesRequest>
    implements
        Built<DescribeNetworkInsightsAnalysesRequest,
            DescribeNetworkInsightsAnalysesRequestBuilder> {
  factory DescribeNetworkInsightsAnalysesRequest({
    List<String>? networkInsightsAnalysisIds,
    String? networkInsightsPathId,
    DateTime? analysisStartTime,
    DateTime? analysisEndTime,
    List<_i3.Filter>? filters,
    int? maxResults,
    bool? dryRun,
    String? nextToken,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeNetworkInsightsAnalysesRequest._(
      networkInsightsAnalysisIds: networkInsightsAnalysisIds == null
          ? null
          : _i4.BuiltList(networkInsightsAnalysisIds),
      networkInsightsPathId: networkInsightsPathId,
      analysisStartTime: analysisStartTime,
      analysisEndTime: analysisEndTime,
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      dryRun: dryRun,
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAnalysesRequest.build(
      [void Function(DescribeNetworkInsightsAnalysesRequestBuilder)
          updates]) = _$DescribeNetworkInsightsAnalysesRequest;

  const DescribeNetworkInsightsAnalysesRequest._();

  factory DescribeNetworkInsightsAnalysesRequest.fromRequest(
    DescribeNetworkInsightsAnalysesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeNetworkInsightsAnalysesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInsightsAnalysesRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The ID of the network insights analyses. You must specify either analysis IDs or a path ID.
  _i4.BuiltList<String>? get networkInsightsAnalysisIds;

  /// The ID of the path. You must specify either a path ID or analysis IDs.
  String? get networkInsightsPathId;

  /// The time when the network insights analyses started.
  DateTime? get analysisStartTime;

  /// The time when the network insights analyses ended.
  DateTime? get analysisEndTime;

  /// The filters. The following are the possible values:
  ///
  /// *   path-found - A Boolean value that indicates whether a feasible path is found.
  ///
  /// *   status - The status of the analysis (running | succeeded | failed).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeNetworkInsightsAnalysesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAnalysisIds,
        networkInsightsPathId,
        analysisStartTime,
        analysisEndTime,
        filters,
        maxResults,
        dryRun,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInsightsAnalysesRequest');
    helper.add(
      'networkInsightsAnalysisIds',
      networkInsightsAnalysisIds,
    );
    helper.add(
      'networkInsightsPathId',
      networkInsightsPathId,
    );
    helper.add(
      'analysisStartTime',
      analysisStartTime,
    );
    helper.add(
      'analysisEndTime',
      analysisEndTime,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkInsightsAnalysesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeNetworkInsightsAnalysesRequest> {
  const DescribeNetworkInsightsAnalysesRequestEc2QuerySerializer()
      : super('DescribeNetworkInsightsAnalysesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAnalysesRequest,
        _$DescribeNetworkInsightsAnalysesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAnalysesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAnalysesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NetworkInsightsAnalysisId':
          if (value != null) {
            result.networkInsightsAnalysisIds
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'NetworkInsightsPathId':
          if (value != null) {
            result.networkInsightsPathId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AnalysisStartTime':
          if (value != null) {
            result.analysisStartTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'AnalysisEndTime':
          if (value != null) {
            result.analysisEndTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'NextToken':
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
    final payload = (object as DescribeNetworkInsightsAnalysesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInsightsAnalysesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAnalysisIds != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInsightsAnalysisId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInsightsAnalysisIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.networkInsightsPathId != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          payload.networkInsightsPathId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.analysisStartTime != null) {
      result
        ..add(const _i1.XmlElementName('AnalysisStartTime'))
        ..add(serializers.serialize(
          payload.analysisStartTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.analysisEndTime != null) {
      result
        ..add(const _i1.XmlElementName('AnalysisEndTime'))
        ..add(serializers.serialize(
          payload.analysisEndTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
