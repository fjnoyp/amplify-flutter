// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_scheduled_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/slot_start_time_range_request.dart'
    as _i4;

part 'describe_scheduled_instances_request.g.dart';

/// Contains the parameters for DescribeScheduledInstances.
abstract class DescribeScheduledInstancesRequest
    with
        _i1.HttpInput<DescribeScheduledInstancesRequest>,
        _i2.AWSEquatable<DescribeScheduledInstancesRequest>
    implements
        Built<DescribeScheduledInstancesRequest,
            DescribeScheduledInstancesRequestBuilder> {
  /// Contains the parameters for DescribeScheduledInstances.
  factory DescribeScheduledInstancesRequest({
    bool? dryRun,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    List<String>? scheduledInstanceIds,
    _i4.SlotStartTimeRangeRequest? slotStartTimeRange,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeScheduledInstancesRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i5.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      scheduledInstanceIds: scheduledInstanceIds == null
          ? null
          : _i5.BuiltList(scheduledInstanceIds),
      slotStartTimeRange: slotStartTimeRange,
    );
  }

  /// Contains the parameters for DescribeScheduledInstances.
  factory DescribeScheduledInstancesRequest.build(
          [void Function(DescribeScheduledInstancesRequestBuilder) updates]) =
      _$DescribeScheduledInstancesRequest;

  const DescribeScheduledInstancesRequest._();

  factory DescribeScheduledInstancesRequest.fromRequest(
    DescribeScheduledInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeScheduledInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeScheduledInstancesRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The filters.
  ///
  /// *   `availability-zone` \- The Availability Zone (for example, `us-west-2a`).
  ///
  /// *   `instance-type` \- The instance type (for example, `c4.large`).
  ///
  /// *   `network-platform` \- The network platform (`EC2-Classic` or `EC2-VPC`).
  ///
  /// *   `platform` \- The platform (`Linux/UNIX` or `Windows`).
  _i5.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// The Scheduled Instance IDs.
  _i5.BuiltList<String>? get scheduledInstanceIds;

  /// The time period for the first schedule to start.
  _i4.SlotStartTimeRangeRequest? get slotStartTimeRange;
  @override
  DescribeScheduledInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        maxResults,
        nextToken,
        scheduledInstanceIds,
        slotStartTimeRange,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeScheduledInstancesRequest');
    helper.add(
      'dryRun',
      dryRun,
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
      'scheduledInstanceIds',
      scheduledInstanceIds,
    );
    helper.add(
      'slotStartTimeRange',
      slotStartTimeRange,
    );
    return helper.toString();
  }
}

class DescribeScheduledInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeScheduledInstancesRequest> {
  const DescribeScheduledInstancesRequestEc2QuerySerializer()
      : super('DescribeScheduledInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstancesRequest,
        _$DescribeScheduledInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstancesRequestBuilder();
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
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i5.BuiltList<_i3.Filter>));
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
        case 'ScheduledInstanceId':
          if (value != null) {
            result.scheduledInstanceIds
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ScheduledInstanceId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'SlotStartTimeRange':
          if (value != null) {
            result.slotStartTimeRange.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.SlotStartTimeRangeRequest),
            ) as _i4.SlotStartTimeRangeRequest));
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
    final payload = (object as DescribeScheduledInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeScheduledInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
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
            _i5.BuiltList,
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
    if (payload.scheduledInstanceIds != null) {
      result
        ..add(const _i1.XmlElementName('ScheduledInstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ScheduledInstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.scheduledInstanceIds!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.slotStartTimeRange != null) {
      result
        ..add(const _i1.XmlElementName('SlotStartTimeRange'))
        ..add(serializers.serialize(
          payload.slotStartTimeRange!,
          specifiedType: const FullType(_i4.SlotStartTimeRangeRequest),
        ));
    }
    return result;
  }
}
