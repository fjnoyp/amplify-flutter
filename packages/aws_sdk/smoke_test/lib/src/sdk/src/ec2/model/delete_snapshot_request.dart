// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_snapshot_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_snapshot_request.g.dart';

abstract class DeleteSnapshotRequest
    with
        _i1.HttpInput<DeleteSnapshotRequest>,
        _i2.AWSEquatable<DeleteSnapshotRequest>
    implements Built<DeleteSnapshotRequest, DeleteSnapshotRequestBuilder> {
  factory DeleteSnapshotRequest({
    required String snapshotId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteSnapshotRequest._(
      snapshotId: snapshotId,
      dryRun: dryRun,
    );
  }

  factory DeleteSnapshotRequest.build(
          [void Function(DeleteSnapshotRequestBuilder) updates]) =
      _$DeleteSnapshotRequest;

  const DeleteSnapshotRequest._();

  factory DeleteSnapshotRequest.fromRequest(
    DeleteSnapshotRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteSnapshotRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSnapshotRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the EBS snapshot.
  String get snapshotId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteSnapshotRequest getPayload() => this;
  @override
  List<Object?> get props => [
        snapshotId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteSnapshotRequest');
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteSnapshotRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteSnapshotRequest> {
  const DeleteSnapshotRequestEc2QuerySerializer()
      : super('DeleteSnapshotRequest');

  @override
  Iterable<Type> get types => const [
        DeleteSnapshotRequest,
        _$DeleteSnapshotRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteSnapshotRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSnapshotRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'dryRun':
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
    final payload = (object as DeleteSnapshotRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteSnapshotRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('SnapshotId'))
      ..add(serializers.serialize(
        payload.snapshotId,
        specifiedType: const FullType(String),
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
