// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_snapshot_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_task_detail.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'import_snapshot_result.g.dart';

abstract class ImportSnapshotResult
    with _i1.AWSEquatable<ImportSnapshotResult>
    implements Built<ImportSnapshotResult, ImportSnapshotResultBuilder> {
  factory ImportSnapshotResult({
    String? description,
    String? importTaskId,
    _i2.SnapshotTaskDetail? snapshotTaskDetail,
    List<_i3.Tag>? tags,
  }) {
    return _$ImportSnapshotResult._(
      description: description,
      importTaskId: importTaskId,
      snapshotTaskDetail: snapshotTaskDetail,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory ImportSnapshotResult.build(
          [void Function(ImportSnapshotResultBuilder) updates]) =
      _$ImportSnapshotResult;

  const ImportSnapshotResult._();

  /// Constructs a [ImportSnapshotResult] from a [payload] and [response].
  factory ImportSnapshotResult.fromResponse(
    ImportSnapshotResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    ImportSnapshotResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportSnapshotResultBuilder b) {}

  /// A description of the import snapshot task.
  String? get description;

  /// The ID of the import snapshot task.
  String? get importTaskId;

  /// Information about the import snapshot task.
  _i2.SnapshotTaskDetail? get snapshotTaskDetail;

  /// Any tags assigned to the import snapshot task.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        description,
        importTaskId,
        snapshotTaskDetail,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportSnapshotResult');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'importTaskId',
      importTaskId,
    );
    helper.add(
      'snapshotTaskDetail',
      snapshotTaskDetail,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ImportSnapshotResultEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ImportSnapshotResult> {
  const ImportSnapshotResultEc2QuerySerializer()
      : super('ImportSnapshotResult');

  @override
  Iterable<Type> get types => const [
        ImportSnapshotResult,
        _$ImportSnapshotResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportSnapshotResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportSnapshotResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'importTaskId':
          if (value != null) {
            result.importTaskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'snapshotTaskDetail':
          if (value != null) {
            result.snapshotTaskDetail.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SnapshotTaskDetail),
            ) as _i2.SnapshotTaskDetail));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as ImportSnapshotResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ImportSnapshotResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.importTaskId != null) {
      result
        ..add(const _i5.XmlElementName('ImportTaskId'))
        ..add(serializers.serialize(
          payload.importTaskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.snapshotTaskDetail != null) {
      result
        ..add(const _i5.XmlElementName('SnapshotTaskDetail'))
        ..add(serializers.serialize(
          payload.snapshotTaskDetail!,
          specifiedType: const FullType(_i2.SnapshotTaskDetail),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
