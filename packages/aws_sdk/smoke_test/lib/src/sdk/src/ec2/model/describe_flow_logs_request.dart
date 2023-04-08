// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_flow_logs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_flow_logs_request.g.dart';

abstract class DescribeFlowLogsRequest
    with
        _i1.HttpInput<DescribeFlowLogsRequest>,
        _i2.AWSEquatable<DescribeFlowLogsRequest>
    implements Built<DescribeFlowLogsRequest, DescribeFlowLogsRequestBuilder> {
  factory DescribeFlowLogsRequest({
    bool? dryRun,
    List<_i3.Filter>? filter,
    List<String>? flowLogIds,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeFlowLogsRequest._(
      dryRun: dryRun,
      filter: filter == null ? null : _i4.BuiltList(filter),
      flowLogIds: flowLogIds == null ? null : _i4.BuiltList(flowLogIds),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeFlowLogsRequest.build(
          [void Function(DescribeFlowLogsRequestBuilder) updates]) =
      _$DescribeFlowLogsRequest;

  const DescribeFlowLogsRequest._();

  factory DescribeFlowLogsRequest.fromRequest(
    DescribeFlowLogsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeFlowLogsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFlowLogsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// One or more filters.
  ///
  /// *   `deliver-log-status` \- The status of the logs delivery (`SUCCESS` | `FAILED`).
  ///
  /// *   `log-destination-type` \- The type of destination for the flow log data (`cloud-watch-logs` | `s3` | `kinesis-data-firehose`).
  ///
  /// *   `flow-log-id` \- The ID of the flow log.
  ///
  /// *   `log-group-name` \- The name of the log group.
  ///
  /// *   `resource-id` \- The ID of the VPC, subnet, or network interface.
  ///
  /// *   `traffic-type` \- The type of traffic (`ACCEPT` | `REJECT` | `ALL`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filter;

  /// One or more flow log IDs.
  ///
  /// Constraint: Maximum of 1000 flow log IDs.
  _i4.BuiltList<String>? get flowLogIds;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  DescribeFlowLogsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filter,
        flowLogIds,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFlowLogsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'flowLogIds',
      flowLogIds,
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

class DescribeFlowLogsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeFlowLogsRequest> {
  const DescribeFlowLogsRequestEc2QuerySerializer()
      : super('DescribeFlowLogsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFlowLogsRequest,
        _$DescribeFlowLogsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFlowLogsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFlowLogsRequestBuilder();
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
        case 'FlowLogId':
          if (value != null) {
            result.flowLogIds.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeFlowLogsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeFlowLogsRequestResponse',
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
    if (payload.flowLogIds != null) {
      result
        ..add(const _i1.XmlElementName('FlowLogId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.flowLogIds!,
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
