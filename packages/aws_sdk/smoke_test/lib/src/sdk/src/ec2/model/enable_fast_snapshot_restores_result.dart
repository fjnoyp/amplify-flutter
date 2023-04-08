// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.enable_fast_snapshot_restores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_error_item.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/enable_fast_snapshot_restore_success_item.dart'
    as _i2;

part 'enable_fast_snapshot_restores_result.g.dart';

abstract class EnableFastSnapshotRestoresResult
    with
        _i1.AWSEquatable<EnableFastSnapshotRestoresResult>
    implements
        Built<EnableFastSnapshotRestoresResult,
            EnableFastSnapshotRestoresResultBuilder> {
  factory EnableFastSnapshotRestoresResult({
    List<_i2.EnableFastSnapshotRestoreSuccessItem>? successful,
    List<_i3.EnableFastSnapshotRestoreErrorItem>? unsuccessful,
  }) {
    return _$EnableFastSnapshotRestoresResult._(
      successful: successful == null ? null : _i4.BuiltList(successful),
      unsuccessful: unsuccessful == null ? null : _i4.BuiltList(unsuccessful),
    );
  }

  factory EnableFastSnapshotRestoresResult.build(
          [void Function(EnableFastSnapshotRestoresResultBuilder) updates]) =
      _$EnableFastSnapshotRestoresResult;

  const EnableFastSnapshotRestoresResult._();

  /// Constructs a [EnableFastSnapshotRestoresResult] from a [payload] and [response].
  factory EnableFastSnapshotRestoresResult.fromResponse(
    EnableFastSnapshotRestoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    EnableFastSnapshotRestoresResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableFastSnapshotRestoresResultBuilder b) {}

  /// Information about the snapshots for which fast snapshot restores were successfully enabled.
  _i4.BuiltList<_i2.EnableFastSnapshotRestoreSuccessItem>? get successful;

  /// Information about the snapshots for which fast snapshot restores could not be enabled.
  _i4.BuiltList<_i3.EnableFastSnapshotRestoreErrorItem>? get unsuccessful;
  @override
  List<Object?> get props => [
        successful,
        unsuccessful,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableFastSnapshotRestoresResult');
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

class EnableFastSnapshotRestoresResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<EnableFastSnapshotRestoresResult> {
  const EnableFastSnapshotRestoresResultEc2QuerySerializer()
      : super('EnableFastSnapshotRestoresResult');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoresResult,
        _$EnableFastSnapshotRestoresResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoresResultBuilder();
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
                [FullType(_i2.EnableFastSnapshotRestoreSuccessItem)],
              ),
            ) as _i4.BuiltList<_i2.EnableFastSnapshotRestoreSuccessItem>));
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
                [FullType(_i3.EnableFastSnapshotRestoreErrorItem)],
              ),
            ) as _i4.BuiltList<_i3.EnableFastSnapshotRestoreErrorItem>));
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
    final payload = (object as EnableFastSnapshotRestoresResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'EnableFastSnapshotRestoresResultResponse',
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
            [FullType(_i2.EnableFastSnapshotRestoreSuccessItem)],
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
            [FullType(_i3.EnableFastSnapshotRestoreErrorItem)],
          ),
        ));
    }
    return result;
  }
}
