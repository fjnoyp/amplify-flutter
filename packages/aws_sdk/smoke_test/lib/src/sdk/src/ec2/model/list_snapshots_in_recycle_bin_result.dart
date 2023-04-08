// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.list_snapshots_in_recycle_bin_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_recycle_bin_info.dart'
    as _i2;

part 'list_snapshots_in_recycle_bin_result.g.dart';

abstract class ListSnapshotsInRecycleBinResult
    with
        _i1.AWSEquatable<ListSnapshotsInRecycleBinResult>
    implements
        Built<ListSnapshotsInRecycleBinResult,
            ListSnapshotsInRecycleBinResultBuilder> {
  factory ListSnapshotsInRecycleBinResult({
    List<_i2.SnapshotRecycleBinInfo>? snapshots,
    String? nextToken,
  }) {
    return _$ListSnapshotsInRecycleBinResult._(
      snapshots: snapshots == null ? null : _i3.BuiltList(snapshots),
      nextToken: nextToken,
    );
  }

  factory ListSnapshotsInRecycleBinResult.build(
          [void Function(ListSnapshotsInRecycleBinResultBuilder) updates]) =
      _$ListSnapshotsInRecycleBinResult;

  const ListSnapshotsInRecycleBinResult._();

  /// Constructs a [ListSnapshotsInRecycleBinResult] from a [payload] and [response].
  factory ListSnapshotsInRecycleBinResult.fromResponse(
    ListSnapshotsInRecycleBinResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListSnapshotsInRecycleBinResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListSnapshotsInRecycleBinResultBuilder b) {}

  /// Information about the snapshots.
  _i3.BuiltList<_i2.SnapshotRecycleBinInfo>? get snapshots;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        snapshots,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListSnapshotsInRecycleBinResult');
    helper.add(
      'snapshots',
      snapshots,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListSnapshotsInRecycleBinResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ListSnapshotsInRecycleBinResult> {
  const ListSnapshotsInRecycleBinResultEc2QuerySerializer()
      : super('ListSnapshotsInRecycleBinResult');

  @override
  Iterable<Type> get types => const [
        ListSnapshotsInRecycleBinResult,
        _$ListSnapshotsInRecycleBinResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ListSnapshotsInRecycleBinResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListSnapshotsInRecycleBinResultBuilder();
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
                [FullType(_i2.SnapshotRecycleBinInfo)],
              ),
            ) as _i3.BuiltList<_i2.SnapshotRecycleBinInfo>));
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
    final payload = (object as ListSnapshotsInRecycleBinResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListSnapshotsInRecycleBinResultResponse',
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
            [FullType(_i2.SnapshotRecycleBinInfo)],
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
