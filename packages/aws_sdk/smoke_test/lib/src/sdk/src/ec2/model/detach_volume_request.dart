// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.detach_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'detach_volume_request.g.dart';

abstract class DetachVolumeRequest
    with
        _i1.HttpInput<DetachVolumeRequest>,
        _i2.AWSEquatable<DetachVolumeRequest>
    implements Built<DetachVolumeRequest, DetachVolumeRequestBuilder> {
  factory DetachVolumeRequest({
    String? device,
    bool? force,
    String? instanceId,
    required String volumeId,
    bool? dryRun,
  }) {
    force ??= false;
    dryRun ??= false;
    return _$DetachVolumeRequest._(
      device: device,
      force: force,
      instanceId: instanceId,
      volumeId: volumeId,
      dryRun: dryRun,
    );
  }

  factory DetachVolumeRequest.build(
          [void Function(DetachVolumeRequestBuilder) updates]) =
      _$DetachVolumeRequest;

  const DetachVolumeRequest._();

  factory DetachVolumeRequest.fromRequest(
    DetachVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DetachVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetachVolumeRequestBuilder b) {
    b.force = false;
    b.dryRun = false;
  }

  /// The device name.
  String? get device;

  /// Forces detachment if the previous detachment attempt did not occur cleanly (for example, logging into an instance, unmounting the volume, and detaching normally). This option can lead to data loss or a corrupted file system. Use this option only as a last resort to detach a volume from a failed instance. The instance won't have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures.
  bool get force;

  /// The ID of the instance. If you are detaching a Multi-Attach enabled volume, you must specify an instance ID.
  String? get instanceId;

  /// The ID of the volume.
  String get volumeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DetachVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        device,
        force,
        instanceId,
        volumeId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetachVolumeRequest');
    helper.add(
      'device',
      device,
    );
    helper.add(
      'force',
      force,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DetachVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DetachVolumeRequest> {
  const DetachVolumeRequestEc2QuerySerializer() : super('DetachVolumeRequest');

  @override
  Iterable<Type> get types => const [
        DetachVolumeRequest,
        _$DetachVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DetachVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetachVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Device':
          if (value != null) {
            result.device = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Force':
          result.force = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InstanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VolumeId':
          result.volumeId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'dryRun':
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
    final payload = (object as DetachVolumeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DetachVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.device != null) {
      result
        ..add(const _i1.XmlElementName('Device'))
        ..add(serializers.serialize(
          payload.device!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Force'))
      ..add(serializers.serialize(
        payload.force,
        specifiedType: const FullType(bool),
      ));
    if (payload.instanceId != null) {
      result
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('VolumeId'))
      ..add(serializers.serialize(
        payload.volumeId,
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
