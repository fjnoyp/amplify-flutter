// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_network_interface_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart' as _i2;

part 'instance_network_interface_attachment.g.dart';

/// Describes a network interface attachment.
abstract class InstanceNetworkInterfaceAttachment
    with
        _i1.AWSEquatable<InstanceNetworkInterfaceAttachment>
    implements
        Built<InstanceNetworkInterfaceAttachment,
            InstanceNetworkInterfaceAttachmentBuilder> {
  /// Describes a network interface attachment.
  factory InstanceNetworkInterfaceAttachment({
    DateTime? attachTime,
    String? attachmentId,
    bool? deleteOnTermination,
    int? deviceIndex,
    _i2.AttachmentStatus? status,
    int? networkCardIndex,
  }) {
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    networkCardIndex ??= 0;
    return _$InstanceNetworkInterfaceAttachment._(
      attachTime: attachTime,
      attachmentId: attachmentId,
      deleteOnTermination: deleteOnTermination,
      deviceIndex: deviceIndex,
      status: status,
      networkCardIndex: networkCardIndex,
    );
  }

  /// Describes a network interface attachment.
  factory InstanceNetworkInterfaceAttachment.build(
          [void Function(InstanceNetworkInterfaceAttachmentBuilder) updates]) =
      _$InstanceNetworkInterfaceAttachment;

  const InstanceNetworkInterfaceAttachment._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceNetworkInterfaceAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceNetworkInterfaceAttachmentBuilder b) {
    b.deleteOnTermination = false;
    b.deviceIndex = 0;
    b.networkCardIndex = 0;
  }

  /// The time stamp when the attachment initiated.
  DateTime? get attachTime;

  /// The ID of the network interface attachment.
  String? get attachmentId;

  /// Indicates whether the network interface is deleted when the instance is terminated.
  bool get deleteOnTermination;

  /// The index of the device on the instance for the network interface attachment.
  int get deviceIndex;

  /// The attachment state.
  _i2.AttachmentStatus? get status;

  /// The index of the network card.
  int get networkCardIndex;
  @override
  List<Object?> get props => [
        attachTime,
        attachmentId,
        deleteOnTermination,
        deviceIndex,
        status,
        networkCardIndex,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceNetworkInterfaceAttachment');
    helper.add(
      'attachTime',
      attachTime,
    );
    helper.add(
      'attachmentId',
      attachmentId,
    );
    helper.add(
      'deleteOnTermination',
      deleteOnTermination,
    );
    helper.add(
      'deviceIndex',
      deviceIndex,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'networkCardIndex',
      networkCardIndex,
    );
    return helper.toString();
  }
}

class InstanceNetworkInterfaceAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceNetworkInterfaceAttachment> {
  const InstanceNetworkInterfaceAttachmentEc2QuerySerializer()
      : super('InstanceNetworkInterfaceAttachment');

  @override
  Iterable<Type> get types => const [
        InstanceNetworkInterfaceAttachment,
        _$InstanceNetworkInterfaceAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceNetworkInterfaceAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceNetworkInterfaceAttachmentBuilder();
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
        case 'attachmentId':
          if (value != null) {
            result.attachmentId = (serializers.deserialize(
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
        case 'deviceIndex':
          result.deviceIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttachmentStatus),
            ) as _i2.AttachmentStatus);
          }
          break;
        case 'networkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as InstanceNetworkInterfaceAttachment);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceNetworkInterfaceAttachmentResponse',
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
    if (payload.attachmentId != null) {
      result
        ..add(const _i3.XmlElementName('AttachmentId'))
        ..add(serializers.serialize(
          payload.attachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('DeleteOnTermination'))
      ..add(serializers.serialize(
        payload.deleteOnTermination,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i3.XmlElementName('DeviceIndex'))
      ..add(serializers.serialize(
        payload.deviceIndex,
        specifiedType: const FullType(int),
      ));
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.AttachmentStatus),
        ));
    }
    result
      ..add(const _i3.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        payload.networkCardIndex,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
