// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.volume_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_attachment_state.dart'
    as _i2;

part 'volume_attachment.g.dart';

/// Describes volume attachment details.
abstract class VolumeAttachment
    with _i1.AWSEquatable<VolumeAttachment>
    implements Built<VolumeAttachment, VolumeAttachmentBuilder> {
  /// Describes volume attachment details.
  factory VolumeAttachment({
    DateTime? attachTime,
    String? device,
    String? instanceId,
    _i2.VolumeAttachmentState? state,
    String? volumeId,
    bool? deleteOnTermination,
  }) {
    deleteOnTermination ??= false;
    return _$VolumeAttachment._(
      attachTime: attachTime,
      device: device,
      instanceId: instanceId,
      state: state,
      volumeId: volumeId,
      deleteOnTermination: deleteOnTermination,
    );
  }

  /// Describes volume attachment details.
  factory VolumeAttachment.build(
      [void Function(VolumeAttachmentBuilder) updates]) = _$VolumeAttachment;

  const VolumeAttachment._();

  /// Constructs a [VolumeAttachment] from a [payload] and [response].
  factory VolumeAttachment.fromResponse(
    VolumeAttachment payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    VolumeAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeAttachmentBuilder b) {
    b.deleteOnTermination = false;
  }

  /// The time stamp when the attachment initiated.
  DateTime? get attachTime;

  /// The device name.
  String? get device;

  /// The ID of the instance.
  String? get instanceId;

  /// The attachment state of the volume.
  _i2.VolumeAttachmentState? get state;

  /// The ID of the volume.
  String? get volumeId;

  /// Indicates whether the EBS volume is deleted on instance termination.
  bool get deleteOnTermination;
  @override
  List<Object?> get props => [
        attachTime,
        device,
        instanceId,
        state,
        volumeId,
        deleteOnTermination,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeAttachment');
    helper.add(
      'attachTime',
      attachTime,
    );
    helper.add(
      'device',
      device,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'deleteOnTermination',
      deleteOnTermination,
    );
    return helper.toString();
  }
}

class VolumeAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VolumeAttachment> {
  const VolumeAttachmentEc2QuerySerializer() : super('VolumeAttachment');

  @override
  Iterable<Type> get types => const [
        VolumeAttachment,
        _$VolumeAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeAttachmentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'attachTime':
          if (value != null) {
            result.attachTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'device':
          if (value != null) {
            result.device = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VolumeAttachmentState),
            ) as _i2.VolumeAttachmentState);
          }
          break;
        case 'volumeId':
          if (value != null) {
            result.volumeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'deleteOnTermination':
          result.deleteOnTermination = (serializers.deserialize(
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
    final payload = (object as VolumeAttachment);
    final result = <Object?>[
      const _i3.XmlElementName(
        'VolumeAttachmentResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attachTime != null) {
      result
        ..add(const _i3.XmlElementName('AttachTime'))
        ..add(serializers.serialize(
          payload.attachTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.device != null) {
      result
        ..add(const _i3.XmlElementName('Device'))
        ..add(serializers.serialize(
          payload.device!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.VolumeAttachmentState),
        ));
    }
    if (payload.volumeId != null) {
      result
        ..add(const _i3.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          payload.volumeId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        payload.deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
