// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fleet_history_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/history_record_entry.dart'
    as _i2;

part 'describe_fleet_history_result.g.dart';

abstract class DescribeFleetHistoryResult
    with _i1.AWSEquatable<DescribeFleetHistoryResult>
    implements
        Built<DescribeFleetHistoryResult, DescribeFleetHistoryResultBuilder> {
  factory DescribeFleetHistoryResult({
    List<_i2.HistoryRecordEntry>? historyRecords,
    DateTime? lastEvaluatedTime,
    String? nextToken,
    String? fleetId,
    DateTime? startTime,
  }) {
    return _$DescribeFleetHistoryResult._(
      historyRecords:
          historyRecords == null ? null : _i3.BuiltList(historyRecords),
      lastEvaluatedTime: lastEvaluatedTime,
      nextToken: nextToken,
      fleetId: fleetId,
      startTime: startTime,
    );
  }

  factory DescribeFleetHistoryResult.build(
          [void Function(DescribeFleetHistoryResultBuilder) updates]) =
      _$DescribeFleetHistoryResult;

  const DescribeFleetHistoryResult._();

  /// Constructs a [DescribeFleetHistoryResult] from a [payload] and [response].
  factory DescribeFleetHistoryResult.fromResponse(
    DescribeFleetHistoryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeFleetHistoryResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFleetHistoryResultBuilder b) {}

  /// Information about the events in the history of the EC2 Fleet.
  _i3.BuiltList<_i2.HistoryRecordEntry>? get historyRecords;

  /// The last date and time for the events, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). All records up to this time were retrieved.
  ///
  /// If `nextToken` indicates that there are more results, this value is not present.
  DateTime? get lastEvaluatedTime;

  /// The token for the next set of results.
  String? get nextToken;

  /// The ID of the EC Fleet.
  String? get fleetId;

  /// The start date and time for the events, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get startTime;
  @override
  List<Object?> get props => [
        historyRecords,
        lastEvaluatedTime,
        nextToken,
        fleetId,
        startTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetHistoryResult');
    helper.add(
      'historyRecords',
      historyRecords,
    );
    helper.add(
      'lastEvaluatedTime',
      lastEvaluatedTime,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'fleetId',
      fleetId,
    );
    helper.add(
      'startTime',
      startTime,
    );
    return helper.toString();
  }
}

class DescribeFleetHistoryResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeFleetHistoryResult> {
  const DescribeFleetHistoryResultEc2QuerySerializer()
      : super('DescribeFleetHistoryResult');

  @override
  Iterable<Type> get types => const [
        DescribeFleetHistoryResult,
        _$DescribeFleetHistoryResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetHistoryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetHistoryResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'historyRecordSet':
          if (value != null) {
            result.historyRecords.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.HistoryRecordEntry)],
              ),
            ) as _i3.BuiltList<_i2.HistoryRecordEntry>));
          }
          break;
        case 'lastEvaluatedTime':
          if (value != null) {
            result.lastEvaluatedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'fleetId':
          if (value != null) {
            result.fleetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'startTime':
          if (value != null) {
            result.startTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as DescribeFleetHistoryResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeFleetHistoryResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.historyRecords != null) {
      result
        ..add(const _i4.XmlElementName('HistoryRecordSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.historyRecords!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.HistoryRecordEntry)],
          ),
        ));
    }
    if (payload.lastEvaluatedTime != null) {
      result
        ..add(const _i4.XmlElementName('LastEvaluatedTime'))
        ..add(serializers.serialize(
          payload.lastEvaluatedTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fleetId != null) {
      result
        ..add(const _i4.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          payload.fleetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.startTime != null) {
      result
        ..add(const _i4.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          payload.startTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
