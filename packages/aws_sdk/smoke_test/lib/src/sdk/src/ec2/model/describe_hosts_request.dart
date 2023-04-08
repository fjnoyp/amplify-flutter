// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_hosts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_hosts_request.g.dart';

abstract class DescribeHostsRequest
    with
        _i1.HttpInput<DescribeHostsRequest>,
        _i2.AWSEquatable<DescribeHostsRequest>
    implements Built<DescribeHostsRequest, DescribeHostsRequestBuilder> {
  factory DescribeHostsRequest({
    List<_i3.Filter>? filter,
    List<String>? hostIds,
    int? maxResults,
    String? nextToken,
  }) {
    maxResults ??= 0;
    return _$DescribeHostsRequest._(
      filter: filter == null ? null : _i4.BuiltList(filter),
      hostIds: hostIds == null ? null : _i4.BuiltList(hostIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeHostsRequest.build(
          [void Function(DescribeHostsRequestBuilder) updates]) =
      _$DescribeHostsRequest;

  const DescribeHostsRequest._();

  factory DescribeHostsRequest.fromRequest(
    DescribeHostsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeHostsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeHostsRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `auto-placement` \- Whether auto-placement is enabled or disabled (`on` | `off`).
  ///
  /// *   `availability-zone` \- The Availability Zone of the host.
  ///
  /// *   `client-token` \- The idempotency token that you provided when you allocated the host.
  ///
  /// *   `host-reservation-id` \- The ID of the reservation assigned to this host.
  ///
  /// *   `instance-type` \- The instance type size that the Dedicated Host is configured to support.
  ///
  /// *   `state` \- The allocation state of the Dedicated Host (`available` | `under-assessment` | `permanent-failure` | `released` | `released-permanent-failure`).
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filter;

  /// The IDs of the Dedicated Hosts. The IDs are used for targeted instance launches.
  _i4.BuiltList<String>? get hostIds;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
  ///
  /// You cannot specify this parameter and the host IDs parameter in the same request.
  int get maxResults;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeHostsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filter,
        hostIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeHostsRequest');
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'hostIds',
      hostIds,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeHostsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeHostsRequest> {
  const DescribeHostsRequestEc2QuerySerializer()
      : super('DescribeHostsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeHostsRequest,
        _$DescribeHostsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'filter':
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
        case 'hostId':
          if (value != null) {
            result.hostIds.replace((const _i1.XmlBuiltListSerializer(
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
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'nextToken':
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
    final payload = (object as DescribeHostsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeHostsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
    if (payload.hostIds != null) {
      result
        ..add(const _i1.XmlElementName('HostId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.hostIds!,
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
    return result;
  }
}
