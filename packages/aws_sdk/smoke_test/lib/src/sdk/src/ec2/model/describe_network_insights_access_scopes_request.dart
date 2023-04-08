// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_insights_access_scopes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_network_insights_access_scopes_request.g.dart';

abstract class DescribeNetworkInsightsAccessScopesRequest
    with
        _i1.HttpInput<DescribeNetworkInsightsAccessScopesRequest>,
        _i2.AWSEquatable<DescribeNetworkInsightsAccessScopesRequest>
    implements
        Built<DescribeNetworkInsightsAccessScopesRequest,
            DescribeNetworkInsightsAccessScopesRequestBuilder> {
  factory DescribeNetworkInsightsAccessScopesRequest({
    List<String>? networkInsightsAccessScopeIds,
    List<_i3.Filter>? filters,
    int? maxResults,
    bool? dryRun,
    String? nextToken,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeNetworkInsightsAccessScopesRequest._(
      networkInsightsAccessScopeIds: networkInsightsAccessScopeIds == null
          ? null
          : _i4.BuiltList(networkInsightsAccessScopeIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      dryRun: dryRun,
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAccessScopesRequest.build(
      [void Function(DescribeNetworkInsightsAccessScopesRequestBuilder)
          updates]) = _$DescribeNetworkInsightsAccessScopesRequest;

  const DescribeNetworkInsightsAccessScopesRequest._();

  factory DescribeNetworkInsightsAccessScopesRequest.fromRequest(
    DescribeNetworkInsightsAccessScopesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeNetworkInsightsAccessScopesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInsightsAccessScopesRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The IDs of the Network Access Scopes.
  _i4.BuiltList<String>? get networkInsightsAccessScopeIds;

  /// There are no supported filters.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeNetworkInsightsAccessScopesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeIds,
        filters,
        maxResults,
        dryRun,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInsightsAccessScopesRequest');
    helper.add(
      'networkInsightsAccessScopeIds',
      networkInsightsAccessScopeIds,
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

class DescribeNetworkInsightsAccessScopesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeNetworkInsightsAccessScopesRequest> {
  const DescribeNetworkInsightsAccessScopesRequestEc2QuerySerializer()
      : super('DescribeNetworkInsightsAccessScopesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAccessScopesRequest,
        _$DescribeNetworkInsightsAccessScopesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAccessScopesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAccessScopesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NetworkInsightsAccessScopeId':
          if (value != null) {
            result.networkInsightsAccessScopeIds
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
    final payload = (object as DescribeNetworkInsightsAccessScopesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeNetworkInsightsAccessScopesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScopeIds != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInsightsAccessScopeIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
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
