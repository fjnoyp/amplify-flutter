// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disable_fast_snapshot_restores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_error_item.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disable_fast_snapshot_restore_success_item.dart'
    as _i2;

part 'disable_fast_snapshot_restores_result.g.dart';

abstract class DisableFastSnapshotRestoresResult
    with
        _i1.AWSEquatable<DisableFastSnapshotRestoresResult>
    implements
        Built<DisableFastSnapshotRestoresResult,
            DisableFastSnapshotRestoresResultBuilder> {
  factory DisableFastSnapshotRestoresResult({
    List<_i2.DisableFastSnapshotRestoreSuccessItem>? successful,
    List<_i3.DisableFastSnapshotRestoreErrorItem>? unsuccessful,
  }) {
    return _$DisableFastSnapshotRestoresResult._(
      successful: successful == null ? null : _i4.BuiltList(successful),
      unsuccessful: unsuccessful == null ? null : _i4.BuiltList(unsuccessful),
    );
  }

  factory DisableFastSnapshotRestoresResult.build(
          [void Function(DisableFastSnapshotRestoresResultBuilder) updates]) =
      _$DisableFastSnapshotRestoresResult;

  const DisableFastSnapshotRestoresResult._();

  /// Constructs a [DisableFastSnapshotRestoresResult] from a [payload] and [response].
  factory DisableFastSnapshotRestoresResult.fromResponse(
    DisableFastSnapshotRestoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    DisableFastSnapshotRestoresResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableFastSnapshotRestoresResultBuilder b) {}

  /// Information about the snapshots for which fast snapshot restores were successfully disabled.
  _i4.BuiltList<_i2.DisableFastSnapshotRestoreSuccessItem>? get successful;

  /// Information about the snapshots for which fast snapshot restores could not be disabled.
  _i4.BuiltList<_i3.DisableFastSnapshotRestoreErrorItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        successful,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableFastSnapshotRestoresResult');
    helper.add(
      'successful',
      successful,
    );
    helper.add(
      'unsuccessful',
      unsuccessful,
    );
    return helper.toString();
  }
}

class DisableFastSnapshotRestoresResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<DisableFastSnapshotRestoresResult> {
  const DisableFastSnapshotRestoresResultEc2QuerySerializer()
      : super('DisableFastSnapshotRestoresResult');

  @override
  Iterable<Type> get types => const [
        DisableFastSnapshotRestoresResult,
        _$DisableFastSnapshotRestoresResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableFastSnapshotRestoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableFastSnapshotRestoresResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successful':
          if (value != null) {
            result.successful.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.DisableFastSnapshotRestoreSuccessItem)],
              ),
            ) as _i4.BuiltList<_i2.DisableFastSnapshotRestoreSuccessItem>));
          }
          break;
        case 'unsuccessful':
          if (value != null) {
            result.unsuccessful.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.DisableFastSnapshotRestoreErrorItem)],
              ),
            ) as _i4.BuiltList<_i3.DisableFastSnapshotRestoreErrorItem>));
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
    final payload = (object as DisableFastSnapshotRestoresResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DisableFastSnapshotRestoresResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successful != null) {
      result
        ..add(const _i5.XmlElementName('Successful'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successful!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.DisableFastSnapshotRestoreSuccessItem)],
          ),
        ));
    }
    if (payload.unsuccessful != null) {
      result
        ..add(const _i5.XmlElementName('Unsuccessful'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unsuccessful!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.DisableFastSnapshotRestoreErrorItem)],
          ),
        ));
    }
    return result;
  }
}
