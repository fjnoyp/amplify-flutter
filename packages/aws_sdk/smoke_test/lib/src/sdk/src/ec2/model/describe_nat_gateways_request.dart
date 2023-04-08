// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_nat_gateways_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_nat_gateways_request.g.dart';

abstract class DescribeNatGatewaysRequest
    with
        _i1.HttpInput<DescribeNatGatewaysRequest>,
        _i2.AWSEquatable<DescribeNatGatewaysRequest>
    implements
        Built<DescribeNatGatewaysRequest, DescribeNatGatewaysRequestBuilder> {
  factory DescribeNatGatewaysRequest({
    bool? dryRun,
    List<_i3.Filter>? filter,
    int? maxResults,
    List<String>? natGatewayIds,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeNatGatewaysRequest._(
      dryRun: dryRun,
      filter: filter == null ? null : _i4.BuiltList(filter),
      maxResults: maxResults,
      natGatewayIds:
          natGatewayIds == null ? null : _i4.BuiltList(natGatewayIds),
      nextToken: nextToken,
    );
  }

  factory DescribeNatGatewaysRequest.build(
          [void Function(DescribeNatGatewaysRequestBuilder) updates]) =
      _$DescribeNatGatewaysRequest;

  const DescribeNatGatewaysRequest._();

  factory DescribeNatGatewaysRequest.fromRequest(
    DescribeNatGatewaysRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeNatGatewaysRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNatGatewaysRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters.
  ///
  /// *   `nat-gateway-id` \- The ID of the NAT gateway.
  ///
  /// *   `state` \- The state of the NAT gateway (`pending` | `failed` | `available` | `deleting` | `deleted`).
  ///
  /// *   `subnet-id` \- The ID of the subnet in which the NAT gateway resides.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC in which the NAT gateway resides.
  _i4.BuiltList<_i3.Filter>? get filter;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// One or more NAT gateway IDs.
  _i4.BuiltList<String>? get natGatewayIds;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeNatGatewaysRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filter,
        maxResults,
        natGatewayIds,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeNatGatewaysRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'natGatewayIds',
      natGatewayIds,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNatGatewaysRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeNatGatewaysRequest> {
  const DescribeNatGatewaysRequestEc2QuerySerializer()
      : super('DescribeNatGatewaysRequest');

  @override
  Iterable<Type> get types => const [
        DescribeNatGatewaysRequest,
        _$DescribeNatGatewaysRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNatGatewaysRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNatGatewaysRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Filter':
          if (value != null) {
            result.filter.replace((const _i1.XmlBuiltListSerializer(
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
        case 'NatGatewayId':
          if (value != null) {
            result.natGatewayIds.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeNatGatewaysRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeNatGatewaysRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.filter != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filter!,
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
    if (payload.natGatewayIds != null) {
      result
        ..add(const _i1.XmlElementName('NatGatewayId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.natGatewayIds!,
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
    return result;
  }
}
