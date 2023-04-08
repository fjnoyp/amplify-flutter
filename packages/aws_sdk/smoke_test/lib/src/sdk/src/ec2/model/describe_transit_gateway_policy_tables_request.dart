// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_policy_tables_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_transit_gateway_policy_tables_request.g.dart';

abstract class DescribeTransitGatewayPolicyTablesRequest
    with
        _i1.HttpInput<DescribeTransitGatewayPolicyTablesRequest>,
        _i2.AWSEquatable<DescribeTransitGatewayPolicyTablesRequest>
    implements
        Built<DescribeTransitGatewayPolicyTablesRequest,
            DescribeTransitGatewayPolicyTablesRequestBuilder> {
  factory DescribeTransitGatewayPolicyTablesRequest({
    List<String>? transitGatewayPolicyTableIds,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeTransitGatewayPolicyTablesRequest._(
      transitGatewayPolicyTableIds: transitGatewayPolicyTableIds == null
          ? null
          : _i4.BuiltList(transitGatewayPolicyTableIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeTransitGatewayPolicyTablesRequest.build(
      [void Function(DescribeTransitGatewayPolicyTablesRequestBuilder)
          updates]) = _$DescribeTransitGatewayPolicyTablesRequest;

  const DescribeTransitGatewayPolicyTablesRequest._();

  factory DescribeTransitGatewayPolicyTablesRequest.fromRequest(
    DescribeTransitGatewayPolicyTablesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeTransitGatewayPolicyTablesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayPolicyTablesRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The IDs of the transit gateway policy tables.
  _i4.BuiltList<String>? get transitGatewayPolicyTableIds;

  /// The filters associated with the transit gateway policy table.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeTransitGatewayPolicyTablesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTableIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeTransitGatewayPolicyTablesRequest');
    helper.add(
      'transitGatewayPolicyTableIds',
      transitGatewayPolicyTableIds,
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
      'nextToken',
      nextToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayPolicyTablesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeTransitGatewayPolicyTablesRequest> {
  const DescribeTransitGatewayPolicyTablesRequestEc2QuerySerializer()
      : super('DescribeTransitGatewayPolicyTablesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayPolicyTablesRequest,
        _$DescribeTransitGatewayPolicyTablesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayPolicyTablesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayPolicyTablesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayPolicyTableIds':
          if (value != null) {
            result.transitGatewayPolicyTableIds
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
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DescribeTransitGatewayPolicyTablesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeTransitGatewayPolicyTablesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPolicyTableIds != null) {
      result
        ..add(const _i1.XmlElementName('TransitGatewayPolicyTableIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayPolicyTableIds!,
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
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
