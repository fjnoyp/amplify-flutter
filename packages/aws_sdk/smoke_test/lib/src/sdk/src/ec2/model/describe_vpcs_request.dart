// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpcs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_vpcs_request.g.dart';

abstract class DescribeVpcsRequest
    with
        _i1.HttpInput<DescribeVpcsRequest>,
        _i2.AWSEquatable<DescribeVpcsRequest>
    implements Built<DescribeVpcsRequest, DescribeVpcsRequestBuilder> {
  factory DescribeVpcsRequest({
    List<_i3.Filter>? filters,
    List<String>? vpcIds,
    bool? dryRun,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcsRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      vpcIds: vpcIds == null ? null : _i4.BuiltList(vpcIds),
      dryRun: dryRun,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeVpcsRequest.build(
          [void Function(DescribeVpcsRequestBuilder) updates]) =
      _$DescribeVpcsRequest;

  const DescribeVpcsRequest._();

  factory DescribeVpcsRequest.fromRequest(
    DescribeVpcsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVpcsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// One or more filters.
  ///
  /// *   `cidr` \- The primary IPv4 CIDR block of the VPC. The CIDR block you specify must exactly match the VPC's CIDR block for information to be returned for the VPC. Must contain the slash followed by one or two digits (for example, `/28`).
  ///
  /// *   `cidr-block-association.cidr-block` \- An IPv4 CIDR block associated with the VPC.
  ///
  /// *   `cidr-block-association.association-id` \- The association ID for an IPv4 CIDR block associated with the VPC.
  ///
  /// *   `cidr-block-association.state` \- The state of an IPv4 CIDR block associated with the VPC.
  ///
  /// *   `dhcp-options-id` \- The ID of a set of DHCP options.
  ///
  /// *   `ipv6-cidr-block-association.ipv6-cidr-block` \- An IPv6 CIDR block associated with the VPC.
  ///
  /// *   `ipv6-cidr-block-association.ipv6-pool` \- The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.
  ///
  /// *   `ipv6-cidr-block-association.association-id` \- The association ID for an IPv6 CIDR block associated with the VPC.
  ///
  /// *   `ipv6-cidr-block-association.state` \- The state of an IPv6 CIDR block associated with the VPC.
  ///
  /// *   `is-default` \- Indicates whether the VPC is the default VPC.
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the VPC.
  ///
  /// *   `state` \- The state of the VPC (`pending` | `available`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// One or more VPC IDs.
  ///
  /// Default: Describes all your VPCs.
  _i4.BuiltList<String>? get vpcIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;
  @override
  DescribeVpcsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        vpcIds,
        dryRun,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcsRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'vpcIds',
      vpcIds,
    );
    helper.add(
      'dryRun',
      dryRun,
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

class DescribeVpcsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVpcsRequest> {
  const DescribeVpcsRequestEc2QuerySerializer() : super('DescribeVpcsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcsRequest,
        _$DescribeVpcsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcsRequestBuilder();
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
        case 'VpcId':
          if (value != null) {
            result.vpcIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'VpcId',
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
        case 'dryRun':
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
    final payload = (object as DescribeVpcsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcsRequestResponse',
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
    if (payload.vpcIds != null) {
      result
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VpcId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
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
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
