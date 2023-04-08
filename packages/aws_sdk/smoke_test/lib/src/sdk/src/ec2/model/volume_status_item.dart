// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.volume_status_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_action.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_attachment_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_event.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info.dart'
    as _i4;

part 'volume_status_item.g.dart';

/// Describes the volume status.
abstract class VolumeStatusItem
    with _i1.AWSEquatable<VolumeStatusItem>
    implements Built<VolumeStatusItem, VolumeStatusItemBuilder> {
  /// Describes the volume status.
  factory VolumeStatusItem({
    List<_i2.VolumeStatusAction>? actions,
    String? availabilityZone,
    String? outpostArn,
    List<_i3.VolumeStatusEvent>? events,
    String? volumeId,
    _i4.VolumeStatusInfo? volumeStatus,
    List<_i5.VolumeStatusAttachmentStatus>? attachmentStatuses,
  }) {
    return _$VolumeStatusItem._(
      actions: actions == null ? null : _i6.BuiltList(actions),
      availabilityZone: availabilityZone,
      outpostArn: outpostArn,
      events: events == null ? null : _i6.BuiltList(events),
      volumeId: volumeId,
      volumeStatus: volumeStatus,
      attachmentStatuses:
          attachmentStatuses == null ? null : _i6.BuiltList(attachmentStatuses),
    );
  }

  /// Describes the volume status.
  factory VolumeStatusItem.build(
      [void Function(VolumeStatusItemBuilder) updates]) = _$VolumeStatusItem;

  const VolumeStatusItem._();

  static const List<_i7.SmithySerializer> serializers = [
    VolumeStatusItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeStatusItemBuilder b) {}

  /// The details of the operation.
  _i6.BuiltList<_i2.VolumeStatusAction>? get actions;

  /// The Availability Zone of the volume.
  String? get availabilityZone;

  /// The Amazon Resource Name (ARN) of the Outpost.
  String? get outpostArn;

  /// A list of events associated with the volume.
  _i6.BuiltList<_i3.VolumeStatusEvent>? get events;

  /// The volume ID.
  String? get volumeId;

  /// The volume status.
  _i4.VolumeStatusInfo? get volumeStatus;

  /// Information about the instances to which the volume is attached.
  _i6.BuiltList<_i5.VolumeStatusAttachmentStatus>? get attachmentStatuses;
  @override
  List<Object?> get props => [
        actions,
        availabilityZone,
        outpostArn,
        events,
        volumeId,
        volumeStatus,
        attachmentStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusItem');
    helper.add(
      'actions',
      actions,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'outpostArn',
      outpostArn,
    );
    helper.add(
      'events',
      events,
    );
    helper.add(
      'volumeId',
      volumeId,
    );
    helper.add(
      'volumeStatus',
      volumeStatus,
    );
    helper.add(
      'attachmentStatuses',
      attachmentStatuses,
    );
    return helper.toString();
  }
}

class VolumeStatusItemEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<VolumeStatusItem> {
  const VolumeStatusItemEc2QuerySerializer() : super('VolumeStatusItem');

  @override
  Iterable<Type> get types => const [
        VolumeStatusItem,
        _$VolumeStatusItem,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'actionsSet':
          if (value != null) {
            result.actions.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.VolumeStatusAction)],
              ),
            ) as _i6.BuiltList<_i2.VolumeStatusAction>));
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'outpostArn':
          if (value != null) {
            result.outpostArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'eventsSet':
          if (value != null) {
            result.events.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.VolumeStatusEvent)],
              ),
            ) as _i6.BuiltList<_i3.VolumeStatusEvent>));
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
        case 'volumeStatus':
          if (value != null) {
            result.volumeStatus.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.VolumeStatusInfo),
            ) as _i4.VolumeStatusInfo));
          }
          break;
        case 'attachmentStatuses':
          if (value != null) {
            result.attachmentStatuses.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.VolumeStatusAttachmentStatus)],
              ),
            ) as _i6.BuiltList<_i5.VolumeStatusAttachmentStatus>));
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
    final payload = (object as VolumeStatusItem);
    final result = <Object?>[
      const _i7.XmlElementName(
        'VolumeStatusItemResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.actions != null) {
      result
        ..add(const _i7.XmlElementName('ActionsSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.actions!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.VolumeStatusAction)],
          ),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i7.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.outpostArn != null) {
      result
        ..add(const _i7.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          payload.outpostArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.events != null) {
      result
        ..add(const _i7.XmlElementName('EventsSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.events!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.VolumeStatusEvent)],
          ),
        ));
    }
    if (payload.volumeId != null) {
      result
        ..add(const _i7.XmlElementName('VolumeId'))
        ..add(serializers.serialize(
          payload.volumeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.volumeStatus != null) {
      result
        ..add(const _i7.XmlElementName('VolumeStatus'))
        ..add(serializers.serialize(
          payload.volumeStatus!,
          specifiedType: const FullType(_i4.VolumeStatusInfo),
        ));
    }
    if (payload.attachmentStatuses != null) {
      result
        ..add(const _i7.XmlElementName('AttachmentStatuses'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.attachmentStatuses!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.VolumeStatusAttachmentStatus)],
          ),
        ));
    }
    return result;
  }
}
