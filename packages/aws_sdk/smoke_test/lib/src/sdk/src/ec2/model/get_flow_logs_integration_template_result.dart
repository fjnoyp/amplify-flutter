// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_flow_logs_integration_template_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_flow_logs_integration_template_result.g.dart';

abstract class GetFlowLogsIntegrationTemplateResult
    with
        _i1.AWSEquatable<GetFlowLogsIntegrationTemplateResult>
    implements
        Built<GetFlowLogsIntegrationTemplateResult,
            GetFlowLogsIntegrationTemplateResultBuilder> {
  factory GetFlowLogsIntegrationTemplateResult({String? result}) {
    return _$GetFlowLogsIntegrationTemplateResult._(result: result);
  }

  factory GetFlowLogsIntegrationTemplateResult.build(
      [void Function(GetFlowLogsIntegrationTemplateResultBuilder)
          updates]) = _$GetFlowLogsIntegrationTemplateResult;

  const GetFlowLogsIntegrationTemplateResult._();

  /// Constructs a [GetFlowLogsIntegrationTemplateResult] from a [payload] and [response].
  factory GetFlowLogsIntegrationTemplateResult.fromResponse(
    GetFlowLogsIntegrationTemplateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetFlowLogsIntegrationTemplateResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetFlowLogsIntegrationTemplateResultBuilder b) {}

  /// The generated CloudFormation template.
  String? get result;
  @override
  List<Object?> get props => [result];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetFlowLogsIntegrationTemplateResult');
    helper.add(
      'result',
      result,
    );
    return helper.toString();
  }
}

class GetFlowLogsIntegrationTemplateResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<GetFlowLogsIntegrationTemplateResult> {
  const GetFlowLogsIntegrationTemplateResultEc2QuerySerializer()
      : super('GetFlowLogsIntegrationTemplateResult');

  @override
  Iterable<Type> get types => const [
        GetFlowLogsIntegrationTemplateResult,
        _$GetFlowLogsIntegrationTemplateResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetFlowLogsIntegrationTemplateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetFlowLogsIntegrationTemplateResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'result':
          if (value != null) {
            result.result = (serializers.deserialize(
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
    final payload = (object as GetFlowLogsIntegrationTemplateResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetFlowLogsIntegrationTemplateResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.result != null) {
      result
        ..add(const _i2.XmlElementName('Result'))
        ..add(serializers.serialize(
          payload.result!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
