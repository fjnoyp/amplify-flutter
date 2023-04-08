// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_client_vpn_endpoints_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_client_vpn_endpoints_request.g.dart';

abstract class DescribeClientVpnEndpointsRequest
    with
        _i1.HttpInput<DescribeClientVpnEndpointsRequest>,
        _i2.AWSEquatable<DescribeClientVpnEndpointsRequest>
    implements
        Built<DescribeClientVpnEndpointsRequest,
            DescribeClientVpnEndpointsRequestBuilder> {
  factory DescribeClientVpnEndpointsRequest({
    List<String>? clientVpnEndpointIds,
    int? maxResults,
    String? nextToken,
    List<_i3.Filter>? filters,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeClientVpnEndpointsRequest._(
      clientVpnEndpointIds: clientVpnEndpointIds == null
          ? null
          : _i4.BuiltList(clientVpnEndpointIds),
      maxResults: maxResults,
      nextToken: nextToken,
      filters: filters == null ? null : _i4.BuiltList(filters),
      dryRun: dryRun,
    );
  }

  factory DescribeClientVpnEndpointsRequest.build(
          [void Function(DescribeClientVpnEndpointsRequestBuilder) updates]) =
      _$DescribeClientVpnEndpointsRequest;

  const DescribeClientVpnEndpointsRequest._();

  factory DescribeClientVpnEndpointsRequest.fromRequest(
    DescribeClientVpnEndpointsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeClientVpnEndpointsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClientVpnEndpointsRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  _i4.BuiltList<String>? get clientVpnEndpointIds;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `endpoint-id` \- The ID of the Client VPN endpoint.
  ///
  /// *   `transport-protocol` \- The transport protocol (`tcp` | `udp`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeClientVpnEndpointsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointIds,
        maxResults,
        nextToken,
        filters,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClientVpnEndpointsRequest');
    helper.add(
      'clientVpnEndpointIds',
      clientVpnEndpointIds,
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
      'filters',
      filters,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeClientVpnEndpointsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeClientVpnEndpointsRequest> {
  const DescribeClientVpnEndpointsRequestEc2QuerySerializer()
      : super('DescribeClientVpnEndpointsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeClientVpnEndpointsRequest,
        _$DescribeClientVpnEndpointsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClientVpnEndpointsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClientVpnEndpointsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientVpnEndpointId':
          if (value != null) {
            result.clientVpnEndpointIds
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
    final payload = (object as DescribeClientVpnEndpointsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeClientVpnEndpointsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientVpnEndpointIds != null) {
      result
        ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.clientVpnEndpointIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
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
    return result;
  }
}
