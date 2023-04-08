// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_traffic_mirror_filter_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_traffic_mirror_filter_request.g.dart';

abstract class DeleteTrafficMirrorFilterRequest
    with
        _i1.HttpInput<DeleteTrafficMirrorFilterRequest>,
        _i2.AWSEquatable<DeleteTrafficMirrorFilterRequest>
    implements
        Built<DeleteTrafficMirrorFilterRequest,
            DeleteTrafficMirrorFilterRequestBuilder> {
  factory DeleteTrafficMirrorFilterRequest({
    required String trafficMirrorFilterId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTrafficMirrorFilterRequest._(
      trafficMirrorFilterId: trafficMirrorFilterId,
      dryRun: dryRun,
    );
  }

  factory DeleteTrafficMirrorFilterRequest.build(
          [void Function(DeleteTrafficMirrorFilterRequestBuilder) updates]) =
      _$DeleteTrafficMirrorFilterRequest;

  const DeleteTrafficMirrorFilterRequest._();

  factory DeleteTrafficMirrorFilterRequest.fromRequest(
    DeleteTrafficMirrorFilterRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteTrafficMirrorFilterRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTrafficMirrorFilterRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Traffic Mirror filter.
  String get trafficMirrorFilterId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTrafficMirrorFilterRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorFilterId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTrafficMirrorFilterRequest');
    helper.add(
      'trafficMirrorFilterId',
      trafficMirrorFilterId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteTrafficMirrorFilterRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTrafficMirrorFilterRequest> {
  const DeleteTrafficMirrorFilterRequestEc2QuerySerializer()
      : super('DeleteTrafficMirrorFilterRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTrafficMirrorFilterRequest,
        _$DeleteTrafficMirrorFilterRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTrafficMirrorFilterRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTrafficMirrorFilterRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TrafficMirrorFilterId':
          result.trafficMirrorFilterId = (serializers.deserialize(
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
    final payload = (object as DeleteTrafficMirrorFilterRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteTrafficMirrorFilterRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TrafficMirrorFilterId'))
      ..add(serializers.serialize(
        payload.trafficMirrorFilterId,
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
