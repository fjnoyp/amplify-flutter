// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.copy_snapshot_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'copy_snapshot_result.g.dart';

abstract class CopySnapshotResult
    with _i1.AWSEquatable<CopySnapshotResult>
    implements Built<CopySnapshotResult, CopySnapshotResultBuilder> {
  factory CopySnapshotResult({
    String? snapshotId,
    List<_i2.Tag>? tags,
  }) {
    return _$CopySnapshotResult._(
      snapshotId: snapshotId,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory CopySnapshotResult.build(
          [void Function(CopySnapshotResultBuilder) updates]) =
      _$CopySnapshotResult;

  const CopySnapshotResult._();

  /// Constructs a [CopySnapshotResult] from a [payload] and [response].
  factory CopySnapshotResult.fromResponse(
    CopySnapshotResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CopySnapshotResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CopySnapshotResultBuilder b) {}

  /// The ID of the new snapshot.
  String? get snapshotId;

  /// Any tags applied to the new snapshot.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        snapshotId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CopySnapshotResult');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CopySnapshotResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CopySnapshotResult> {
  const CopySnapshotResultEc2QuerySerializer() : super('CopySnapshotResult');

  @override
  Iterable<Type> get types => const [
        CopySnapshotResult,
        _$CopySnapshotResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CopySnapshotResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopySnapshotResultBuilder();
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as CopySnapshotResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CopySnapshotResultResponse',
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
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
