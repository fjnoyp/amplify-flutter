// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.restore_snapshot_tier_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'restore_snapshot_tier_result.g.dart';

abstract class RestoreSnapshotTierResult
    with _i1.AWSEquatable<RestoreSnapshotTierResult>
    implements
        Built<RestoreSnapshotTierResult, RestoreSnapshotTierResultBuilder> {
  factory RestoreSnapshotTierResult({
    String? snapshotId,
    DateTime? restoreStartTime,
    int? restoreDuration,
    bool? isPermanentRestore,
  }) {
    restoreDuration ??= 0;
    isPermanentRestore ??= false;
    return _$RestoreSnapshotTierResult._(
      snapshotId: snapshotId,
      restoreStartTime: restoreStartTime,
      restoreDuration: restoreDuration,
      isPermanentRestore: isPermanentRestore,
    );
  }

  factory RestoreSnapshotTierResult.build(
          [void Function(RestoreSnapshotTierResultBuilder) updates]) =
      _$RestoreSnapshotTierResult;

  const RestoreSnapshotTierResult._();

  /// Constructs a [RestoreSnapshotTierResult] from a [payload] and [response].
  factory RestoreSnapshotTierResult.fromResponse(
    RestoreSnapshotTierResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    RestoreSnapshotTierResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RestoreSnapshotTierResultBuilder b) {
    b.restoreDuration = 0;
    b.isPermanentRestore = false;
  }

  /// The ID of the snapshot.
  String? get snapshotId;

  /// The date and time when the snapshot restore process started.
  DateTime? get restoreStartTime;

  /// For temporary restores only. The number of days for which the archived snapshot is temporarily restored.
  int get restoreDuration;

  /// Indicates whether the snapshot is permanently restored. `true` indicates a permanent restore. `false` indicates a temporary restore.
  bool get isPermanentRestore;
  @override
  List<Object?> get props => [
        snapshotId,
        restoreStartTime,
        restoreDuration,
        isPermanentRestore,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RestoreSnapshotTierResult');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'restoreStartTime',
      restoreStartTime,
    );
    helper.add(
      'restoreDuration',
      restoreDuration,
    );
    helper.add(
      'isPermanentRestore',
      isPermanentRestore,
    );
    return helper.toString();
  }
}

class RestoreSnapshotTierResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RestoreSnapshotTierResult> {
  const RestoreSnapshotTierResultEc2QuerySerializer()
      : super('RestoreSnapshotTierResult');

  @override
  Iterable<Type> get types => const [
        RestoreSnapshotTierResult,
        _$RestoreSnapshotTierResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RestoreSnapshotTierResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RestoreSnapshotTierResultBuilder();
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
        case 'restoreStartTime':
          if (value != null) {
            result.restoreStartTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'restoreDuration':
          result.restoreDuration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'isPermanentRestore':
          result.isPermanentRestore = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as RestoreSnapshotTierResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'RestoreSnapshotTierResultResponse',
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
    if (payload.restoreStartTime != null) {
      result
        ..add(const _i2.XmlElementName('RestoreStartTime'))
        ..add(serializers.serialize(
          payload.restoreStartTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i2.XmlElementName('RestoreDuration'))
      ..add(serializers.serialize(
        payload.restoreDuration,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('IsPermanentRestore'))
      ..add(serializers.serialize(
        payload.isPermanentRestore,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
