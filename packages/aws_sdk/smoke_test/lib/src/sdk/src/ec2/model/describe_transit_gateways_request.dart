// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateways_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_transit_gateways_request.g.dart';

abstract class DescribeTransitGatewaysRequest
    with
        _i1.HttpInput<DescribeTransitGatewaysRequest>,
        _i2.AWSEquatable<DescribeTransitGatewaysRequest>
    implements
        Built<DescribeTransitGatewaysRequest,
            DescribeTransitGatewaysRequestBuilder> {
  factory DescribeTransitGatewaysRequest({
    List<String>? transitGatewayIds,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeTransitGatewaysRequest._(
      transitGatewayIds:
          transitGatewayIds == null ? null : _i4.BuiltList(transitGatewayIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeTransitGatewaysRequest.build(
          [void Function(DescribeTransitGatewaysRequestBuilder) updates]) =
      _$DescribeTransitGatewaysRequest;

  const DescribeTransitGatewaysRequest._();

  factory DescribeTransitGatewaysRequest.fromRequest(
    DescribeTransitGatewaysRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeTransitGatewaysRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewaysRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The IDs of the transit gateways.
  _i4.BuiltList<String>? get transitGatewayIds;

  /// One or more filters. The possible values are:
  ///
  /// *   `options.propagation-default-route-table-id` \- The ID of the default propagation route table.
  ///
  /// *   `options.amazon-side-asn` \- The private ASN for the Amazon side of a BGP session.
  ///
  /// *   `options.association-default-route-table-id` \- The ID of the default association route table.
  ///
  /// *   `options.auto-accept-shared-attachments` \- Indicates whether there is automatic acceptance of attachment requests (`enable` | `disable`).
  ///
  /// *   `options.default-route-table-association` \- Indicates whether resource attachments are automatically associated with the default association route table (`enable` | `disable`).
  ///
  /// *   `options.default-route-table-propagation` \- Indicates whether resource attachments automatically propagate routes to the default propagation route table (`enable` | `disable`).
  ///
  /// *   `options.dns-support` \- Indicates whether DNS support is enabled (`enable` | `disable`).
  ///
  /// *   `options.vpn-ecmp-support` \- Indicates whether Equal Cost Multipath Protocol support is enabled (`enable` | `disable`).
  ///
  /// *   `owner-id` \- The ID of the Amazon Web Services account that owns the transit gateway.
  ///
  /// *   `state` \- The state of the transit gateway (`available` | `deleted` | `deleting` | `modifying` | `pending`).
  ///
  /// *   `transit-gateway-id` \- The ID of the transit gateway.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeTransitGatewaysRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewaysRequest');
    helper.add(
      'transitGatewayIds',
      transitGatewayIds,
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

class DescribeTransitGatewaysRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeTransitGatewaysRequest> {
  const DescribeTransitGatewaysRequestEc2QuerySerializer()
      : super('DescribeTransitGatewaysRequest');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewaysRequest,
        _$DescribeTransitGatewaysRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewaysRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewaysRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayIds':
          if (value != null) {
            result.transitGatewayIds.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeTransitGatewaysRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeTransitGatewaysRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayIds != null) {
      result
        ..add(const _i1.XmlElementName('TransitGatewayIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayIds!,
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
