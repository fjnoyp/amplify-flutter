// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_flow_logs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/flow_log.dart' as _i2;

part 'describe_flow_logs_result.g.dart';

abstract class DescribeFlowLogsResult
    with _i1.AWSEquatable<DescribeFlowLogsResult>
    implements Built<DescribeFlowLogsResult, DescribeFlowLogsResultBuilder> {
  factory DescribeFlowLogsResult({
    List<_i2.FlowLog>? flowLogs,
    String? nextToken,
  }) {
    return _$DescribeFlowLogsResult._(
      flowLogs: flowLogs == null ? null : _i3.BuiltList(flowLogs),
      nextToken: nextToken,
    );
  }

  factory DescribeFlowLogsResult.build(
          [void Function(DescribeFlowLogsResultBuilder) updates]) =
      _$DescribeFlowLogsResult;

  const DescribeFlowLogsResult._();

  /// Constructs a [DescribeFlowLogsResult] from a [payload] and [response].
  factory DescribeFlowLogsResult.fromResponse(
    DescribeFlowLogsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeFlowLogsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFlowLogsResultBuilder b) {}

  /// Information about the flow logs.
  _i3.BuiltList<_i2.FlowLog>? get flowLogs;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        flowLogs,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFlowLogsResult');
    helper.add(
      'flowLogs',
      flowLogs,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeFlowLogsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeFlowLogsResult> {
  const DescribeFlowLogsResultEc2QuerySerializer()
      : super('DescribeFlowLogsResult');

  @override
  Iterable<Type> get types => const [
        DescribeFlowLogsResult,
        _$DescribeFlowLogsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFlowLogsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFlowLogsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'flowLogSet':
          if (value != null) {
            result.flowLogs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.FlowLog)],
              ),
            ) as _i3.BuiltList<_i2.FlowLog>));
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
    final payload = (object as DescribeFlowLogsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeFlowLogsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.flowLogs != null) {
      result
        ..add(const _i4.XmlElementName('FlowLogSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.flowLogs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.FlowLog)],
          ),
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
    return result;
  }
}
