// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_traffic_mirror_session_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_traffic_mirror_session_result.g.dart';

abstract class DeleteTrafficMirrorSessionResult
    with
        _i1.AWSEquatable<DeleteTrafficMirrorSessionResult>
    implements
        Built<DeleteTrafficMirrorSessionResult,
            DeleteTrafficMirrorSessionResultBuilder> {
  factory DeleteTrafficMirrorSessionResult({String? trafficMirrorSessionId}) {
    return _$DeleteTrafficMirrorSessionResult._(
        trafficMirrorSessionId: trafficMirrorSessionId);
  }

  factory DeleteTrafficMirrorSessionResult.build(
          [void Function(DeleteTrafficMirrorSessionResultBuilder) updates]) =
      _$DeleteTrafficMirrorSessionResult;

  const DeleteTrafficMirrorSessionResult._();

  /// Constructs a [DeleteTrafficMirrorSessionResult] from a [payload] and [response].
  factory DeleteTrafficMirrorSessionResult.fromResponse(
    DeleteTrafficMirrorSessionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteTrafficMirrorSessionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorSessionResultBuilder b) {}

  /// The ID of the deleted Traffic Mirror session.
  String? get trafficMirrorSessionId;
  @override
  List<Object?> get props => [trafficMirrorSessionId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorSessionResult');
    helper.add(
      'trafficMirrorSessionId',
      trafficMirrorSessionId,
    );
    return helper.toString();
  }
}

class DeleteTrafficMirrorSessionResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteTrafficMirrorSessionResult> {
  const DeleteTrafficMirrorSessionResultEc2QuerySerializer()
      : super('DeleteTrafficMirrorSessionResult');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorSessionResult,
        _$DeleteTrafficMirrorSessionResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorSessionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorSessionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorSessionId':
          if (value != null) {
            result.trafficMirrorSessionId = (serializers.deserialize(
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
    final payload = (object as DeleteTrafficMirrorSessionResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteTrafficMirrorSessionResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorSessionId != null) {
      result
        ..add(const _i2.XmlElementName('TrafficMirrorSessionId'))
        ..add(serializers.serialize(
          payload.trafficMirrorSessionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
