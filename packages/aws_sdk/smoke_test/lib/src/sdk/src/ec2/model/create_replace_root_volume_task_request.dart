// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_replace_root_volume_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_replace_root_volume_task_request.g.dart';

abstract class CreateReplaceRootVolumeTaskRequest
    with
        _i1.HttpInput<CreateReplaceRootVolumeTaskRequest>,
        _i2.AWSEquatable<CreateReplaceRootVolumeTaskRequest>
    implements
        Built<CreateReplaceRootVolumeTaskRequest,
            CreateReplaceRootVolumeTaskRequestBuilder> {
  factory CreateReplaceRootVolumeTaskRequest({
    required String instanceId,
    String? snapshotId,
    String? clientToken,
    bool? dryRun,
    List<_i3.TagSpecification>? tagSpecifications,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$CreateReplaceRootVolumeTaskRequest._(
      instanceId: instanceId,
      snapshotId: snapshotId,
      clientToken: clientToken,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
    );
  }

  factory CreateReplaceRootVolumeTaskRequest.build(
          [void Function(CreateReplaceRootVolumeTaskRequestBuilder) updates]) =
      _$CreateReplaceRootVolumeTaskRequest;

  const CreateReplaceRootVolumeTaskRequest._();

  factory CreateReplaceRootVolumeTaskRequest.fromRequest(
    CreateReplaceRootVolumeTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateReplaceRootVolumeTaskRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateReplaceRootVolumeTaskRequestBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// The ID of the instance for which to replace the root volume.
  String get instanceId;

  /// The ID of the snapshot from which to restore the replacement root volume. If you want to restore the volume to the initial launch state, omit this parameter.
  String? get snapshotId;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you do not specify a client token, a randomly generated token is used for the request to ensure idempotency. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to apply to the root volume replacement task.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;
  @override
  CreateReplaceRootVolumeTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        snapshotId,
        clientToken,
        dryRun,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateReplaceRootVolumeTaskRequest');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateReplaceRootVolumeTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateReplaceRootVolumeTaskRequest> {
  const CreateReplaceRootVolumeTaskRequestEc2QuerySerializer()
      : super('CreateReplaceRootVolumeTaskRequest');

  @override
  Iterable<Type> get types => const [
        CreateReplaceRootVolumeTaskRequest,
        _$CreateReplaceRootVolumeTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateReplaceRootVolumeTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReplaceRootVolumeTaskRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SnapshotId':
          if (value != null) {
            result.snapshotId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
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
    final payload = (object as CreateReplaceRootVolumeTaskRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateReplaceRootVolumeTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    if (payload.snapshotId != null) {
      result
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
