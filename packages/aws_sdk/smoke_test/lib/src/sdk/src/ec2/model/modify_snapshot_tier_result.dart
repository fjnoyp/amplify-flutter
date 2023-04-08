// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_snapshot_tier_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_snapshot_tier_result.g.dart';

abstract class ModifySnapshotTierResult
    with _i1.AWSEquatable<ModifySnapshotTierResult>
    implements
        Built<ModifySnapshotTierResult, ModifySnapshotTierResultBuilder> {
  factory ModifySnapshotTierResult({
    String? snapshotId,
    DateTime? tieringStartTime,
  }) {
    return _$ModifySnapshotTierResult._(
      snapshotId: snapshotId,
      tieringStartTime: tieringStartTime,
    );
  }

  factory ModifySnapshotTierResult.build(
          [void Function(ModifySnapshotTierResultBuilder) updates]) =
      _$ModifySnapshotTierResult;

  const ModifySnapshotTierResult._();

  /// Constructs a [ModifySnapshotTierResult] from a [payload] and [response].
  factory ModifySnapshotTierResult.fromResponse(
    ModifySnapshotTierResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ModifySnapshotTierResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySnapshotTierResultBuilder b) {}

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The date and time when the archive process was started.
  DateTime? get tieringStartTime;
  @override
  List<Object?> get props => [
        snapshotId,
        tieringStartTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySnapshotTierResult');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'tieringStartTime',
      tieringStartTime,
    );
    return helper.toString();
  }
}

class ModifySnapshotTierResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifySnapshotTierResult> {
  const ModifySnapshotTierResultEc2QuerySerializer()
      : super('ModifySnapshotTierResult');

  @override
  Iterable<Type> get types => const [
        ModifySnapshotTierResult,
        _$ModifySnapshotTierResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySnapshotTierResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySnapshotTierResultBuilder();
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
        case 'tieringStartTime':
          if (value != null) {
            result.tieringStartTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as ModifySnapshotTierResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ModifySnapshotTierResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.snapshotId != null) {
      result
        ..add(const _i2.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tieringStartTime != null) {
      result
        ..add(const _i2.XmlElementName('TieringStartTime'))
        ..add(serializers.serialize(
          payload.tieringStartTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
