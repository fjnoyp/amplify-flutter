// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_traffic_mirror_target_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target.dart'
    as _i2;

part 'create_traffic_mirror_target_result.g.dart';

abstract class CreateTrafficMirrorTargetResult
    with
        _i1.AWSEquatable<CreateTrafficMirrorTargetResult>
    implements
        Built<CreateTrafficMirrorTargetResult,
            CreateTrafficMirrorTargetResultBuilder> {
  factory CreateTrafficMirrorTargetResult({
    _i2.TrafficMirrorTarget? trafficMirrorTarget,
    String? clientToken,
  }) {
    return _$CreateTrafficMirrorTargetResult._(
      trafficMirrorTarget: trafficMirrorTarget,
      clientToken: clientToken,
    );
  }

  factory CreateTrafficMirrorTargetResult.build(
          [void Function(CreateTrafficMirrorTargetResultBuilder) updates]) =
      _$CreateTrafficMirrorTargetResult;

  const CreateTrafficMirrorTargetResult._();

  /// Constructs a [CreateTrafficMirrorTargetResult] from a [payload] and [response].
  factory CreateTrafficMirrorTargetResult.fromResponse(
    CreateTrafficMirrorTargetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTrafficMirrorTargetResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTrafficMirrorTargetResultBuilder b) {}

  /// Information about the Traffic Mirror target.
  _i2.TrafficMirrorTarget? get trafficMirrorTarget;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  List<Object?> get props => [
        trafficMirrorTarget,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTrafficMirrorTargetResult');
    helper.add(
      'trafficMirrorTarget',
      trafficMirrorTarget,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateTrafficMirrorTargetResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateTrafficMirrorTargetResult> {
  const CreateTrafficMirrorTargetResultEc2QuerySerializer()
      : super('CreateTrafficMirrorTargetResult');

  @override
  Iterable<Type> get types => const [
        CreateTrafficMirrorTargetResult,
        _$CreateTrafficMirrorTargetResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTrafficMirrorTargetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrafficMirrorTargetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorTarget':
          if (value != null) {
            result.trafficMirrorTarget.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TrafficMirrorTarget),
            ) as _i2.TrafficMirrorTarget));
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
    final payload = (object as CreateTrafficMirrorTargetResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTrafficMirrorTargetResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorTarget != null) {
      result
        ..add(const _i3.XmlElementName('TrafficMirrorTarget'))
        ..add(serializers.serialize(
          payload.trafficMirrorTarget!,
          specifiedType: const FullType(_i2.TrafficMirrorTarget),
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
