// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_interface_attachment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attachment_status.dart' as _i2;

part 'network_interface_attachment.g.dart';

/// Describes a network interface attachment.
abstract class NetworkInterfaceAttachment
    with _i1.AWSEquatable<NetworkInterfaceAttachment>
    implements
        Built<NetworkInterfaceAttachment, NetworkInterfaceAttachmentBuilder> {
  /// Describes a network interface attachment.
  factory NetworkInterfaceAttachment({
    DateTime? attachTime,
    String? attachmentId,
    bool? deleteOnTermination,
    int? deviceIndex,
    int? networkCardIndex,
    String? instanceId,
    String? instanceOwnerId,
    _i2.AttachmentStatus? status,
  }) {
    deleteOnTermination ??= false;
    deviceIndex ??= 0;
    networkCardIndex ??= 0;
    return _$NetworkInterfaceAttachment._(
      attachTime: attachTime,
      attachmentId: attachmentId,
      deleteOnTermination: deleteOnTermination,
      deviceIndex: deviceIndex,
      networkCardIndex: networkCardIndex,
      instanceId: instanceId,
      instanceOwnerId: instanceOwnerId,
      status: status,
    );
  }

  /// Describes a network interface attachment.
  factory NetworkInterfaceAttachment.build(
          [void Function(NetworkInterfaceAttachmentBuilder) updates]) =
      _$NetworkInterfaceAttachment;

  const NetworkInterfaceAttachment._();

  static const List<_i3.SmithySerializer> serializers = [
    NetworkInterfaceAttachmentEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceAttachmentBuilder b) {
    b.deleteOnTermination = false;
    b.deviceIndex = 0;
    b.networkCardIndex = 0;
  }

  /// The timestamp indicating when the attachment initiated.
  DateTime? get attachTime;

  /// The ID of the network interface attachment.
  String? get attachmentId;

  /// Indicates whether the network interface is deleted when the instance is terminated.
  bool get deleteOnTermination;

  /// The device index of the network interface attachment on the instance.
  int get deviceIndex;

  /// The index of the network card.
  int get networkCardIndex;

  /// The ID of the instance.
  String? get instanceId;

  /// The Amazon Web Services account ID of the owner of the instance.
  String? get instanceOwnerId;

  /// The attachment state.
  _i2.AttachmentStatus? get status;
  @override
  List<Object?> get props => [
        attachTime,
        attachmentId,
        deleteOnTermination,
        deviceIndex,
        networkCardIndex,
        instanceId,
        instanceOwnerId,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfaceAttachment');
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
      'networkCardIndex',
      networkCardIndex,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'instanceOwnerId',
      instanceOwnerId,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class NetworkInterfaceAttachmentEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInterfaceAttachment> {
  const NetworkInterfaceAttachmentEc2QuerySerializer()
      : super('NetworkInterfaceAttachment');

  @override
  Iterable<Type> get types => const [
        NetworkInterfaceAttachment,
        _$NetworkInterfaceAttachment,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfaceAttachment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceAttachmentBuilder();
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
        case 'networkCardIndex':
          result.networkCardIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceOwnerId':
          if (value != null) {
            result.instanceOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AttachmentStatus),
            ) as _i2.AttachmentStatus);
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
    final payload = (object as NetworkInterfaceAttachment);
    final result = <Object?>[
      const _i3.XmlElementName(
        'NetworkInterfaceAttachmentResponse',
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
    result
      ..add(const _i3.XmlElementName('NetworkCardIndex'))
      ..add(serializers.serialize(
        payload.networkCardIndex,
        specifiedType: const FullType(int),
      ));
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceOwnerId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceOwnerId'))
        ..add(serializers.serialize(
          payload.instanceOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.AttachmentStatus),
        ));
    }
    return result;
  }
}
