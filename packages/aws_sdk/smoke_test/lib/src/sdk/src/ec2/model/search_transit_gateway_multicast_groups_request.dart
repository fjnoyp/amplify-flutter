// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.search_transit_gateway_multicast_groups_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'search_transit_gateway_multicast_groups_request.g.dart';

abstract class SearchTransitGatewayMulticastGroupsRequest
    with
        _i1.HttpInput<SearchTransitGatewayMulticastGroupsRequest>,
        _i2.AWSEquatable<SearchTransitGatewayMulticastGroupsRequest>
    implements
        Built<SearchTransitGatewayMulticastGroupsRequest,
            SearchTransitGatewayMulticastGroupsRequestBuilder> {
  factory SearchTransitGatewayMulticastGroupsRequest({
    String? transitGatewayMulticastDomainId,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$SearchTransitGatewayMulticastGroupsRequest._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory SearchTransitGatewayMulticastGroupsRequest.build(
      [void Function(SearchTransitGatewayMulticastGroupsRequestBuilder)
          updates]) = _$SearchTransitGatewayMulticastGroupsRequest;

  const SearchTransitGatewayMulticastGroupsRequest._();

  factory SearchTransitGatewayMulticastGroupsRequest.fromRequest(
    SearchTransitGatewayMulticastGroupsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SearchTransitGatewayMulticastGroupsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SearchTransitGatewayMulticastGroupsRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// One or more filters. The possible values are:
  ///
  /// *   `group-ip-address` \- The IP address of the transit gateway multicast group.
  ///
  /// *   `is-group-member` \- The resource is a group member. Valid values are `true` | `false`.
  ///
  /// *   `is-group-source` \- The resource is a group source. Valid values are `true` | `false`.
  ///
  /// *   `member-type` \- The member type. Valid values are `igmp` | `static`.
  ///
  /// *   `resource-id` \- The ID of the resource.
  ///
  /// *   `resource-type` \- The type of resource. Valid values are `vpc` | `vpn` | `direct-connect-gateway` | `tgw-peering`.
  ///
  /// *   `source-type` \- The source type. Valid values are `igmp` | `static`.
  ///
  /// *   `subnet-id` \- The ID of the subnet.
  ///
  /// *   `transit-gateway-attachment-id` \- The id of the transit gateway attachment.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  SearchTransitGatewayMulticastGroupsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'SearchTransitGatewayMulticastGroupsRequest');
    helper.add(
      'transitGatewayMulticastDomainId',
      transitGatewayMulticastDomainId,
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

class SearchTransitGatewayMulticastGroupsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<SearchTransitGatewayMulticastGroupsRequest> {
  const SearchTransitGatewayMulticastGroupsRequestEc2QuerySerializer()
      : super('SearchTransitGatewayMulticastGroupsRequest');

  @override
  Iterable<Type> get types => const [
        SearchTransitGatewayMulticastGroupsRequest,
        _$SearchTransitGatewayMulticastGroupsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchTransitGatewayMulticastGroupsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTransitGatewayMulticastGroupsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayMulticastDomainId':
          if (value != null) {
            result.transitGatewayMulticastDomainId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as SearchTransitGatewayMulticastGroupsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'SearchTransitGatewayMulticastGroupsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayMulticastDomainId != null) {
      result
        ..add(const _i1.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          payload.transitGatewayMulticastDomainId!,
          specifiedType: const FullType(String),
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
