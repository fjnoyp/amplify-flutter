// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_service_configurations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_vpc_endpoint_service_configurations_request.g.dart';

abstract class DescribeVpcEndpointServiceConfigurationsRequest
    with
        _i1.HttpInput<DescribeVpcEndpointServiceConfigurationsRequest>,
        _i2.AWSEquatable<DescribeVpcEndpointServiceConfigurationsRequest>
    implements
        Built<DescribeVpcEndpointServiceConfigurationsRequest,
            DescribeVpcEndpointServiceConfigurationsRequestBuilder> {
  factory DescribeVpcEndpointServiceConfigurationsRequest({
    bool? dryRun,
    List<String>? serviceIds,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcEndpointServiceConfigurationsRequest._(
      dryRun: dryRun,
      serviceIds: serviceIds == null ? null : _i4.BuiltList(serviceIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointServiceConfigurationsRequest.build(
      [void Function(DescribeVpcEndpointServiceConfigurationsRequestBuilder)
          updates]) = _$DescribeVpcEndpointServiceConfigurationsRequest;

  const DescribeVpcEndpointServiceConfigurationsRequest._();

  factory DescribeVpcEndpointServiceConfigurationsRequest.fromRequest(
    DescribeVpcEndpointServiceConfigurationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVpcEndpointServiceConfigurationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointServiceConfigurationsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of one or more services.
  _i4.BuiltList<String>? get serviceIds;

  /// One or more filters.
  ///
  /// *   `service-name` \- The name of the service.
  ///
  /// *   `service-id` \- The ID of the service.
  ///
  /// *   `service-state` \- The state of the service (`Pending` | `Available` | `Deleting` | `Deleted` | `Failed`).
  ///
  /// *   `supported-ip-address-types` \- The IP address type (`ipv4` | `ipv6`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1,000; if `MaxResults` is given a value larger than 1,000, only 1,000 results are returned.
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeVpcEndpointServiceConfigurationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceIds,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointServiceConfigurationsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'serviceIds',
      serviceIds,
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
    return helper.toString();
  }
}

class DescribeVpcEndpointServiceConfigurationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeVpcEndpointServiceConfigurationsRequest> {
  const DescribeVpcEndpointServiceConfigurationsRequestEc2QuerySerializer()
      : super('DescribeVpcEndpointServiceConfigurationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServiceConfigurationsRequest,
        _$DescribeVpcEndpointServiceConfigurationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServiceConfigurationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServiceConfigurationsRequestBuilder();
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
        case 'ServiceId':
          if (value != null) {
            result.serviceIds.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeVpcEndpointServiceConfigurationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcEndpointServiceConfigurationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.serviceIds != null) {
      result
        ..add(const _i1.XmlElementName('ServiceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.serviceIds!,
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
    return result;
  }
}
