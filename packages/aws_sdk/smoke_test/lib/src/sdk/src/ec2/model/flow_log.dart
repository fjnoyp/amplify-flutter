// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.flow_log; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_options_response.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/log_destination_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_type.dart' as _i2;

part 'flow_log.g.dart';

/// Describes a flow log.
abstract class FlowLog
    with _i1.AWSEquatable<FlowLog>
    implements Built<FlowLog, FlowLogBuilder> {
  /// Describes a flow log.
  factory FlowLog({
    DateTime? creationTime,
    String? deliverLogsErrorMessage,
    String? deliverLogsPermissionArn,
    String? deliverCrossAccountRole,
    String? deliverLogsStatus,
    String? flowLogId,
    String? flowLogStatus,
    String? logGroupName,
    String? resourceId,
    _i2.TrafficType? trafficType,
    _i3.LogDestinationType? logDestinationType,
    String? logDestination,
    String? logFormat,
    List<_i4.Tag>? tags,
    int? maxAggregationInterval,
    _i5.DestinationOptionsResponse? destinationOptions,
  }) {
    maxAggregationInterval ??= 0;
    return _$FlowLog._(
      creationTime: creationTime,
      deliverLogsErrorMessage: deliverLogsErrorMessage,
      deliverLogsPermissionArn: deliverLogsPermissionArn,
      deliverCrossAccountRole: deliverCrossAccountRole,
      deliverLogsStatus: deliverLogsStatus,
      flowLogId: flowLogId,
      flowLogStatus: flowLogStatus,
      logGroupName: logGroupName,
      resourceId: resourceId,
      trafficType: trafficType,
      logDestinationType: logDestinationType,
      logDestination: logDestination,
      logFormat: logFormat,
      tags: tags == null ? null : _i6.BuiltList(tags),
      maxAggregationInterval: maxAggregationInterval,
      destinationOptions: destinationOptions,
    );
  }

  /// Describes a flow log.
  factory FlowLog.build([void Function(FlowLogBuilder) updates]) = _$FlowLog;

  const FlowLog._();

  static const List<_i7.SmithySerializer> serializers = [
    FlowLogEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FlowLogBuilder b) {
    b.maxAggregationInterval = 0;
  }

  /// The date and time the flow log was created.
  DateTime? get creationTime;

  /// Information about the error that occurred. `Rate limited` indicates that CloudWatch Logs throttling has been applied for one or more network interfaces, or that you've reached the limit on the number of log groups that you can create. `Access error` indicates that the IAM role associated with the flow log does not have sufficient permissions to publish to CloudWatch Logs. `Unknown error` indicates an internal error.
  String? get deliverLogsErrorMessage;

  /// The ARN of the IAM role allows the service to publish logs to CloudWatch Logs.
  String? get deliverLogsPermissionArn;

  /// The ARN of the IAM role that allows the service to publish flow logs across accounts.
  String? get deliverCrossAccountRole;

  /// The status of the logs delivery (`SUCCESS` | `FAILED`).
  String? get deliverLogsStatus;

  /// The ID of the flow log.
  String? get flowLogId;

  /// The status of the flow log (`ACTIVE`).
  String? get flowLogStatus;

  /// The name of the flow log group.
  String? get logGroupName;

  /// The ID of the resource being monitored.
  String? get resourceId;

  /// The type of traffic captured for the flow log.
  _i2.TrafficType? get trafficType;

  /// The type of destination for the flow log data.
  _i3.LogDestinationType? get logDestinationType;

  /// The Amazon Resource Name (ARN) of the destination for the flow log data.
  String? get logDestination;

  /// The format of the flow log record.
  String? get logFormat;

  /// The tags for the flow log.
  _i6.BuiltList<_i4.Tag>? get tags;

  /// The maximum interval of time, in seconds, during which a flow of packets is captured and aggregated into a flow log record.
  ///
  /// When a network interface is attached to a [Nitro-based instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances), the aggregation interval is always 60 seconds (1 minute) or less, regardless of the specified value.
  ///
  /// Valid Values: `60` | `600`
  int get maxAggregationInterval;

  /// The destination options.
  _i5.DestinationOptionsResponse? get destinationOptions;
  @override
  List<Object?> get props => [
        creationTime,
        deliverLogsErrorMessage,
        deliverLogsPermissionArn,
        deliverCrossAccountRole,
        deliverLogsStatus,
        flowLogId,
        flowLogStatus,
        logGroupName,
        resourceId,
        trafficType,
        logDestinationType,
        logDestination,
        logFormat,
        tags,
        maxAggregationInterval,
        destinationOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FlowLog');
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'deliverLogsErrorMessage',
      deliverLogsErrorMessage,
    );
    helper.add(
      'deliverLogsPermissionArn',
      deliverLogsPermissionArn,
    );
    helper.add(
      'deliverCrossAccountRole',
      deliverCrossAccountRole,
    );
    helper.add(
      'deliverLogsStatus',
      deliverLogsStatus,
    );
    helper.add(
      'flowLogId',
      flowLogId,
    );
    helper.add(
      'flowLogStatus',
      flowLogStatus,
    );
    helper.add(
      'logGroupName',
      logGroupName,
    );
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'trafficType',
      trafficType,
    );
    helper.add(
      'logDestinationType',
      logDestinationType,
    );
    helper.add(
      'logDestination',
      logDestination,
    );
    helper.add(
      'logFormat',
      logFormat,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'maxAggregationInterval',
      maxAggregationInterval,
    );
    helper.add(
      'destinationOptions',
      destinationOptions,
    );
    return helper.toString();
  }
}

class FlowLogEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<FlowLog> {
  const FlowLogEc2QuerySerializer() : super('FlowLog');

  @override
  Iterable<Type> get types => const [
        FlowLog,
        _$FlowLog,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FlowLog deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowLogBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'creationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'deliverLogsErrorMessage':
          if (value != null) {
            result.deliverLogsErrorMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'deliverLogsPermissionArn':
          if (value != null) {
            result.deliverLogsPermissionArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'deliverCrossAccountRole':
          if (value != null) {
            result.deliverCrossAccountRole = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'deliverLogsStatus':
          if (value != null) {
            result.deliverLogsStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'flowLogId':
          if (value != null) {
            result.flowLogId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'flowLogStatus':
          if (value != null) {
            result.flowLogStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'logGroupName':
          if (value != null) {
            result.logGroupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'trafficType':
          if (value != null) {
            result.trafficType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TrafficType),
            ) as _i2.TrafficType);
          }
          break;
        case 'logDestinationType':
          if (value != null) {
            result.logDestinationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.LogDestinationType),
            ) as _i3.LogDestinationType);
          }
          break;
        case 'logDestination':
          if (value != null) {
            result.logDestination = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'logFormat':
          if (value != null) {
            result.logFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i6.BuiltList<_i4.Tag>));
          }
          break;
        case 'maxAggregationInterval':
          result.maxAggregationInterval = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'destinationOptions':
          if (value != null) {
            result.destinationOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.DestinationOptionsResponse),
            ) as _i5.DestinationOptionsResponse));
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
    final payload = (object as FlowLog);
    final result = <Object?>[
      const _i7.XmlElementName(
        'FlowLogResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.creationTime != null) {
      result
        ..add(const _i7.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.deliverLogsErrorMessage != null) {
      result
        ..add(const _i7.XmlElementName('DeliverLogsErrorMessage'))
        ..add(serializers.serialize(
          payload.deliverLogsErrorMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliverLogsPermissionArn != null) {
      result
        ..add(const _i7.XmlElementName('DeliverLogsPermissionArn'))
        ..add(serializers.serialize(
          payload.deliverLogsPermissionArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliverCrossAccountRole != null) {
      result
        ..add(const _i7.XmlElementName('DeliverCrossAccountRole'))
        ..add(serializers.serialize(
          payload.deliverCrossAccountRole!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliverLogsStatus != null) {
      result
        ..add(const _i7.XmlElementName('DeliverLogsStatus'))
        ..add(serializers.serialize(
          payload.deliverLogsStatus!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.flowLogId != null) {
      result
        ..add(const _i7.XmlElementName('FlowLogId'))
        ..add(serializers.serialize(
          payload.flowLogId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.flowLogStatus != null) {
      result
        ..add(const _i7.XmlElementName('FlowLogStatus'))
        ..add(serializers.serialize(
          payload.flowLogStatus!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.logGroupName != null) {
      result
        ..add(const _i7.XmlElementName('LogGroupName'))
        ..add(serializers.serialize(
          payload.logGroupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceId != null) {
      result
        ..add(const _i7.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.trafficType != null) {
      result
        ..add(const _i7.XmlElementName('TrafficType'))
        ..add(serializers.serialize(
          payload.trafficType!,
          specifiedType: const FullType.nullable(_i2.TrafficType),
        ));
    }
    if (payload.logDestinationType != null) {
      result
        ..add(const _i7.XmlElementName('LogDestinationType'))
        ..add(serializers.serialize(
          payload.logDestinationType!,
          specifiedType: const FullType.nullable(_i3.LogDestinationType),
        ));
    }
    if (payload.logDestination != null) {
      result
        ..add(const _i7.XmlElementName('LogDestination'))
        ..add(serializers.serialize(
          payload.logDestination!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.logFormat != null) {
      result
        ..add(const _i7.XmlElementName('LogFormat'))
        ..add(serializers.serialize(
          payload.logFormat!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('MaxAggregationInterval'))
      ..add(serializers.serialize(
        payload.maxAggregationInterval,
        specifiedType: const FullType(int),
      ));
    if (payload.destinationOptions != null) {
      result
        ..add(const _i7.XmlElementName('DestinationOptions'))
        ..add(serializers.serialize(
          payload.destinationOptions!,
          specifiedType: const FullType(_i5.DestinationOptionsResponse),
        ));
    }
    return result;
  }
}
