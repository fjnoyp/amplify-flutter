// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_snapshots_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_info.dart' as _i2;

part 'create_snapshots_result.g.dart';

abstract class CreateSnapshotsResult
    with _i1.AWSEquatable<CreateSnapshotsResult>
    implements Built<CreateSnapshotsResult, CreateSnapshotsResultBuilder> {
  factory CreateSnapshotsResult({List<_i2.SnapshotInfo>? snapshots}) {
    return _$CreateSnapshotsResult._(
        snapshots: snapshots == null ? null : _i3.BuiltList(snapshots));
  }

  factory CreateSnapshotsResult.build(
          [void Function(CreateSnapshotsResultBuilder) updates]) =
      _$CreateSnapshotsResult;

  const CreateSnapshotsResult._();

  /// Constructs a [CreateSnapshotsResult] from a [payload] and [response].
  factory CreateSnapshotsResult.fromResponse(
    CreateSnapshotsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CreateSnapshotsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSnapshotsResultBuilder b) {}

  /// List of snapshots.
  _i3.BuiltList<_i2.SnapshotInfo>? get snapshots;
  @override
  List<Object?> get props => [snapshots];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSnapshotsResult');
    helper.add(
      'snapshots',
      snapshots,
    );
    return helper.toString();
  }
}

class CreateSnapshotsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CreateSnapshotsResult> {
  const CreateSnapshotsResultEc2QuerySerializer()
      : super('CreateSnapshotsResult');

  @override
  Iterable<Type> get types => const [
        CreateSnapshotsResult,
        _$CreateSnapshotsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSnapshotsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSnapshotsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'snapshotSet':
          if (value != null) {
            result.snapshots.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SnapshotInfo)],
              ),
            ) as _i3.BuiltList<_i2.SnapshotInfo>));
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
    final payload = (object as CreateSnapshotsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CreateSnapshotsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.snapshots != null) {
      result
        ..add(const _i4.XmlElementName('SnapshotSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.snapshots!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SnapshotInfo)],
          ),
        ));
    }
    return result;
  }
}
