// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fast_snapshot_restores_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/describe_fast_snapshot_restore_success_item.dart'
    as _i2;

part 'describe_fast_snapshot_restores_result.g.dart';

abstract class DescribeFastSnapshotRestoresResult
    with
        _i1.AWSEquatable<DescribeFastSnapshotRestoresResult>
    implements
        Built<DescribeFastSnapshotRestoresResult,
            DescribeFastSnapshotRestoresResultBuilder> {
  factory DescribeFastSnapshotRestoresResult({
    List<_i2.DescribeFastSnapshotRestoreSuccessItem>? fastSnapshotRestores,
    String? nextToken,
  }) {
    return _$DescribeFastSnapshotRestoresResult._(
      fastSnapshotRestores: fastSnapshotRestores == null
          ? null
          : _i3.BuiltList(fastSnapshotRestores),
      nextToken: nextToken,
    );
  }

  factory DescribeFastSnapshotRestoresResult.build(
          [void Function(DescribeFastSnapshotRestoresResultBuilder) updates]) =
      _$DescribeFastSnapshotRestoresResult;

  const DescribeFastSnapshotRestoresResult._();

  /// Constructs a [DescribeFastSnapshotRestoresResult] from a [payload] and [response].
  factory DescribeFastSnapshotRestoresResult.fromResponse(
    DescribeFastSnapshotRestoresResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeFastSnapshotRestoresResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFastSnapshotRestoresResultBuilder b) {}

  /// Information about the state of fast snapshot restores.
  _i3.BuiltList<_i2.DescribeFastSnapshotRestoreSuccessItem>?
      get fastSnapshotRestores;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        fastSnapshotRestores,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFastSnapshotRestoresResult');
    helper.add(
      'fastSnapshotRestores',
      fastSnapshotRestores,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeFastSnapshotRestoresResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeFastSnapshotRestoresResult> {
  const DescribeFastSnapshotRestoresResultEc2QuerySerializer()
      : super('DescribeFastSnapshotRestoresResult');

  @override
  Iterable<Type> get types => const [
        DescribeFastSnapshotRestoresResult,
        _$DescribeFastSnapshotRestoresResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastSnapshotRestoresResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastSnapshotRestoresResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fastSnapshotRestoreSet':
          if (value != null) {
            result.fastSnapshotRestores
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.DescribeFastSnapshotRestoreSuccessItem)],
              ),
            ) as _i3.BuiltList<_i2.DescribeFastSnapshotRestoreSuccessItem>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeFastSnapshotRestoresResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeFastSnapshotRestoresResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fastSnapshotRestores != null) {
      result
        ..add(const _i4.XmlElementName('FastSnapshotRestoreSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fastSnapshotRestores!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.DescribeFastSnapshotRestoreSuccessItem)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
