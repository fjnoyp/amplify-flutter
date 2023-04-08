// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_flow_logs_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_options_request.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/flow_logs_resource_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/log_destination_type.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_type.dart' as _i4;

part 'create_flow_logs_request.g.dart';

abstract class CreateFlowLogsRequest
    with
        _i1.HttpInput<CreateFlowLogsRequest>,
        _i2.AWSEquatable<CreateFlowLogsRequest>
    implements Built<CreateFlowLogsRequest, CreateFlowLogsRequestBuilder> {
  factory CreateFlowLogsRequest({
    bool? dryRun,
    String? clientToken,
    String? deliverLogsPermissionArn,
    String? deliverCrossAccountRole,
    String? logGroupName,
    required List<String> resourceIds,
    required _i3.FlowLogsResourceType resourceType,
    _i4.TrafficType? trafficType,
    _i5.LogDestinationType? logDestinationType,
    String? logDestination,
    String? logFormat,
    List<_i6.TagSpecification>? tagSpecifications,
    int? maxAggregationInterval,
    _i7.DestinationOptionsRequest? destinationOptions,
  }) {
    dryRun ??= false;
    maxAggregationInterval ??= 0;
    return _$CreateFlowLogsRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      deliverLogsPermissionArn: deliverLogsPermissionArn,
      deliverCrossAccountRole: deliverCrossAccountRole,
      logGroupName: logGroupName,
      resourceIds: _i8.BuiltList(resourceIds),
      resourceType: resourceType,
      trafficType: trafficType,
      logDestinationType: logDestinationType,
      logDestination: logDestination,
      logFormat: logFormat,
      tagSpecifications:
          tagSpecifications == null ? null : _i8.BuiltList(tagSpecifications),
      maxAggregationInterval: maxAggregationInterval,
      destinationOptions: destinationOptions,
    );
  }

  factory CreateFlowLogsRequest.build(
          [void Function(CreateFlowLogsRequestBuilder) updates]) =
      _$CreateFlowLogsRequest;

  const CreateFlowLogsRequest._();

  factory CreateFlowLogsRequest.fromRequest(
    CreateFlowLogsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateFlowLogsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFlowLogsRequestBuilder b) {
    b.dryRun = false;
    b.maxAggregationInterval = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The ARN of the IAM role that allows Amazon EC2 to publish flow logs to a CloudWatch Logs log group in your account.
  ///
  /// This parameter is required if the destination type is `cloud-watch-logs` and unsupported otherwise.
  String? get deliverLogsPermissionArn;

  /// The ARN of the IAM role that allows Amazon EC2 to publish flow logs across accounts.
  String? get deliverCrossAccountRole;

  /// The name of a new or existing CloudWatch Logs log group where Amazon EC2 publishes your flow logs.
  ///
  /// This parameter is valid only if the destination type is `cloud-watch-logs`.
  String? get logGroupName;

  /// The IDs of the resources to monitor. For example, if the resource type is `VPC`, specify the IDs of the VPCs.
  ///
  /// Constraints: Maximum of 1000 resources
  _i8.BuiltList<String> get resourceIds;

  /// The type of resource to monitor.
  _i3.FlowLogsResourceType get resourceType;

  /// The type of traffic to monitor (accepted traffic, rejected traffic, or all traffic).
  _i4.TrafficType? get trafficType;

  /// The type of destination for the flow log data.
  ///
  /// Default: `cloud-watch-logs`
  _i5.LogDestinationType? get logDestinationType;

  /// The destination for the flow log data. The meaning of this parameter depends on the destination type.
  ///
  /// *   If the destination type is `cloud-watch-logs`, specify the ARN of a CloudWatch Logs log group. For example:
  ///
  ///     arn:aws:logs:_region_:_account_id_:log-group:_my_group_
  ///
  ///     Alternatively, use the `LogGroupName` parameter.
  ///
  /// *   If the destination type is `s3`, specify the ARN of an S3 bucket. For example:
  ///
  ///     arn:aws:s3:::_my_bucket_/_my_subfolder_/
  ///
  ///     The subfolder is optional. Note that you can't use `AWSLogs` as a subfolder name.
  ///
  /// *   If the destination type is `kinesis-data-firehose`, specify the ARN of a Kinesis Data Firehose delivery stream. For example:
  ///
  ///     arn:aws:firehose:_region_:_account_id_:deliverystream:_my_stream_
  String? get logDestination;

  /// The fields to include in the flow log record. List the fields in the order in which they should appear. For more information about the available fields, see [Flow log records](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records). If you omit this parameter, the flow log is created using the default format. If you specify this parameter, you must include at least one field.
  ///
  /// Specify the fields using the `${field-id}` format, separated by spaces. For the CLI, surround this parameter value with single quotes on Linux or double quotes on Windows.
  String? get logFormat;

  /// The tags to apply to the flow logs.
  _i8.BuiltList<_i6.TagSpecification>? get tagSpecifications;

  /// The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record. You can specify 60 seconds (1 minute) or 600 seconds (10 minutes).
  ///
  /// When a network interface is attached to a [Nitro-based instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances), the aggregation interval is always 60 seconds or less, regardless of the value that you specify.
  ///
  /// Default: 600
  int get maxAggregationInterval;

  /// The destination options.
  _i7.DestinationOptionsRequest? get destinationOptions;
  @override
  CreateFlowLogsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        deliverLogsPermissionArn,
        deliverCrossAccountRole,
        logGroupName,
        resourceIds,
        resourceType,
        trafficType,
        logDestinationType,
        logDestination,
        logFormat,
        tagSpecifications,
        maxAggregationInterval,
        destinationOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFlowLogsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
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
      'logGroupName',
      logGroupName,
    );
    helper.add(
      'resourceIds',
      resourceIds,
    );
    helper.add(
      'resourceType',
      resourceType,
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
      'tagSpecifications',
      tagSpecifications,
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

class CreateFlowLogsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateFlowLogsRequest> {
  const CreateFlowLogsRequestEc2QuerySerializer()
      : super('CreateFlowLogsRequest');

  @override
  Iterable<Type> get types => const [
        CreateFlowLogsRequest,
        _$CreateFlowLogsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFlowLogsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFlowLogsRequestBuilder();
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
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeliverLogsPermissionArn':
          if (value != null) {
            result.deliverLogsPermissionArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeliverCrossAccountRole':
          if (value != null) {
            result.deliverCrossAccountRole = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LogGroupName':
          if (value != null) {
            result.logGroupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceId':
          result.resourceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(String)],
            ),
          ) as _i8.BuiltList<String>));
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.FlowLogsResourceType),
          ) as _i3.FlowLogsResourceType);
          break;
        case 'TrafficType':
          if (value != null) {
            result.trafficType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.TrafficType),
            ) as _i4.TrafficType);
          }
          break;
        case 'LogDestinationType':
          if (value != null) {
            result.logDestinationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.LogDestinationType),
            ) as _i5.LogDestinationType);
          }
          break;
        case 'LogDestination':
          if (value != null) {
            result.logDestination = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LogFormat':
          if (value != null) {
            result.logFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i6.TagSpecification)],
              ),
            ) as _i8.BuiltList<_i6.TagSpecification>));
          }
          break;
        case 'MaxAggregationInterval':
          result.maxAggregationInterval = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'DestinationOptions':
          if (value != null) {
            result.destinationOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.DestinationOptionsRequest),
            ) as _i7.DestinationOptionsRequest));
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
    final payload = (object as CreateFlowLogsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateFlowLogsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliverLogsPermissionArn != null) {
      result
        ..add(const _i1.XmlElementName('DeliverLogsPermissionArn'))
        ..add(serializers.serialize(
          payload.deliverLogsPermissionArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliverCrossAccountRole != null) {
      result
        ..add(const _i1.XmlElementName('DeliverCrossAccountRole'))
        ..add(serializers.serialize(
          payload.deliverCrossAccountRole!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.logGroupName != null) {
      result
        ..add(const _i1.XmlElementName('LogGroupName'))
        ..add(serializers.serialize(
          payload.logGroupName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('ResourceId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.resourceIds,
        specifiedType: const FullType.nullable(
          _i8.BuiltList,
          [FullType(String)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('ResourceType'))
      ..add(serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType.nullable(_i3.FlowLogsResourceType),
      ));
    if (payload.trafficType != null) {
      result
        ..add(const _i1.XmlElementName('TrafficType'))
        ..add(serializers.serialize(
          payload.trafficType!,
          specifiedType: const FullType.nullable(_i4.TrafficType),
        ));
    }
    if (payload.logDestinationType != null) {
      result
        ..add(const _i1.XmlElementName('LogDestinationType'))
        ..add(serializers.serialize(
          payload.logDestinationType!,
          specifiedType: const FullType.nullable(_i5.LogDestinationType),
        ));
    }
    if (payload.logDestination != null) {
      result
        ..add(const _i1.XmlElementName('LogDestination'))
        ..add(serializers.serialize(
          payload.logDestination!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.logFormat != null) {
      result
        ..add(const _i1.XmlElementName('LogFormat'))
        ..add(serializers.serialize(
          payload.logFormat!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i6.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxAggregationInterval'))
      ..add(serializers.serialize(
        payload.maxAggregationInterval,
        specifiedType: const FullType(int),
      ));
    if (payload.destinationOptions != null) {
      result
        ..add(const _i1.XmlElementName('DestinationOptions'))
        ..add(serializers.serialize(
          payload.destinationOptions!,
          specifiedType: const FullType(_i7.DestinationOptionsRequest),
        ));
    }
    return result;
  }
}
