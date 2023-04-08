// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.enable_fast_snapshot_restores_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'enable_fast_snapshot_restores_request.g.dart';

abstract class EnableFastSnapshotRestoresRequest
    with
        _i1.HttpInput<EnableFastSnapshotRestoresRequest>,
        _i2.AWSEquatable<EnableFastSnapshotRestoresRequest>
    implements
        Built<EnableFastSnapshotRestoresRequest,
            EnableFastSnapshotRestoresRequestBuilder> {
  factory EnableFastSnapshotRestoresRequest({
    required List<String> availabilityZones,
    required List<String> sourceSnapshotIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$EnableFastSnapshotRestoresRequest._(
      availabilityZones: _i3.BuiltList(availabilityZones),
      sourceSnapshotIds: _i3.BuiltList(sourceSnapshotIds),
      dryRun: dryRun,
    );
  }

  factory EnableFastSnapshotRestoresRequest.build(
          [void Function(EnableFastSnapshotRestoresRequestBuilder) updates]) =
      _$EnableFastSnapshotRestoresRequest;

  const EnableFastSnapshotRestoresRequest._();

  factory EnableFastSnapshotRestoresRequest.fromRequest(
    EnableFastSnapshotRestoresRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    EnableFastSnapshotRestoresRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableFastSnapshotRestoresRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more Availability Zones. For example, `us-east-2a`.
  _i3.BuiltList<String> get availabilityZones;

  /// The IDs of one or more snapshots. For example, `snap-1234567890abcdef0`. You can specify a snapshot that was shared with you from another Amazon Web Services account.
  _i3.BuiltList<String> get sourceSnapshotIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  EnableFastSnapshotRestoresRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZones,
        sourceSnapshotIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('EnableFastSnapshotRestoresRequest');
    helper.add(
      'availabilityZones',
      availabilityZones,
    );
    helper.add(
      'sourceSnapshotIds',
      sourceSnapshotIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class EnableFastSnapshotRestoresRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<EnableFastSnapshotRestoresRequest> {
  const EnableFastSnapshotRestoresRequestEc2QuerySerializer()
      : super('EnableFastSnapshotRestoresRequest');

  @override
  Iterable<Type> get types => const [
        EnableFastSnapshotRestoresRequest,
        _$EnableFastSnapshotRestoresRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableFastSnapshotRestoresRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableFastSnapshotRestoresRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AvailabilityZone':
          result.availabilityZones.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'AvailabilityZone',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
        case 'SourceSnapshotId':
          result.sourceSnapshotIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SnapshotId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as EnableFastSnapshotRestoresRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'EnableFastSnapshotRestoresRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('AvailabilityZone'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'AvailabilityZone',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.availabilityZones,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('SourceSnapshotId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'SnapshotId',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.sourceSnapshotIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
