// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_peering_connections_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_vpc_peering_connections_request.g.dart';

abstract class DescribeVpcPeeringConnectionsRequest
    with
        _i1.HttpInput<DescribeVpcPeeringConnectionsRequest>,
        _i2.AWSEquatable<DescribeVpcPeeringConnectionsRequest>
    implements
        Built<DescribeVpcPeeringConnectionsRequest,
            DescribeVpcPeeringConnectionsRequestBuilder> {
  factory DescribeVpcPeeringConnectionsRequest({
    List<_i3.Filter>? filters,
    bool? dryRun,
    List<String>? vpcPeeringConnectionIds,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcPeeringConnectionsRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      dryRun: dryRun,
      vpcPeeringConnectionIds: vpcPeeringConnectionIds == null
          ? null
          : _i4.BuiltList(vpcPeeringConnectionIds),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeVpcPeeringConnectionsRequest.build(
      [void Function(DescribeVpcPeeringConnectionsRequestBuilder)
          updates]) = _$DescribeVpcPeeringConnectionsRequest;

  const DescribeVpcPeeringConnectionsRequest._();

  factory DescribeVpcPeeringConnectionsRequest.fromRequest(
    DescribeVpcPeeringConnectionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVpcPeeringConnectionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcPeeringConnectionsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// One or more filters.
  ///
  /// *   `accepter-vpc-info.cidr-block` \- The IPv4 CIDR block of the accepter VPC.
  ///
  /// *   `accepter-vpc-info.owner-id` \- The ID of the Amazon Web Services account that owns the accepter VPC.
  ///
  /// *   `accepter-vpc-info.vpc-id` \- The ID of the accepter VPC.
  ///
  /// *   `expiration-time` \- The expiration date and time for the VPC peering connection.
  ///
  /// *   `requester-vpc-info.cidr-block` \- The IPv4 CIDR block of the requester's VPC.
  ///
  /// *   `requester-vpc-info.owner-id` \- The ID of the Amazon Web Services account that owns the requester VPC.
  ///
  /// *   `requester-vpc-info.vpc-id` \- The ID of the requester VPC.
  ///
  /// *   `status-code` \- The status of the VPC peering connection (`pending-acceptance` | `failed` | `expired` | `provisioning` | `active` | `deleting` | `deleted` | `rejected`).
  ///
  /// *   `status-message` \- A message that provides more information about the status of the VPC peering connection, if applicable.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-peering-connection-id` \- The ID of the VPC peering connection.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more VPC peering connection IDs.
  ///
  /// Default: Describes all your VPC peering connections.
  _i4.BuiltList<String>? get vpcPeeringConnectionIds;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;
  @override
  DescribeVpcPeeringConnectionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        vpcPeeringConnectionIds,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcPeeringConnectionsRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'vpcPeeringConnectionIds',
      vpcPeeringConnectionIds,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class DescribeVpcPeeringConnectionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeVpcPeeringConnectionsRequest> {
  const DescribeVpcPeeringConnectionsRequestEc2QuerySerializer()
      : super('DescribeVpcPeeringConnectionsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcPeeringConnectionsRequest,
        _$DescribeVpcPeeringConnectionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcPeeringConnectionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcPeeringConnectionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'VpcPeeringConnectionId':
          if (value != null) {
            result.vpcPeeringConnectionIds
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
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
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
    final payload = (object as DescribeVpcPeeringConnectionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcPeeringConnectionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.vpcPeeringConnectionIds != null) {
      result
        ..add(const _i1.XmlElementName('VpcPeeringConnectionId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcPeeringConnectionIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
