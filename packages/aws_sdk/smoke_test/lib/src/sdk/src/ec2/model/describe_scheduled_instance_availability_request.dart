// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_scheduled_instance_availability_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/scheduled_instance_recurrence_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/slot_date_time_range_request.dart'
    as _i4;

part 'describe_scheduled_instance_availability_request.g.dart';

/// Contains the parameters for DescribeScheduledInstanceAvailability.
abstract class DescribeScheduledInstanceAvailabilityRequest
    with
        _i1.HttpInput<DescribeScheduledInstanceAvailabilityRequest>,
        _i2.AWSEquatable<DescribeScheduledInstanceAvailabilityRequest>
    implements
        Built<DescribeScheduledInstanceAvailabilityRequest,
            DescribeScheduledInstanceAvailabilityRequestBuilder> {
  /// Contains the parameters for DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityRequest({
    bool? dryRun,
    List<_i3.Filter>? filters,
    required _i4.SlotDateTimeRangeRequest firstSlotStartTimeRange,
    int? maxResults,
    int? maxSlotDurationInHours,
    int? minSlotDurationInHours,
    String? nextToken,
    required _i5.ScheduledInstanceRecurrenceRequest recurrence,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    maxSlotDurationInHours ??= 0;
    minSlotDurationInHours ??= 0;
    return _$DescribeScheduledInstanceAvailabilityRequest._(
      dryRun: dryRun,
      filters: filters == null ? null : _i6.BuiltList(filters),
      firstSlotStartTimeRange: firstSlotStartTimeRange,
      maxResults: maxResults,
      maxSlotDurationInHours: maxSlotDurationInHours,
      minSlotDurationInHours: minSlotDurationInHours,
      nextToken: nextToken,
      recurrence: recurrence,
    );
  }

  /// Contains the parameters for DescribeScheduledInstanceAvailability.
  factory DescribeScheduledInstanceAvailabilityRequest.build(
      [void Function(DescribeScheduledInstanceAvailabilityRequestBuilder)
          updates]) = _$DescribeScheduledInstanceAvailabilityRequest;

  const DescribeScheduledInstanceAvailabilityRequest._();

  factory DescribeScheduledInstanceAvailabilityRequest.fromRequest(
    DescribeScheduledInstanceAvailabilityRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeScheduledInstanceAvailabilityRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeScheduledInstanceAvailabilityRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
    b.maxSlotDurationInHours = 0;
    b.minSlotDurationInHours = 0;
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
  _i6.BuiltList<_i3.Filter>? get filters;

  /// The time period for the first schedule to start.
  _i4.SlotDateTimeRangeRequest get firstSlotStartTimeRange;

  /// The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 300. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The maximum available duration, in hours. This value must be greater than `MinSlotDurationInHours` and less than 1,720.
  int get maxSlotDurationInHours;

  /// The minimum available duration, in hours. The minimum required duration is 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
  int get minSlotDurationInHours;

  /// The token for the next set of results.
  String? get nextToken;

  /// The schedule recurrence.
  _i5.ScheduledInstanceRecurrenceRequest get recurrence;
  @override
  DescribeScheduledInstanceAvailabilityRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        filters,
        firstSlotStartTimeRange,
        maxResults,
        maxSlotDurationInHours,
        minSlotDurationInHours,
        nextToken,
        recurrence,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeScheduledInstanceAvailabilityRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'firstSlotStartTimeRange',
      firstSlotStartTimeRange,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'maxSlotDurationInHours',
      maxSlotDurationInHours,
    );
    helper.add(
      'minSlotDurationInHours',
      minSlotDurationInHours,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'recurrence',
      recurrence,
    );
    return helper.toString();
  }
}

class DescribeScheduledInstanceAvailabilityRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeScheduledInstanceAvailabilityRequest> {
  const DescribeScheduledInstanceAvailabilityRequestEc2QuerySerializer()
      : super('DescribeScheduledInstanceAvailabilityRequest');

  @override
  Iterable<Type> get types => const [
        DescribeScheduledInstanceAvailabilityRequest,
        _$DescribeScheduledInstanceAvailabilityRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeScheduledInstanceAvailabilityRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeScheduledInstanceAvailabilityRequestBuilder();
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
                _i6.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i6.BuiltList<_i3.Filter>));
          }
          break;
        case 'FirstSlotStartTimeRange':
          result.firstSlotStartTimeRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.SlotDateTimeRangeRequest),
          ) as _i4.SlotDateTimeRangeRequest));
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'MaxSlotDurationInHours':
          result.maxSlotDurationInHours = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'MinSlotDurationInHours':
          result.minSlotDurationInHours = (serializers.deserialize(
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
        case 'Recurrence':
          result.recurrence.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i5.ScheduledInstanceRecurrenceRequest),
          ) as _i5.ScheduledInstanceRecurrenceRequest));
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
    final payload = (object as DescribeScheduledInstanceAvailabilityRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeScheduledInstanceAvailabilityRequestResponse',
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
            _i6.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('FirstSlotStartTimeRange'))
      ..add(serializers.serialize(
        payload.firstSlotStartTimeRange,
        specifiedType: const FullType(_i4.SlotDateTimeRangeRequest),
      ));
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('MaxSlotDurationInHours'))
      ..add(serializers.serialize(
        payload.maxSlotDurationInHours,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('MinSlotDurationInHours'))
      ..add(serializers.serialize(
        payload.minSlotDurationInHours,
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
      ..add(const _i1.XmlElementName('Recurrence'))
      ..add(serializers.serialize(
        payload.recurrence,
        specifiedType: const FullType(_i5.ScheduledInstanceRecurrenceRequest),
      ));
    return result;
  }
}
