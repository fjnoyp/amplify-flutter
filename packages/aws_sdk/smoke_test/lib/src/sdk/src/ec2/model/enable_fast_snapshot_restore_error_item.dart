// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.enable_fast_snapshot_restore_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_state_error_item.dart'
    as _i2;

part 'enable_fast_snapshot_restore_error_item.g.dart';

/// Contains information about the errors that occurred when enabling fast snapshot restores.
abstract class EnableFastSnapshotRestoreErrorItem
    with
        _i1.AWSEquatable<EnableFastSnapshotRestoreErrorItem>
    implements
        Built<EnableFastSnapshotRestoreErrorItem,
            EnableFastSnapshotRestoreErrorItemBuilder> {
  /// Contains information about the errors that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreErrorItem({
    String? snapshotId,
    List<_i2.EnableFastSnapshotRestoreStateErrorItem>?
        fastSnapshotRestoreStateErrors,
  }) {
    return _$EnableFastSnapshotRestoreErrorItem._(
      snapshotId: snapshotId,
      fastSnapshotRestoreStateErrors: fastSnapshotRestoreStateErrors == null
          ? null
          : _i3.BuiltList(fastSnapshotRestoreStateErrors),
    );
  }

  /// Contains information about the errors that occurred when enabling fast snapshot restores.
  factory EnableFastSnapshotRestoreErrorItem.build(
          [void Function(EnableFastSnapshotRestoreErrorItemBuilder) updates]) =
      _$EnableFastSnapshotRestoreErrorItem;

  const EnableFastSnapshotRestoreErrorItem._();

  static const List<_i4.SmithySerializer> serializers = [
    EnableFastSnapshotRestoreErrorItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableFastSnapshotRestoreErrorItemBuilder b) {}

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The errors.
  _i3.BuiltList<_i2.EnableFastSnapshotRestoreStateErrorItem>?
      get fastSnapshotRestoreStateErrors;
  @override
  List<Object?> get props => [
        snapshotId,
        fastSnapshotRestoreStateErrors,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableFastSnapshotRestoreErrorItem');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'fastSnapshotRestoreStateErrors',
      fastSnapshotRestoreStateErrors,
    );
    return helper.toString();
  }
}

class EnableFastSnapshotRestoreErrorItemEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<EnableFastSnapshotRestoreErrorItem> {
  const EnableFastSnapshotRestoreErrorItemEc2QuerySerializer()
      : super('EnableFastSnapshotRestoreErrorItem');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoreErrorItem,
        _$EnableFastSnapshotRestoreErrorItem,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoreErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoreErrorItemBuilder();
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
        case 'fastSnapshotRestoreStateErrorSet':
          if (value != null) {
            result.fastSnapshotRestoreStateErrors
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.EnableFastSnapshotRestoreStateErrorItem)],
              ),
            ) as _i3.BuiltList<_i2.EnableFastSnapshotRestoreStateErrorItem>));
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
    final payload = (object as EnableFastSnapshotRestoreErrorItem);
    final result = <Object?>[
      const _i4.XmlElementName(
        'EnableFastSnapshotRestoreErrorItemResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.snapshotId != null) {
      result
        ..add(const _i4.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fastSnapshotRestoreStateErrors != null) {
      result
        ..add(const _i4.XmlElementName('FastSnapshotRestoreStateErrorSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fastSnapshotRestoreStateErrors!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.EnableFastSnapshotRestoreStateErrorItem)],
          ),
        ));
    }
    return result;
  }
}
