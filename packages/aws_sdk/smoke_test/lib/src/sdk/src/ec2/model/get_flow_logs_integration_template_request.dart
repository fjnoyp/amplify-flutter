// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_flow_logs_integration_template_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/integrate_services.dart'
    as _i3;

part 'get_flow_logs_integration_template_request.g.dart';

abstract class GetFlowLogsIntegrationTemplateRequest
    with
        _i1.HttpInput<GetFlowLogsIntegrationTemplateRequest>,
        _i2.AWSEquatable<GetFlowLogsIntegrationTemplateRequest>
    implements
        Built<GetFlowLogsIntegrationTemplateRequest,
            GetFlowLogsIntegrationTemplateRequestBuilder> {
  factory GetFlowLogsIntegrationTemplateRequest({
    bool? dryRun,
    required String flowLogId,
    required String configDeliveryS3DestinationArn,
    required _i3.IntegrateServices integrateServices,
  }) {
    dryRun ??= false;
    return _$GetFlowLogsIntegrationTemplateRequest._(
      dryRun: dryRun,
      flowLogId: flowLogId,
      configDeliveryS3DestinationArn: configDeliveryS3DestinationArn,
      integrateServices: integrateServices,
    );
  }

  factory GetFlowLogsIntegrationTemplateRequest.build(
      [void Function(GetFlowLogsIntegrationTemplateRequestBuilder)
          updates]) = _$GetFlowLogsIntegrationTemplateRequest;

  const GetFlowLogsIntegrationTemplateRequest._();

  factory GetFlowLogsIntegrationTemplateRequest.fromRequest(
    GetFlowLogsIntegrationTemplateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetFlowLogsIntegrationTemplateRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFlowLogsIntegrationTemplateRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the flow log.
  String get flowLogId;

  /// To store the CloudFormation template in Amazon S3, specify the location in Amazon S3.
  String get configDeliveryS3DestinationArn;

  /// Information about the service integration.
  _i3.IntegrateServices get integrateServices;
  @override
  GetFlowLogsIntegrationTemplateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        flowLogId,
        configDeliveryS3DestinationArn,
        integrateServices,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetFlowLogsIntegrationTemplateRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'flowLogId',
      flowLogId,
    );
    helper.add(
      'configDeliveryS3DestinationArn',
      configDeliveryS3DestinationArn,
    );
    helper.add(
      'integrateServices',
      integrateServices,
    );
    return helper.toString();
  }
}

class GetFlowLogsIntegrationTemplateRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetFlowLogsIntegrationTemplateRequest> {
  const GetFlowLogsIntegrationTemplateRequestEc2QuerySerializer()
      : super('GetFlowLogsIntegrationTemplateRequest');

  @override
  Iterable<Type> get types => const [
        GetFlowLogsIntegrationTemplateRequest,
        _$GetFlowLogsIntegrationTemplateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetFlowLogsIntegrationTemplateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFlowLogsIntegrationTemplateRequestBuilder();
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
        case 'FlowLogId':
          result.flowLogId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConfigDeliveryS3DestinationArn':
          result.configDeliveryS3DestinationArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'IntegrateService':
          result.integrateServices.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegrateServices),
          ) as _i3.IntegrateServices));
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
    final payload = (object as GetFlowLogsIntegrationTemplateRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetFlowLogsIntegrationTemplateRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('FlowLogId'))
      ..add(serializers.serialize(
        payload.flowLogId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('ConfigDeliveryS3DestinationArn'))
      ..add(serializers.serialize(
        payload.configDeliveryS3DestinationArn,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('IntegrateService'))
      ..add(serializers.serialize(
        payload.integrateServices,
        specifiedType: const FullType(_i3.IntegrateServices),
      ));
    return result;
  }
}
