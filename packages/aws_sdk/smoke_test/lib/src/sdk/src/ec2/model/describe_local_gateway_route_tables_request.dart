// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_local_gateway_route_tables_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_local_gateway_route_tables_request.g.dart';

abstract class DescribeLocalGatewayRouteTablesRequest
    with
        _i1.HttpInput<DescribeLocalGatewayRouteTablesRequest>,
        _i2.AWSEquatable<DescribeLocalGatewayRouteTablesRequest>
    implements
        Built<DescribeLocalGatewayRouteTablesRequest,
            DescribeLocalGatewayRouteTablesRequestBuilder> {
  factory DescribeLocalGatewayRouteTablesRequest({
    List<String>? localGatewayRouteTableIds,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeLocalGatewayRouteTablesRequest._(
      localGatewayRouteTableIds: localGatewayRouteTableIds == null
          ? null
          : _i4.BuiltList(localGatewayRouteTableIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeLocalGatewayRouteTablesRequest.build(
      [void Function(DescribeLocalGatewayRouteTablesRequestBuilder)
          updates]) = _$DescribeLocalGatewayRouteTablesRequest;

  const DescribeLocalGatewayRouteTablesRequest._();

  factory DescribeLocalGatewayRouteTablesRequest.fromRequest(
    DescribeLocalGatewayRouteTablesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeLocalGatewayRouteTablesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLocalGatewayRouteTablesRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The IDs of the local gateway route tables.
  _i4.BuiltList<String>? get localGatewayRouteTableIds;

  /// One or more filters.
  ///
  /// *   `local-gateway-id` \- The ID of a local gateway.
  ///
  /// *   `local-gateway-route-table-arn` \- The Amazon Resource Name (ARN) of the local gateway route table.
  ///
  /// *   `local-gateway-route-table-id` \- The ID of a local gateway route table.
  ///
  /// *   `outpost-arn` \- The Amazon Resource Name (ARN) of the Outpost.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the local gateway route table.
  ///
  /// *   `state` \- The state of the local gateway route table.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeLocalGatewayRouteTablesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayRouteTableIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeLocalGatewayRouteTablesRequest');
    helper.add(
      'localGatewayRouteTableIds',
      localGatewayRouteTableIds,
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

class DescribeLocalGatewayRouteTablesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeLocalGatewayRouteTablesRequest> {
  const DescribeLocalGatewayRouteTablesRequestEc2QuerySerializer()
      : super('DescribeLocalGatewayRouteTablesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayRouteTablesRequest,
        _$DescribeLocalGatewayRouteTablesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayRouteTablesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayRouteTablesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'LocalGatewayRouteTableId':
          if (value != null) {
            result.localGatewayRouteTableIds
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
    final payload = (object as DescribeLocalGatewayRouteTablesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeLocalGatewayRouteTablesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTableIds != null) {
      result
        ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGatewayRouteTableIds!,
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
