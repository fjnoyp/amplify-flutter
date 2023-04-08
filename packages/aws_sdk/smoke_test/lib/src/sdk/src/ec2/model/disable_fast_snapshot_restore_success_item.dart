// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disable_fast_snapshot_restore_success_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fast_snapshot_restore_state_code.dart'
    as _i2;

part 'disable_fast_snapshot_restore_success_item.g.dart';

/// Describes fast snapshot restores that were successfully disabled.
abstract class DisableFastSnapshotRestoreSuccessItem
    with
        _i1.AWSEquatable<DisableFastSnapshotRestoreSuccessItem>
    implements
        Built<DisableFastSnapshotRestoreSuccessItem,
            DisableFastSnapshotRestoreSuccessItemBuilder> {
  /// Describes fast snapshot restores that were successfully disabled.
  factory DisableFastSnapshotRestoreSuccessItem({
    String? snapshotId,
    String? availabilityZone,
    _i2.FastSnapshotRestoreStateCode? state,
    String? stateTransitionReason,
    String? ownerId,
    String? ownerAlias,
    DateTime? enablingTime,
    DateTime? optimizingTime,
    DateTime? enabledTime,
    DateTime? disablingTime,
    DateTime? disabledTime,
  }) {
    return _$DisableFastSnapshotRestoreSuccessItem._(
      snapshotId: snapshotId,
      availabilityZone: availabilityZone,
      state: state,
      stateTransitionReason: stateTransitionReason,
      ownerId: ownerId,
      ownerAlias: ownerAlias,
      enablingTime: enablingTime,
      optimizingTime: optimizingTime,
      enabledTime: enabledTime,
      disablingTime: disablingTime,
      disabledTime: disabledTime,
    );
  }

  /// Describes fast snapshot restores that were successfully disabled.
  factory DisableFastSnapshotRestoreSuccessItem.build(
      [void Function(DisableFastSnapshotRestoreSuccessItemBuilder)
          updates]) = _$DisableFastSnapshotRestoreSuccessItem;

  const DisableFastSnapshotRestoreSuccessItem._();

  static const List<_i3.SmithySerializer> serializers = [
    DisableFastSnapshotRestoreSuccessItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableFastSnapshotRestoreSuccessItemBuilder b) {}

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The Availability Zone.
  String? get availabilityZone;

  /// The state of fast snapshot restores for the snapshot.
  _i2.FastSnapshotRestoreStateCode? get state;

  /// The reason for the state transition. The possible values are as follows:
  ///
  /// *   `Client.UserInitiated` \- The state successfully transitioned to `enabling` or `disabling`.
  ///
  /// *   `Client.UserInitiated - Lifecycle state transition` \- The state successfully transitioned to `optimizing`, `enabled`, or `disabled`.
  String? get stateTransitionReason;

  /// The ID of the Amazon Web Services account that enabled fast snapshot restores on the snapshot.
  String? get ownerId;

  /// The Amazon Web Services owner alias that enabled fast snapshot restores on the snapshot. This is intended for future use.
  String? get ownerAlias;

  /// The time at which fast snapshot restores entered the `enabling` state.
  DateTime? get enablingTime;

  /// The time at which fast snapshot restores entered the `optimizing` state.
  DateTime? get optimizingTime;

  /// The time at which fast snapshot restores entered the `enabled` state.
  DateTime? get enabledTime;

  /// The time at which fast snapshot restores entered the `disabling` state.
  DateTime? get disablingTime;

  /// The time at which fast snapshot restores entered the `disabled` state.
  DateTime? get disabledTime;
  @override
  List<Object?> get props => [
        snapshotId,
        availabilityZone,
        state,
        stateTransitionReason,
        ownerId,
        ownerAlias,
        enablingTime,
        optimizingTime,
        enabledTime,
        disablingTime,
        disabledTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableFastSnapshotRestoreSuccessItem');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'stateTransitionReason',
      stateTransitionReason,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'ownerAlias',
      ownerAlias,
    );
    helper.add(
      'enablingTime',
      enablingTime,
    );
    helper.add(
      'optimizingTime',
      optimizingTime,
    );
    helper.add(
      'enabledTime',
      enabledTime,
    );
    helper.add(
      'disablingTime',
      disablingTime,
    );
    helper.add(
      'disabledTime',
      disabledTime,
    );
    return helper.toString();
  }
}

class DisableFastSnapshotRestoreSuccessItemEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisableFastSnapshotRestoreSuccessItem> {
  const DisableFastSnapshotRestoreSuccessItemEc2QuerySerializer()
      : super('DisableFastSnapshotRestoreSuccessItem');

  @override
  Iterable<Type> get types => const [
        DisableFastSnapshotRestoreSuccessItem,
        _$DisableFastSnapshotRestoreSuccessItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastSnapshotRestoreSuccessItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastSnapshotRestoreSuccessItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'snapshotId':
          if (value != null) {
            result.snapshotId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FastSnapshotRestoreStateCode),
            ) as _i2.FastSnapshotRestoreStateCode);
          }
          break;
        case 'stateTransitionReason':
          if (value != null) {
            result.stateTransitionReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerAlias':
          if (value != null) {
            result.ownerAlias = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'enablingTime':
          if (value != null) {
            result.enablingTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'optimizingTime':
          if (value != null) {
            result.optimizingTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'enabledTime':
          if (value != null) {
            result.enabledTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'disablingTime':
          if (value != null) {
            result.disablingTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'disabledTime':
          if (value != null) {
            result.disabledTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as DisableFastSnapshotRestoreSuccessItem);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisableFastSnapshotRestoreSuccessItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.snapshotId != null) {
      result
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.FastSnapshotRestoreStateCode),
        ));
    }
    if (payload.stateTransitionReason != null) {
      result
        ..add(const _i3.XmlElementName('StateTransitionReason'))
        ..add(serializers.serialize(
          payload.stateTransitionReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerAlias != null) {
      result
        ..add(const _i3.XmlElementName('OwnerAlias'))
        ..add(serializers.serialize(
          payload.ownerAlias!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.enablingTime != null) {
      result
        ..add(const _i3.XmlElementName('EnablingTime'))
        ..add(serializers.serialize(
          payload.enablingTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.optimizingTime != null) {
      result
        ..add(const _i3.XmlElementName('OptimizingTime'))
        ..add(serializers.serialize(
          payload.optimizingTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.enabledTime != null) {
      result
        ..add(const _i3.XmlElementName('EnabledTime'))
        ..add(serializers.serialize(
          payload.enabledTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.disablingTime != null) {
      result
        ..add(const _i3.XmlElementName('DisablingTime'))
        ..add(serializers.serialize(
          payload.disablingTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.disabledTime != null) {
      result
        ..add(const _i3.XmlElementName('DisabledTime'))
        ..add(serializers.serialize(
          payload.disabledTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
