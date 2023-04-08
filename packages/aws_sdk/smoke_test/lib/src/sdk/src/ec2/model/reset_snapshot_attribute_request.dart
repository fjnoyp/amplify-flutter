// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reset_snapshot_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_attribute_name.dart'
    as _i3;

part 'reset_snapshot_attribute_request.g.dart';

abstract class ResetSnapshotAttributeRequest
    with
        _i1.HttpInput<ResetSnapshotAttributeRequest>,
        _i2.AWSEquatable<ResetSnapshotAttributeRequest>
    implements
        Built<ResetSnapshotAttributeRequest,
            ResetSnapshotAttributeRequestBuilder> {
  factory ResetSnapshotAttributeRequest({
    required _i3.SnapshotAttributeName attribute,
    required String snapshotId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ResetSnapshotAttributeRequest._(
      attribute: attribute,
      snapshotId: snapshotId,
      dryRun: dryRun,
    );
  }

  factory ResetSnapshotAttributeRequest.build(
          [void Function(ResetSnapshotAttributeRequestBuilder) updates]) =
      _$ResetSnapshotAttributeRequest;

  const ResetSnapshotAttributeRequest._();

  factory ResetSnapshotAttributeRequest.fromRequest(
    ResetSnapshotAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ResetSnapshotAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResetSnapshotAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The attribute to reset. Currently, only the attribute for permission to create volumes can be reset.
  _i3.SnapshotAttributeName get attribute;

  /// The ID of the snapshot.
  String get snapshotId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ResetSnapshotAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        snapshotId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResetSnapshotAttributeRequest');
    helper.add(
      'attribute',
      attribute,
    );
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

class ResetSnapshotAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ResetSnapshotAttributeRequest> {
  const ResetSnapshotAttributeRequestEc2QuerySerializer()
      : super('ResetSnapshotAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ResetSnapshotAttributeRequest,
        _$ResetSnapshotAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResetSnapshotAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetSnapshotAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Attribute':
          result.attribute = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.SnapshotAttributeName),
          ) as _i3.SnapshotAttributeName);
          break;
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
    final payload = (object as ResetSnapshotAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ResetSnapshotAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Attribute'))
      ..add(serializers.serialize(
        payload.attribute,
        specifiedType: const FullType.nullable(_i3.SnapshotAttributeName),
      ));
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
