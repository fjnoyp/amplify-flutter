// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.enable_fast_snapshot_restore_state_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_state_error.dart'
    as _i2;

part 'enable_fast_snapshot_restore_state_error_item.g.dart';

/// Contains information about an error that occurred when enabling fast snapshot restores.
abstract class EnableFastSnapshotRestoreStateErrorItem
    with
        _i1.AWSEquatable<EnableFastSnapshotRestoreStateErrorItem>
    implements
        Built<EnableFastSnapshotRestoreStateErrorItem,
            EnableFastSnapshotRestoreStateErrorItemBuilder> {
  /// Contains information about an error that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreStateErrorItem({
    String? availabilityZone,
    _i2.EnableFastSnapshotRestoreStateError? error,
  }) {
    return _$EnableFastSnapshotRestoreStateErrorItem._(
      availabilityZone: availabilityZone,
      error: error,
    );
  }

  /// Contains information about an error that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreStateErrorItem.build(
      [void Function(EnableFastSnapshotRestoreStateErrorItemBuilder)
          updates]) = _$EnableFastSnapshotRestoreStateErrorItem;

  const EnableFastSnapshotRestoreStateErrorItem._();

  static const List<_i3.SmithySerializer> serializers = [
    EnableFastSnapshotRestoreStateErrorItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableFastSnapshotRestoreStateErrorItemBuilder b) {}

  /// The Availability Zone.
  String? get availabilityZone;

  /// The error.
  _i2.EnableFastSnapshotRestoreStateError? get error;
  @override
  List<Object?> get props => [
        availabilityZone,
        error,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableFastSnapshotRestoreStateErrorItem');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'error',
      error,
    );
    return helper.toString();
  }
}

class EnableFastSnapshotRestoreStateErrorItemEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<EnableFastSnapshotRestoreStateErrorItem> {
  const EnableFastSnapshotRestoreStateErrorItemEc2QuerySerializer()
      : super('EnableFastSnapshotRestoreStateErrorItem');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoreStateErrorItem,
        _$EnableFastSnapshotRestoreStateErrorItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoreStateErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoreStateErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'error':
          if (value != null) {
            result.error.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.EnableFastSnapshotRestoreStateError),
            ) as _i2.EnableFastSnapshotRestoreStateError));
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
    final payload = (object as EnableFastSnapshotRestoreStateErrorItem);
    final result = <Object?>[
      const _i3.XmlElementName(
        'EnableFastSnapshotRestoreStateErrorItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.error != null) {
      result
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          payload.error!,
          specifiedType:
              const FullType(_i2.EnableFastSnapshotRestoreStateError),
        ));
    }
    return result;
  }
}
