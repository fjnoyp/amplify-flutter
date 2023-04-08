// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_traffic_mirror_session_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session.dart'
    as _i2;

part 'modify_traffic_mirror_session_result.g.dart';

abstract class ModifyTrafficMirrorSessionResult
    with
        _i1.AWSEquatable<ModifyTrafficMirrorSessionResult>
    implements
        Built<ModifyTrafficMirrorSessionResult,
            ModifyTrafficMirrorSessionResultBuilder> {
  factory ModifyTrafficMirrorSessionResult(
      {_i2.TrafficMirrorSession? trafficMirrorSession}) {
    return _$ModifyTrafficMirrorSessionResult._(
        trafficMirrorSession: trafficMirrorSession);
  }

  factory ModifyTrafficMirrorSessionResult.build(
          [void Function(ModifyTrafficMirrorSessionResultBuilder) updates]) =
      _$ModifyTrafficMirrorSessionResult;

  const ModifyTrafficMirrorSessionResult._();

  /// Constructs a [ModifyTrafficMirrorSessionResult] from a [payload] and [response].
  factory ModifyTrafficMirrorSessionResult.fromResponse(
    ModifyTrafficMirrorSessionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyTrafficMirrorSessionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTrafficMirrorSessionResultBuilder b) {}

  /// Information about the Traffic Mirror session.
  _i2.TrafficMirrorSession? get trafficMirrorSession;
  @override
  List<Object?> get props => [trafficMirrorSession];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTrafficMirrorSessionResult');
    helper.add(
      'trafficMirrorSession',
      trafficMirrorSession,
    );
    return helper.toString();
  }
}

class ModifyTrafficMirrorSessionResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyTrafficMirrorSessionResult> {
  const ModifyTrafficMirrorSessionResultEc2QuerySerializer()
      : super('ModifyTrafficMirrorSessionResult');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorSessionResult,
        _$ModifyTrafficMirrorSessionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorSessionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorSessionResultBuilder();
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
    final payload = (object as ModifyTrafficMirrorSessionResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyTrafficMirrorSessionResultResponse',
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
    return result;
  }
}
