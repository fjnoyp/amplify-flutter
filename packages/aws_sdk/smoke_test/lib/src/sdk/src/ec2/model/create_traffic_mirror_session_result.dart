// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_traffic_mirror_session_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart'
    as _i2;

part 'create_traffic_mirror_session_result.g.dart';

abstract class CreateTrafficMirrorSessionResult
    with
        _i1.AWSEquatable<CreateTrafficMirrorSessionResult>
    implements
        Built<CreateTrafficMirrorSessionResult,
            CreateTrafficMirrorSessionResultBuilder> {
  factory CreateTrafficMirrorSessionResult({
    _i2.TrafficMirrorSession? trafficMirrorSession,
    String? clientToken,
  }) {
    return _$CreateTrafficMirrorSessionResult._(
      trafficMirrorSession: trafficMirrorSession,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorSessionResult.build(
          [void Function(CreateTrafficMirrorSessionResultBuilder) updates]) =
      _$CreateTrafficMirrorSessionResult;

  const CreateTrafficMirrorSessionResult._();

  /// Constructs a [CreateTrafficMirrorSessionResult] from a [payload] and [response].
  factory CreateTrafficMirrorSessionResult.fromResponse(
    CreateTrafficMirrorSessionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTrafficMirrorSessionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTrafficMirrorSessionResultBuilder b) {}

  /// Information about the Traffic Mirror session.
  _i2.TrafficMirrorSession? get trafficMirrorSession;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        trafficMirrorSession,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorSessionResult');
    helper.add(
      'trafficMirrorSession',
      trafficMirrorSession,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateTrafficMirrorSessionResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateTrafficMirrorSessionResult> {
  const CreateTrafficMirrorSessionResultEc2QuerySerializer()
      : super('CreateTrafficMirrorSessionResult');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorSessionResult,
        _$CreateTrafficMirrorSessionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorSessionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorSessionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorSession':
          if (value != null) {
            result.trafficMirrorSession.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TrafficMirrorSession),
            ) as _i2.TrafficMirrorSession));
          }
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
    final payload = (object as CreateTrafficMirrorSessionResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTrafficMirrorSessionResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorSession != null) {
      result
        ..add(const _i3.XmlElementName('TrafficMirrorSession'))
        ..add(serializers.serialize(
          payload.trafficMirrorSession!,
          specifiedType: const FullType(_i2.TrafficMirrorSession),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
