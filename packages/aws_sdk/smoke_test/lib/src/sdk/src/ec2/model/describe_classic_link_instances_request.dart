// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_classic_link_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_classic_link_instances_request.g.dart';

abstract class DescribeClassicLinkInstancesRequest
    with
        _i1.HttpInput<DescribeClassicLinkInstancesRequest>,
        _i2.AWSEquatable<DescribeClassicLinkInstancesRequest>
    implements
        Built<DescribeClassicLinkInstancesRequest,
            DescribeClassicLinkInstancesRequestBuilder> {
  factory DescribeClassicLinkInstancesRequest({
    List<_i3.Filter>? filters,
    bool? dryRun,
    List<String>? instanceIds,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeClassicLinkInstancesRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      dryRun: dryRun,
      instanceIds: instanceIds == null ? null : _i4.BuiltList(instanceIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeClassicLinkInstancesRequest.build(
          [void Function(DescribeClassicLinkInstancesRequestBuilder) updates]) =
      _$DescribeClassicLinkInstancesRequest;

  const DescribeClassicLinkInstancesRequest._();

  factory DescribeClassicLinkInstancesRequest.fromRequest(
    DescribeClassicLinkInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeClassicLinkInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeClassicLinkInstancesRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// One or more filters.
  ///
  /// *   `group-id` \- The ID of a VPC security group that's associated with the instance.
  ///
  /// *   `instance-id` \- The ID of the instance.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `vpc-id` \- The ID of the VPC to which the instance is linked.
  ///
  ///     `vpc-id` \- The ID of the VPC that the instance is linked to.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more instance IDs. Must be instances linked to a VPC through ClassicLink.
  _i4.BuiltList<String>? get instanceIds;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  ///
  /// Constraint: If the value is greater than 1000, we return only 1000 items.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeClassicLinkInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        instanceIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeClassicLinkInstancesRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceIds',
      instanceIds,
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

class DescribeClassicLinkInstancesRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeClassicLinkInstancesRequest> {
  const DescribeClassicLinkInstancesRequestEc2QuerySerializer()
      : super('DescribeClassicLinkInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeClassicLinkInstancesRequest,
        _$DescribeClassicLinkInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeClassicLinkInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeClassicLinkInstancesRequestBuilder();
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
        case 'InstanceId':
          if (value != null) {
            result.instanceIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'InstanceId',
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
    final payload = (object as DescribeClassicLinkInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeClassicLinkInstancesRequestResponse',
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
    if (payload.instanceIds != null) {
      result
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'InstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceIds!,
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
