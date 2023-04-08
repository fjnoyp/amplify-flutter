// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.send_diagnostic_interrupt_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'send_diagnostic_interrupt_request.g.dart';

abstract class SendDiagnosticInterruptRequest
    with
        _i1.HttpInput<SendDiagnosticInterruptRequest>,
        _i2.AWSEquatable<SendDiagnosticInterruptRequest>
    implements
        Built<SendDiagnosticInterruptRequest,
            SendDiagnosticInterruptRequestBuilder> {
  factory SendDiagnosticInterruptRequest({
    required String instanceId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$SendDiagnosticInterruptRequest._(
      instanceId: instanceId,
      dryRun: dryRun,
    );
  }

  factory SendDiagnosticInterruptRequest.build(
          [void Function(SendDiagnosticInterruptRequestBuilder) updates]) =
      _$SendDiagnosticInterruptRequest;

  const SendDiagnosticInterruptRequest._();

  factory SendDiagnosticInterruptRequest.fromRequest(
    SendDiagnosticInterruptRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    SendDiagnosticInterruptRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SendDiagnosticInterruptRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the instance.
  String get instanceId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  SendDiagnosticInterruptRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SendDiagnosticInterruptRequest');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class SendDiagnosticInterruptRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<SendDiagnosticInterruptRequest> {
  const SendDiagnosticInterruptRequestEc2QuerySerializer()
      : super('SendDiagnosticInterruptRequest');

  @override
  Iterable<Type> get types => const [
        SendDiagnosticInterruptRequest,
        _$SendDiagnosticInterruptRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SendDiagnosticInterruptRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendDiagnosticInterruptRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as SendDiagnosticInterruptRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'SendDiagnosticInterruptRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
