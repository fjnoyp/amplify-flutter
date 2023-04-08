// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_snapshot_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission_modifications.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/operation_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_attribute_name.dart'
    as _i3;

part 'modify_snapshot_attribute_request.g.dart';

abstract class ModifySnapshotAttributeRequest
    with
        _i1.HttpInput<ModifySnapshotAttributeRequest>,
        _i2.AWSEquatable<ModifySnapshotAttributeRequest>
    implements
        Built<ModifySnapshotAttributeRequest,
            ModifySnapshotAttributeRequestBuilder> {
  factory ModifySnapshotAttributeRequest({
    _i3.SnapshotAttributeName? attribute,
    _i4.CreateVolumePermissionModifications? createVolumePermission,
    List<String>? groupNames,
    _i5.OperationType? operationType,
    required String snapshotId,
    List<String>? userIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifySnapshotAttributeRequest._(
      attribute: attribute,
      createVolumePermission: createVolumePermission,
      groupNames: groupNames == null ? null : _i6.BuiltList(groupNames),
      operationType: operationType,
      snapshotId: snapshotId,
      userIds: userIds == null ? null : _i6.BuiltList(userIds),
      dryRun: dryRun,
    );
  }

  factory ModifySnapshotAttributeRequest.build(
          [void Function(ModifySnapshotAttributeRequestBuilder) updates]) =
      _$ModifySnapshotAttributeRequest;

  const ModifySnapshotAttributeRequest._();

  factory ModifySnapshotAttributeRequest.fromRequest(
    ModifySnapshotAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifySnapshotAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySnapshotAttributeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The snapshot attribute to modify. Only volume creation permissions can be modified.
  _i3.SnapshotAttributeName? get attribute;

  /// A JSON representation of the snapshot attribute modification.
  _i4.CreateVolumePermissionModifications? get createVolumePermission;

  /// The group to modify for the snapshot.
  _i6.BuiltList<String>? get groupNames;

  /// The type of operation to perform to the attribute.
  _i5.OperationType? get operationType;

  /// The ID of the snapshot.
  String get snapshotId;

  /// The account ID to modify for the snapshot.
  _i6.BuiltList<String>? get userIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifySnapshotAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attribute,
        createVolumePermission,
        groupNames,
        operationType,
        snapshotId,
        userIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifySnapshotAttributeRequest');
    helper.add(
      'attribute',
      attribute,
    );
    helper.add(
      'createVolumePermission',
      createVolumePermission,
    );
    helper.add(
      'groupNames',
      groupNames,
    );
    helper.add(
      'operationType',
      operationType,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'userIds',
      userIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifySnapshotAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifySnapshotAttributeRequest> {
  const ModifySnapshotAttributeRequestEc2QuerySerializer()
      : super('ModifySnapshotAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifySnapshotAttributeRequest,
        _$ModifySnapshotAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySnapshotAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySnapshotAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Attribute':
          if (value != null) {
            result.attribute = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SnapshotAttributeName),
            ) as _i3.SnapshotAttributeName);
          }
          break;
        case 'CreateVolumePermission':
          if (value != null) {
            result.createVolumePermission.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.CreateVolumePermissionModifications),
            ) as _i4.CreateVolumePermissionModifications));
          }
          break;
        case 'UserGroup':
          if (value != null) {
            result.groupNames.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'GroupName',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'OperationType':
          if (value != null) {
            result.operationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.OperationType),
            ) as _i5.OperationType);
          }
          break;
        case 'SnapshotId':
          result.snapshotId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'UserId':
          if (value != null) {
            result.userIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'UserId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
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
    final payload = (object as ModifySnapshotAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifySnapshotAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.attribute != null) {
      result
        ..add(const _i1.XmlElementName('Attribute'))
        ..add(serializers.serialize(
          payload.attribute!,
          specifiedType: const FullType.nullable(_i3.SnapshotAttributeName),
        ));
    }
    if (payload.createVolumePermission != null) {
      result
        ..add(const _i1.XmlElementName('CreateVolumePermission'))
        ..add(serializers.serialize(
          payload.createVolumePermission!,
          specifiedType:
              const FullType(_i4.CreateVolumePermissionModifications),
        ));
    }
    if (payload.groupNames != null) {
      result
        ..add(const _i1.XmlElementName('UserGroup'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'GroupName',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groupNames!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.operationType != null) {
      result
        ..add(const _i1.XmlElementName('OperationType'))
        ..add(serializers.serialize(
          payload.operationType!,
          specifiedType: const FullType.nullable(_i5.OperationType),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SnapshotId'))
      ..add(serializers.serialize(
        payload.snapshotId,
        specifiedType: const FullType(String),
      ));
    if (payload.userIds != null) {
      result
        ..add(const _i1.XmlElementName('UserId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'UserId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.userIds!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
