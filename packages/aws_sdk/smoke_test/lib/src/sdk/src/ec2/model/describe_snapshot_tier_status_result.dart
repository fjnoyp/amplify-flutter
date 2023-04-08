// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_snapshot_tier_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_tier_status.dart'
    as _i2;

part 'describe_snapshot_tier_status_result.g.dart';

abstract class DescribeSnapshotTierStatusResult
    with
        _i1.AWSEquatable<DescribeSnapshotTierStatusResult>
    implements
        Built<DescribeSnapshotTierStatusResult,
            DescribeSnapshotTierStatusResultBuilder> {
  factory DescribeSnapshotTierStatusResult({
    List<_i2.SnapshotTierStatus>? snapshotTierStatuses,
    String? nextToken,
  }) {
    return _$DescribeSnapshotTierStatusResult._(
      snapshotTierStatuses: snapshotTierStatuses == null
          ? null
          : _i3.BuiltList(snapshotTierStatuses),
      nextToken: nextToken,
    );
  }

  factory DescribeSnapshotTierStatusResult.build(
          [void Function(DescribeSnapshotTierStatusResultBuilder) updates]) =
      _$DescribeSnapshotTierStatusResult;

  const DescribeSnapshotTierStatusResult._();

  /// Constructs a [DescribeSnapshotTierStatusResult] from a [payload] and [response].
  factory DescribeSnapshotTierStatusResult.fromResponse(
    DescribeSnapshotTierStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSnapshotTierStatusResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSnapshotTierStatusResultBuilder b) {}

  /// Information about the snapshot's storage tier.
  _i3.BuiltList<_i2.SnapshotTierStatus>? get snapshotTierStatuses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        snapshotTierStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSnapshotTierStatusResult');
    helper.add(
      'snapshotTierStatuses',
      snapshotTierStatuses,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeSnapshotTierStatusResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeSnapshotTierStatusResult> {
  const DescribeSnapshotTierStatusResultEc2QuerySerializer()
      : super('DescribeSnapshotTierStatusResult');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotTierStatusResult,
        _$DescribeSnapshotTierStatusResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotTierStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotTierStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'snapshotTierStatusSet':
          if (value != null) {
            result.snapshotTierStatuses
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SnapshotTierStatus)],
              ),
            ) as _i3.BuiltList<_i2.SnapshotTierStatus>));
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
    final payload = (object as DescribeSnapshotTierStatusResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeSnapshotTierStatusResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.snapshotTierStatuses != null) {
      result
        ..add(const _i4.XmlElementName('SnapshotTierStatusSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.snapshotTierStatuses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SnapshotTierStatus)],
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
