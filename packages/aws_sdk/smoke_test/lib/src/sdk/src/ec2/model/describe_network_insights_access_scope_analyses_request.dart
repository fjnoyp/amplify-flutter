// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_insights_access_scope_analyses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_network_insights_access_scope_analyses_request.g.dart';

abstract class DescribeNetworkInsightsAccessScopeAnalysesRequest
    with
        _i1.HttpInput<DescribeNetworkInsightsAccessScopeAnalysesRequest>,
        _i2.AWSEquatable<DescribeNetworkInsightsAccessScopeAnalysesRequest>
    implements
        Built<DescribeNetworkInsightsAccessScopeAnalysesRequest,
            DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder> {
  factory DescribeNetworkInsightsAccessScopeAnalysesRequest({
    List<String>? networkInsightsAccessScopeAnalysisIds,
    String? networkInsightsAccessScopeId,
    DateTime? analysisStartTimeBegin,
    DateTime? analysisStartTimeEnd,
    List<_i3.Filter>? filters,
    int? maxResults,
    bool? dryRun,
    String? nextToken,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeNetworkInsightsAccessScopeAnalysesRequest._(
      networkInsightsAccessScopeAnalysisIds:
          networkInsightsAccessScopeAnalysisIds == null
              ? null
              : _i4.BuiltList(networkInsightsAccessScopeAnalysisIds),
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      analysisStartTimeBegin: analysisStartTimeBegin,
      analysisStartTimeEnd: analysisStartTimeEnd,
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      dryRun: dryRun,
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAccessScopeAnalysesRequest.build(
      [void Function(DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder)
          updates]) = _$DescribeNetworkInsightsAccessScopeAnalysesRequest;

  const DescribeNetworkInsightsAccessScopeAnalysesRequest._();

  factory DescribeNetworkInsightsAccessScopeAnalysesRequest.fromRequest(
    DescribeNetworkInsightsAccessScopeAnalysesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeNetworkInsightsAccessScopeAnalysesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The IDs of the Network Access Scope analyses.
  _i4.BuiltList<String>? get networkInsightsAccessScopeAnalysisIds;

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// Filters the results based on the start time. The analysis must have started on or after this time.
  DateTime? get analysisStartTimeBegin;

  /// Filters the results based on the start time. The analysis must have started on or before this time.
  DateTime? get analysisStartTimeEnd;

  /// There are no supported filters.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeNetworkInsightsAccessScopeAnalysesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalysisIds,
        networkInsightsAccessScopeId,
        analysisStartTimeBegin,
        analysisStartTimeEnd,
        filters,
        maxResults,
        dryRun,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInsightsAccessScopeAnalysesRequest');
    helper.add(
      'networkInsightsAccessScopeAnalysisIds',
      networkInsightsAccessScopeAnalysisIds,
    );
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'analysisStartTimeBegin',
      analysisStartTimeBegin,
    );
    helper.add(
      'analysisStartTimeEnd',
      analysisStartTimeEnd,
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

class DescribeNetworkInsightsAccessScopeAnalysesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeNetworkInsightsAccessScopeAnalysesRequest> {
  const DescribeNetworkInsightsAccessScopeAnalysesRequestEc2QuerySerializer()
      : super('DescribeNetworkInsightsAccessScopeAnalysesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAccessScopeAnalysesRequest,
        _$DescribeNetworkInsightsAccessScopeAnalysesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAccessScopeAnalysesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NetworkInsightsAccessScopeAnalysisId':
          if (value != null) {
            result.networkInsightsAccessScopeAnalysisIds
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
        case 'NetworkInsightsAccessScopeId':
          if (value != null) {
            result.networkInsightsAccessScopeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AnalysisStartTimeBegin':
          if (value != null) {
            result.analysisStartTimeBegin = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'AnalysisStartTimeEnd':
          if (value != null) {
            result.analysisStartTimeEnd = (serializers.deserialize(
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
    final payload =
        (object as DescribeNetworkInsightsAccessScopeAnalysesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInsightsAccessScopeAnalysesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScopeAnalysisIds != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInsightsAccessScopeAnalysisIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.networkInsightsAccessScopeId != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScopeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.analysisStartTimeBegin != null) {
      result
        ..add(const _i1.XmlElementName('AnalysisStartTimeBegin'))
        ..add(serializers.serialize(
          payload.analysisStartTimeBegin!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.analysisStartTimeEnd != null) {
      result
        ..add(const _i1.XmlElementName('AnalysisStartTimeEnd'))
        ..add(serializers.serialize(
          payload.analysisStartTimeEnd!,
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
