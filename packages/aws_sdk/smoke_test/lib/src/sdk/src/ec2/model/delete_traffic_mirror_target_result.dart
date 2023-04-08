// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_traffic_mirror_target_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_traffic_mirror_target_result.g.dart';

abstract class DeleteTrafficMirrorTargetResult
    with
        _i1.AWSEquatable<DeleteTrafficMirrorTargetResult>
    implements
        Built<DeleteTrafficMirrorTargetResult,
            DeleteTrafficMirrorTargetResultBuilder> {
  factory DeleteTrafficMirrorTargetResult({String? trafficMirrorTargetId}) {
    return _$DeleteTrafficMirrorTargetResult._(
        trafficMirrorTargetId: trafficMirrorTargetId);
  }

  factory DeleteTrafficMirrorTargetResult.build(
          [void Function(DeleteTrafficMirrorTargetResultBuilder) updates]) =
      _$DeleteTrafficMirrorTargetResult;

  const DeleteTrafficMirrorTargetResult._();

  /// Constructs a [DeleteTrafficMirrorTargetResult] from a [payload] and [response].
  factory DeleteTrafficMirrorTargetResult.fromResponse(
    DeleteTrafficMirrorTargetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteTrafficMirrorTargetResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorTargetResultBuilder b) {}

  /// The ID of the deleted Traffic Mirror target.
  String? get trafficMirrorTargetId;
  @override
  List<Object?> get props => [trafficMirrorTargetId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorTargetResult');
    helper.add(
      'trafficMirrorTargetId',
      trafficMirrorTargetId,
    );
    return helper.toString();
  }
}

class DeleteTrafficMirrorTargetResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteTrafficMirrorTargetResult> {
  const DeleteTrafficMirrorTargetResultEc2QuerySerializer()
      : super('DeleteTrafficMirrorTargetResult');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorTargetResult,
        _$DeleteTrafficMirrorTargetResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorTargetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorTargetResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorTargetId':
          if (value != null) {
            result.trafficMirrorTargetId = (serializers.deserialize(
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
    final payload = (object as DeleteTrafficMirrorTargetResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteTrafficMirrorTargetResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorTargetId != null) {
      result
        ..add(const _i2.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          payload.trafficMirrorTargetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
