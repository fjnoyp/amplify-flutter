// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_traffic_mirror_filter_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_traffic_mirror_filter_result.g.dart';

abstract class DeleteTrafficMirrorFilterResult
    with
        _i1.AWSEquatable<DeleteTrafficMirrorFilterResult>
    implements
        Built<DeleteTrafficMirrorFilterResult,
            DeleteTrafficMirrorFilterResultBuilder> {
  factory DeleteTrafficMirrorFilterResult({String? trafficMirrorFilterId}) {
    return _$DeleteTrafficMirrorFilterResult._(
        trafficMirrorFilterId: trafficMirrorFilterId);
  }

  factory DeleteTrafficMirrorFilterResult.build(
          [void Function(DeleteTrafficMirrorFilterResultBuilder) updates]) =
      _$DeleteTrafficMirrorFilterResult;

  const DeleteTrafficMirrorFilterResult._();

  /// Constructs a [DeleteTrafficMirrorFilterResult] from a [payload] and [response].
  factory DeleteTrafficMirrorFilterResult.fromResponse(
    DeleteTrafficMirrorFilterResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    DeleteTrafficMirrorFilterResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorFilterResultBuilder b) {}

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;
  @override
  List<Object?> get props => [trafficMirrorFilterId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorFilterResult');
    helper.add(
      'trafficMirrorFilterId',
      trafficMirrorFilterId,
    );
    return helper.toString();
  }
}

class DeleteTrafficMirrorFilterResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteTrafficMirrorFilterResult> {
  const DeleteTrafficMirrorFilterResultEc2QuerySerializer()
      : super('DeleteTrafficMirrorFilterResult');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorFilterResult,
        _$DeleteTrafficMirrorFilterResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorFilterResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorFilterResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorFilterId':
          if (value != null) {
            result.trafficMirrorFilterId = (serializers.deserialize(
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
    final payload = (object as DeleteTrafficMirrorFilterResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DeleteTrafficMirrorFilterResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorFilterId != null) {
      result
        ..add(const _i2.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          payload.trafficMirrorFilterId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
