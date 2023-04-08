// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_services_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_vpc_endpoint_services_request.g.dart';

/// Contains the parameters for DescribeVpcEndpointServices.
abstract class DescribeVpcEndpointServicesRequest
    with
        _i1.HttpInput<DescribeVpcEndpointServicesRequest>,
        _i2.AWSEquatable<DescribeVpcEndpointServicesRequest>
    implements
        Built<DescribeVpcEndpointServicesRequest,
            DescribeVpcEndpointServicesRequestBuilder> {
  /// Contains the parameters for DescribeVpcEndpointServices.
  factory DescribeVpcEndpointServicesRequest({
    bool? dryRun,
    List<String>? serviceNames,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcEndpointServicesRequest._(
      dryRun: dryRun,
      serviceNames: serviceNames == null ? null : _i4.BuiltList(serviceNames),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  /// Contains the parameters for DescribeVpcEndpointServices.
  factory DescribeVpcEndpointServicesRequest.build(
          [void Function(DescribeVpcEndpointServicesRequestBuilder) updates]) =
      _$DescribeVpcEndpointServicesRequest;

  const DescribeVpcEndpointServicesRequest._();

  factory DescribeVpcEndpointServicesRequest.fromRequest(
    DescribeVpcEndpointServicesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVpcEndpointServicesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointServicesRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more service names.
  _i4.BuiltList<String>? get serviceNames;

  /// One or more filters.
  ///
  /// *   `service-name` \- The name of the service.
  ///
  /// *   `service-type` \- The type of service (`Interface` | `Gateway`).
  ///
  /// *   `supported-ip-address-types` \- The IP address type (`ipv4` | `ipv6`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
  ///
  /// Constraint: If the value is greater than 1,000, we return only 1,000 items.
  int get maxResults;

  /// The token for the next set of items to return. (You received this token from a prior call.)
  String? get nextToken;
  @override
  DescribeVpcEndpointServicesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceNames,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcEndpointServicesRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'serviceNames',
      serviceNames,
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

class DescribeVpcEndpointServicesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVpcEndpointServicesRequest> {
  const DescribeVpcEndpointServicesRequestEc2QuerySerializer()
      : super('DescribeVpcEndpointServicesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServicesRequest,
        _$DescribeVpcEndpointServicesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServicesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServicesRequestBuilder();
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
        case 'ServiceName':
          if (value != null) {
            result.serviceNames.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeVpcEndpointServicesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcEndpointServicesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.serviceNames != null) {
      result
        ..add(const _i1.XmlElementName('ServiceName'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.serviceNames!,
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
