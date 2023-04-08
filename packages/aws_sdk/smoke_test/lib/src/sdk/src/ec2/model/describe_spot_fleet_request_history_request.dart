// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_spot_fleet_request_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/event_type.dart' as _i3;

part 'describe_spot_fleet_request_history_request.g.dart';

/// Contains the parameters for DescribeSpotFleetRequestHistory.
abstract class DescribeSpotFleetRequestHistoryRequest
    with
        _i1.HttpInput<DescribeSpotFleetRequestHistoryRequest>,
        _i2.AWSEquatable<DescribeSpotFleetRequestHistoryRequest>
    implements
        Built<DescribeSpotFleetRequestHistoryRequest,
            DescribeSpotFleetRequestHistoryRequestBuilder> {
  /// Contains the parameters for DescribeSpotFleetRequestHistory.
  factory DescribeSpotFleetRequestHistoryRequest({
    bool? dryRun,
    _i3.EventType? eventType,
    int? maxResults,
    String? nextToken,
    required String spotFleetRequestId,
    required DateTime startTime,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotFleetRequestHistoryRequest._(
      dryRun: dryRun,
      eventType: eventType,
      maxResults: maxResults,
      nextToken: nextToken,
      spotFleetRequestId: spotFleetRequestId,
      startTime: startTime,
    );
  }

  /// Contains the parameters for DescribeSpotFleetRequestHistory.
  factory DescribeSpotFleetRequestHistoryRequest.build(
      [void Function(DescribeSpotFleetRequestHistoryRequestBuilder)
          updates]) = _$DescribeSpotFleetRequestHistoryRequest;

  const DescribeSpotFleetRequestHistoryRequest._();

  factory DescribeSpotFleetRequestHistoryRequest.fromRequest(
    DescribeSpotFleetRequestHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeSpotFleetRequestHistoryRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotFleetRequestHistoryRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The type of events to describe. By default, all events are described.
  _i3.EventType? get eventType;

  /// The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// The ID of the Spot Fleet request.
  String get spotFleetRequestId;

  /// The starting date and time for the events, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime get startTime;
  @override
  DescribeSpotFleetRequestHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        eventType,
        maxResults,
        nextToken,
        spotFleetRequestId,
        startTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetRequestHistoryRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'eventType',
      eventType,
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
      'spotFleetRequestId',
      spotFleetRequestId,
    );
    helper.add(
      'startTime',
      startTime,
    );
    return helper.toString();
  }
}

class DescribeSpotFleetRequestHistoryRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeSpotFleetRequestHistoryRequest> {
  const DescribeSpotFleetRequestHistoryRequestEc2QuerySerializer()
      : super('DescribeSpotFleetRequestHistoryRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetRequestHistoryRequest,
        _$DescribeSpotFleetRequestHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetRequestHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetRequestHistoryRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'eventType':
          if (value != null) {
            result.eventType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EventType),
            ) as _i3.EventType);
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
        case 'spotFleetRequestId':
          result.spotFleetRequestId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'startTime':
          result.startTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
    final payload = (object as DescribeSpotFleetRequestHistoryRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotFleetRequestHistoryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.eventType != null) {
      result
        ..add(const _i1.XmlElementName('EventType'))
        ..add(serializers.serialize(
          payload.eventType!,
          specifiedType: const FullType.nullable(_i3.EventType),
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
      ..add(const _i1.XmlElementName('SpotFleetRequestId'))
      ..add(serializers.serialize(
        payload.spotFleetRequestId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('StartTime'))
      ..add(serializers.serialize(
        payload.startTime,
        specifiedType: const FullType.nullable(DateTime),
      ));
    return result;
  }
}
