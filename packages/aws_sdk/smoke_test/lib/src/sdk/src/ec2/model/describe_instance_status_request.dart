// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_instance_status_request.g.dart';

abstract class DescribeInstanceStatusRequest
    with
        _i1.HttpInput<DescribeInstanceStatusRequest>,
        _i2.AWSEquatable<DescribeInstanceStatusRequest>
    implements
        Built<DescribeInstanceStatusRequest,
            DescribeInstanceStatusRequestBuilder> {
  factory DescribeInstanceStatusRequest({
    List<_i3.Filter>? filters,
    List<String>? instanceIds,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
    bool? includeAllInstances,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    includeAllInstances ??= false;
    return _$DescribeInstanceStatusRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      instanceIds: instanceIds == null ? null : _i4.BuiltList(instanceIds),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
      includeAllInstances: includeAllInstances,
    );
  }

  factory DescribeInstanceStatusRequest.build(
          [void Function(DescribeInstanceStatusRequestBuilder) updates]) =
      _$DescribeInstanceStatusRequest;

  const DescribeInstanceStatusRequest._();

  factory DescribeInstanceStatusRequest.fromRequest(
    DescribeInstanceStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeInstanceStatusRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceStatusRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
    b.includeAllInstances = false;
  }

  /// The filters.
  ///
  /// *   `availability-zone` \- The Availability Zone of the instance.
  ///
  /// *   `event.code` \- The code for the scheduled event (`instance-reboot` | `system-reboot` | `system-maintenance` | `instance-retirement` | `instance-stop`).
  ///
  /// *   `event.description` \- A description of the event.
  ///
  /// *   `event.instance-event-id` \- The ID of the event whose date and time you are modifying.
  ///
  /// *   `event.not-after` \- The latest end time for the scheduled event (for example, `2014-09-15T17:15:20.000Z`).
  ///
  /// *   `event.not-before` \- The earliest start time for the scheduled event (for example, `2014-09-15T17:15:20.000Z`).
  ///
  /// *   `event.not-before-deadline` \- The deadline for starting the event (for example, `2014-09-15T17:15:20.000Z`).
  ///
  /// *   `instance-state-code` \- The code for the instance state, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
  ///
  /// *   `instance-state-name` \- The state of the instance (`pending` | `running` | `shutting-down` | `terminated` | `stopping` | `stopped`).
  ///
  /// *   `instance-status.reachability` \- Filters on instance status where the name is `reachability` (`passed` | `failed` | `initializing` | `insufficient-data`).
  ///
  /// *   `instance-status.status` \- The status of the instance (`ok` | `impaired` | `initializing` | `insufficient-data` | `not-applicable`).
  ///
  /// *   `system-status.reachability` \- Filters on system status where the name is `reachability` (`passed` | `failed` | `initializing` | `insufficient-data`).
  ///
  /// *   `system-status.status` \- The system status of the instance (`ok` | `impaired` | `initializing` | `insufficient-data` | `not-applicable`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The instance IDs.
  ///
  /// Default: Describes all your instances.
  ///
  /// Constraints: Maximum 100 explicitly specified instance IDs.
  _i4.BuiltList<String>? get instanceIds;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// When `true`, includes the health status for all instances. When `false`, includes the health status for running instances only.
  ///
  /// Default: `false`
  bool get includeAllInstances;
  @override
  DescribeInstanceStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        instanceIds,
        maxResults,
        nextToken,
        dryRun,
        includeAllInstances,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstanceStatusRequest');
    helper.add(
      'filters',
      filters,
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
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'includeAllInstances',
      includeAllInstances,
    );
    return helper.toString();
  }
}

class DescribeInstanceStatusRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeInstanceStatusRequest> {
  const DescribeInstanceStatusRequestEc2QuerySerializer()
      : super('DescribeInstanceStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceStatusRequest,
        _$DescribeInstanceStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceStatusRequestBuilder();
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'includeAllInstances':
          result.includeAllInstances = (serializers.deserialize(
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
    final payload = (object as DescribeInstanceStatusRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceStatusRequestResponse',
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
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('IncludeAllInstances'))
      ..add(serializers.serialize(
        payload.includeAllInstances,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
